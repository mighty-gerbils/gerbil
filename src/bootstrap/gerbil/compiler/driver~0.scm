(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771092636)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp259779 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp259779))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp259780 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp259780))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path259636%_ _%fun259637%_)
        (with-output-to-file
         (cons 'path: (cons _%path259636%_ gxc#scheme-file-settings))
         _%fun259637%_)))
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
      (lambda (_%gerbil-libdir259631%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir259631%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path259629%_)
        (let ((__tmp259781 (object->string _%path259629%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp259781 '")"))))
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
      (lambda (_%dir259627%_) (delete-file-or-directory _%dir259627%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath259570%_ _%opts259571%_)
        (if (string? _%srcpath259570%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath259570%_)))
        (let* ((_%outdir259573%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts259571%_)))
               (_%invoke-gsc?259575%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts259571%_)))
               (_%target259580%_
                (let ((_%$e259577%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts259571%_))))
                  (if _%$e259577%_ _%$e259577%_ 'C)))
               (_%gsc-options259585%_
                (append (cons '"-target"
                              (cons (symbol->string _%target259580%_) '()))
                        (let ((_%$e259582%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts259571%_))))
                          (if _%$e259582%_ _%$e259582%_ '()))))
               (_%keep-scm?259587%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts259571%_)))
               (_%verbosity259589%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts259571%_)))
               (_%optimize259591%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts259571%_)))
               (_%debug259593%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts259571%_)))
               (_%gen-ssxi259595%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts259571%_)))
               (_%parallel?259597%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts259571%_))))
          (if _%outdir259573%_
              (let ((__tmp259782
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir259573%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259782))
              '#!void)
          (if _%optimize259591%_
              (let ((__tmp259783
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259783))
              '#!void)
          (let ((__tmp259784
                 (lambda ()
                   (let ((__tmp259785
                          (lambda ()
                            (let ((__tmp259786
                                   (lambda ()
                                     (let ((__tmp259787
                                            (lambda ()
                                              (let ((__tmp259788
                                                     (lambda ()
                                                       (let ((__tmp259789
                                                              (lambda ()
                                                                (let ((__tmp259790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp259791
                                        (lambda ()
                                          (let ((__tmp259792
                                                 (lambda ()
                                                   (let ((__tmp259794
                                                          (lambda ()
                                                            (let ((__tmp259796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp259798
                                    (lambda ()
                                      (let ((__tmp259799
                                             (lambda ()
                                               (let ((__tmp259800
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath259570%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp259801
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath259570%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp259801))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp259800
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp259799
                                         gxc#current-compile-parallel
                                         _%parallel?259597%_))))
                                   (__tmp259797
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259798
                                gxc#current-compile-identifiers
                                __tmp259797))))
                          (__tmp259795
                           (cons (cons 'compile-module
                                       (cons _%srcpath259570%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259796
                       gxc#current-compile-context
                       __tmp259795))))
                 (__tmp259793 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp259794
                                                      gxc#current-compile-timestamp
                                                      __tmp259793)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp259792
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi259595%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp259791
                                    gxc#current-compile-debug
                                    _%debug259593%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp259790
                           gxc#current-compile-optimize
                           _%optimize259591%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp259789
                  gxc#current-compile-verbose
                  _%verbosity259589%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259788
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?259587%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259787
                                        gxc#current-compile-gsc-options
                                        _%gsc-options259585%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259786
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?259575%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259785
                      gx#current-compilation-target
                      _%target259580%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp259784
             gxc#current-compile-output-dir
             _%outdir259573%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath259620%_)
        (let ((_%opts259622%_ '()))
          (gxc#compile-module__% _%srcpath259620%_ _%opts259622%_))))
    (define gxc#compile-module
      (lambda _g259802_
        (let ((_g259803_ (let () (declare (not safe)) (##length _g259802_))))
          (cond ((let () (declare (not safe)) (##fx= _g259803_ 1))
                 (apply gxc#compile-module__0 _g259802_))
                ((let () (declare (not safe)) (##fx= _g259803_ 2))
                 (apply gxc#compile-module__% _g259802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g259802_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath259519%_ _%opts259520%_)
        (if (string? _%srcpath259519%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath259519%_)))
        (let* ((_%outdir259522%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts259520%_)))
               (_%invoke-gsc?259524%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts259520%_)))
               (_%target259529%_
                (let ((_%$e259526%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts259520%_))))
                  (if _%$e259526%_ _%$e259526%_ 'C)))
               (_%gsc-options259534%_
                (append (cons '"-target"
                              (cons (symbol->string _%target259529%_) '()))
                        (let ((_%$e259531%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts259520%_))))
                          (if _%$e259531%_ _%$e259531%_ '()))))
               (_%keep-scm?259536%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts259520%_)))
               (_%verbosity259538%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts259520%_)))
               (_%debug259540%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts259520%_)))
               (_%parallel?259542%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts259520%_))))
          (if _%outdir259522%_
              (let ((__tmp259804
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir259522%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259804))
              '#!void)
          (let ((__tmp259805
                 (lambda ()
                   (let ((__tmp259806
                          (lambda ()
                            (let ((__tmp259807
                                   (lambda ()
                                     (let ((__tmp259808
                                            (lambda ()
                                              (let ((__tmp259809
                                                     (lambda ()
                                                       (let ((__tmp259810
                                                              (lambda ()
                                                                (let ((__tmp259811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp259813
                                        (lambda ()
                                          (let ((__tmp259815
                                                 (lambda ()
                                                   (let ((__tmp259817
                                                          (lambda ()
                                                            (let ((__tmp259818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp259819
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath259519%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp259820
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath259519%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp259820))
                                       _%opts259520%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259819
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259818
                       gxc#current-compile-parallel
                       _%parallel?259542%_))))
                 (__tmp259816
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp259817
                                                      gxc#current-compile-identifiers
                                                      __tmp259816))))
                                                (__tmp259814
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath259519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp259815
                                             gxc#current-compile-context
                                             __tmp259814))))
                                       (__tmp259812 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp259813
                                    gxc#current-compile-timestamp
                                    __tmp259812)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp259811
                           gxc#current-compile-debug
                           _%debug259540%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp259810
                  gxc#current-compile-verbose
                  _%verbosity259538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259809
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?259536%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259808
                                        gxc#current-compile-gsc-options
                                        _%gsc-options259534%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259807
                               gx#current-compilation-target
                               _%target259529%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259806
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?259524%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp259805
             gxc#current-compile-output-dir
             _%outdir259522%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath259562%_)
        (let ((_%opts259564%_ '()))
          (gxc#compile-exe__% _%srcpath259562%_ _%opts259564%_))))
    (define gxc#compile-exe
      (lambda _g259821_
        (let ((_g259822_ (let () (declare (not safe)) (##length _g259821_))))
          (cond ((let () (declare (not safe)) (##fx= _g259822_ 1))
                 (apply gxc#compile-exe__0 _g259821_))
                ((let () (declare (not safe)) (##fx= _g259822_ 2))
                 (apply gxc#compile-exe__% _g259821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g259821_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx259515%_ _%opts259516%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts259516%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx259515%_
             _%opts259516%_)
            (gxc#compile-executable-module/separate
             _%ctx259515%_
             _%opts259516%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx259241%_ _%opts259242%_)
        (letrec ((_%generate-stub259244%_
                  (lambda (_%builtin-modules259511%_)
                    (let ((_%mod-main259513%_
                           (gxc#find-runtime-symbol _%ctx259241%_ 'main)))
                      (let ((__tmp259823
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules259511%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp259823))
                      (let ((__tmp259824
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main259513%_
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
                        (##write __tmp259824))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts259245%_
                  (lambda (_%gerbil-libdir259509%_)
                    (let ((__tmp259825
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir259509%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp259825 read))))
                 (_%replace-extension259246%_
                  (lambda (_%path259506%_ _%ext259507%_)
                    (string-append
                     (path-strip-extension _%path259506%_)
                     _%ext259507%_)))
                 (_%replace-extension-with-c259247%_
                  (lambda (_%path259504%_)
                    (_%replace-extension259246%_ _%path259504%_ '".c")))
                 (_%replace-extension-with-object259248%_
                  (lambda (_%path259502%_)
                    (_%replace-extension259246%_
                     _%path259502%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?259249%_
                  (lambda (_%ctx259500%_)
                    (if (_%exclude-module?259251%_ _%ctx259500%_)
                        '#f
                        (not (_%libgerbil-module?259250%_ _%ctx259500%_)))))
                 (_%libgerbil-module?259250%_
                  (lambda (_%ctx259493%_)
                    (let ((_%id-str259495%_
                           (symbol->string
                            (##structure-ref
                             _%ctx259493%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?259251%_ _%id-str259495%_)
                          '#f
                          (let ((_%$e259497%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str259495%_))))
                            (if _%$e259497%_
                                _%$e259497%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str259495%_))))))))
                 (_%exclude-module?259251%_
                  (lambda (_%ctx-or-str259489%_)
                    (let ((_%str259491%_
                           (if (string? _%ctx-or-str259489%_)
                               _%ctx-or-str259489%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str259489%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str259491%_))))
                 (_%not-file-empty?259252%_
                  (lambda (_%path259487%_)
                    (not (gxc#file-empty? _%path259487%_))))
                 (_%fold-libgerbil-runtime-scm259253%_
                  (lambda (_%gerbil-staticdir259480%_ _%libgerbil-scm259481%_)
                    (let ((_%gerbil-runtime-scm259485%_
                           (let ((__tmp259826
                                  (lambda (_%rtm259483%_)
                                    (path-expand
                                     (let ((__tmp259827
                                            (let ((__tmp259828
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm259483%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp259828
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp259827 '".scm"))
                                     _%gerbil-staticdir259480%_))))
                             (declare (not safe))
                             (##map __tmp259826 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates259254%_
                       (append _%gerbil-runtime-scm259485%_
                               _%libgerbil-scm259481%_)))))
                 (_%remove-duplicates259254%_
                  (lambda (_%strlst259440%_)
                    (let _%loop259442%_ ((_%rest259444%_ _%strlst259440%_)
                                         (_%result259445%_ '()))
                      (let* ((_%rest259446259454%_ _%rest259444%_)
                             (_%else259448259462%_
                              (lambda () (reverse! _%result259445%_)))
                             (_%K259450259468%_
                              (lambda (_%rest259465%_ _%path259466%_)
                                (if (member _%path259466%_ _%result259445%_)
                                    (_%loop259442%_
                                     _%rest259465%_
                                     _%result259445%_)
                                    (_%loop259442%_
                                     _%rest259465%_
                                     (cons _%path259466%_
                                           _%result259445%_))))))
                        (if (pair? _%rest259446259454%_)
                            (let ((_%hd259451259471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest259446259454%_)))
                                  (_%tl259452259473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest259446259454%_))))
                              (let* ((_%path259476%_ _%hd259451259471%_)
                                     (_%rest259478%_ _%tl259452259473%_))
                                (_%K259450259468%_
                                 _%rest259478%_
                                 _%path259476%_)))
                            (_%else259448259462%_))))))
                 (_%compile-stub259255%_
                  (lambda (_%output-scm259262%_ _%output-bin259263%_)
                    (let* ((_%gerbil-home259265%_
                            (let ((__tmp259829
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp259829)))
                           (_%gerbil-libdir259267%_
                            (path-expand '"lib" _%gerbil-home259265%_))
                           (_%gerbil-staticdir259269%_
                            (path-expand '"static" _%gerbil-libdir259267%_))
                           (_%deps259271%_
                            (gxc#find-runtime-module-deps _%ctx259241%_))
                           (_%libgerbil-deps259273%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?259250%_
                               _%deps259271%_)))
                           (_%libgerbil-scm259275%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps259273%_)))
                           (_%libgerbil-scm259277%_
                            (_%fold-libgerbil-runtime-scm259253%_
                             _%gerbil-staticdir259269%_
                             _%libgerbil-scm259275%_))
                           (_%libgerbil-c259279%_
                            (map _%replace-extension-with-c259247%_
                                 _%libgerbil-scm259277%_))
                           (_%libgerbil-o259281%_
                            (map _%replace-extension-with-object259248%_
                                 _%libgerbil-scm259277%_))
                           (_%src-deps259283%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?259249%_
                               _%deps259271%_)))
                           (_%src-deps-scm259285%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps259283%_)))
                           (_%src-deps-scm259287%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?259252%_
                               _%src-deps-scm259285%_)))
                           (_%src-deps-scm259289%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm259287%_)))
                           (_%src-deps-c259291%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c259247%_
                                     _%src-deps-scm259289%_)))
                           (_%src-deps-o259293%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object259248%_
                                     _%src-deps-scm259289%_)))
                           (_%src-bin-scm259295%_
                            (gxc#find-static-module-file _%ctx259241%_))
                           (_%src-bin-scm259297%_
                            (path-expand _%src-bin-scm259295%_))
                           (_%src-bin-c259299%_
                            (_%replace-extension-with-c259247%_
                             _%src-bin-scm259297%_))
                           (_%src-bin-o259301%_
                            (_%replace-extension-with-object259248%_
                             _%src-bin-scm259297%_))
                           (_%output-bin259303%_
                            (path-expand _%output-bin259263%_))
                           (_%output-scm259305%_
                            (path-expand _%output-scm259262%_))
                           (_%output-c259307%_
                            (_%replace-extension-with-c259247%_
                             _%output-scm259305%_))
                           (_%output-o259309%_
                            (_%replace-extension-with-object259248%_
                             _%output-scm259305%_))
                           (_%output_-c259311%_
                            (_%replace-extension259246%_
                             _%output-scm259305%_
                             '"_.c"))
                           (_%output_-o259313%_
                            (_%replace-extension259246%_
                             _%output-scm259305%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts259315%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259317%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259319%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir259269%_))
                           (_%output-ld-opts259321%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts259323%_
                            (_%get-libgerbil-ld-opts259245%_
                             _%gerbil-libdir259267%_))
                           (_%rpath259325%_
                            (gxc#gerbil-rpath _%gerbil-libdir259267%_))
                           (_%builtin-modules259329%_
                            (_%remove-duplicates259254%_
                             (let ((__tmp259830
                                    (let ((__tmp259832
                                           (lambda (_%mod259327%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod259327%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp259831
                                           (cons _%ctx259241%_
                                                 _%deps259271%_)))
                                      (declare (not safe))
                                      (##map __tmp259832 __tmp259831))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp259830)))))
                      (letrec ((_%compile-obj259332%_
                                (lambda (_%scm-path259339%_ _%c-path259340%_)
                                  (let* ((_%o-path259342%_
                                          (_%replace-extension259246%_
                                           _%c-path259340%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock259344%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path259342%_
                                             '".lock")))
                                         (_%locked259346%_ '#f)
                                         (_%unlock259349%_
                                          (lambda ()
                                            (close-port _%locked259346%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock259344%_)))))
                                    (let _%retry259352%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock259344%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry259352%_))
                                          (begin
                                            (set! _%locked259346%_
                                                  (let* ((_%handler259355%_
                                                          false)
                                                         (_%thunk259359%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock259344%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler259364%_ _%handler259355%_)
                 (_%thunk259420%_ _%thunk259359%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler259364%_
                                                     _%thunk259420%_)))
                                            (if _%locked259346%_
                                                '#!void
                                                (_%retry259352%_)))))
                                    (let ((__tmp259834
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path259342%_)))
                                                     (not _%scm-path259339%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path259339%_
                                                        _%o-path259342%_)))
                                                 (let ((_%gsc-cc-opts259437%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp259835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp259836 (cons _%c-path259340%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp259836
                            _%gsc-static-opts259319%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259835 _%gsc-cc-opts259437%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp259833
                                           (lambda () (_%unlock259349%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp259834
                                       __tmp259833))))))
                        (let ((__tmp259837
                               (lambda ()
                                 (let ((__tmp259838
                                        (path-directory _%output-bin259303%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp259838)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp259837))
                        (gxc#with-output-to-scheme-file
                         _%output-scm259305%_
                         (lambda ()
                           (_%generate-stub259244%_
                            _%builtin-modules259329%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it259337%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp259839
                                                   (let ((__tmp259840
                                                          (let ((__tmp259841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm259297%_
                               (cons _%output-scm259305%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259841 _%src-deps-scm259289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp259840
                                                      _%libgerbil-c259279%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp259839
                                               _%gsc-link-opts259315%_))))
                                     (for-each
                                      _%compile-obj259332%_
                                      (let ((__tmp259842
                                             (cons _%src-bin-scm259297%_
                                                   (cons _%output-scm259305%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp259842
                                         _%src-deps-scm259289%_))
                                      (let ((__tmp259843
                                             (cons _%src-bin-c259299%_
                                                   (cons _%output-c259307%_
                                                         (cons _%output_-c259311%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp259843
                                         _%src-deps-c259291%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin259303%_
                                                        (let ((__tmp259844
                                                               (cons _%src-bin-o259301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o259309%_
                                   (cons _%output_-o259313%_
                                         (let ((__tmp259845
                                                (let ((__tmp259846
                                                       (let ((__tmp259848
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir259267%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts259323%_))))
                     (__tmp259847
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath259325%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp259848 __tmp259847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp259846
                                                   _%output-ld-opts259321%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp259845
                                            _%libgerbil-o259281%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp259844 _%src-deps-o259293%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp259849
                                            (cons _%output-c259307%_
                                                  (cons _%output_-c259311%_
                                                        (cons _%output-o259309%_
                                                              (cons _%output_-o259313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp259849)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it259337%_))
                                  (_%compile-it259337%_)))
                            '#!void))))))
          (let* ((_%output-bin259257%_
                  (gxc#compile-exe-output-file _%ctx259241%_ _%opts259242%_))
                 (_%output-scm259259%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259257%_ '"__exe.scm"))))
            (_%compile-stub259255%_
             _%output-scm259259%_
             _%output-bin259257%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx259063%_ _%opts259064%_)
        (letrec ((_%reset-declare259066%_
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
                 (_%generate-stub259067%_
                  (lambda (_%deps259232%_)
                    (let ((_%mod-main259234%_
                           (gxc#find-runtime-symbol _%ctx259063%_ 'main))
                          (_%reset-decl259235%_ (_%reset-declare259066%_))
                          (_%user-decl259236%_ (_%user-declare259068%_)))
                      (for-each
                       (lambda (_%dep259238%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl259235%_))
                         (newline)
                         (if _%user-decl259236%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl259236%_))
                               (newline))
                             '#!void)
                         (let ((__tmp259850
                                (cons 'include (cons _%dep259238%_ '()))))
                           (declare (not safe))
                           (##write __tmp259850))
                         (newline))
                       _%deps259232%_)
                      (let ((__tmp259851
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main259234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp259851))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare259068%_
                  (lambda ()
                    (let* ((_%gsc-opts259137%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts259064%_)))
                           (_%gsc-prelude259139%_
                            (if _%gsc-opts259137%_
                                (member '"-prelude" _%gsc-opts259137%_)
                                '#f))
                           (_%gsc-prelude259141%_
                            (if _%gsc-prelude259139%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude259139%_)))
                                '#f)))
                      (let _%lp259144%_ ((_%rest259146%_
                                          (cons _%gsc-prelude259141%_ '()))
                                         (_%user-decls259147%_ '()))
                        (let* ((_%rest259148259156%_ _%rest259146%_)
                               (_%else259150259164%_
                                (lambda ()
                                  (if (null? _%user-decls259147%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls259147%_)))))
                               (_%K259152259220%_
                                (lambda (_%rest259167%_ _%expr259168%_)
                                  (let* ((_%expr259169259181%_ _%expr259168%_)
                                         (_%else259172259189%_
                                          (lambda ()
                                            (_%lp259144%_
                                             _%rest259167%_
                                             _%user-decls259147%_))))
                                    (let ((_%K259177259210%_
                                           (lambda (_%decls259208%_)
                                             (_%lp259144%_
                                              _%rest259167%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls259147%_
                                                 _%decls259208%_)))))
                                          (_%K259174259195%_
                                           (lambda (_%exprs259193%_)
                                             (_%lp259144%_
                                              (append _%exprs259193%_
                                                      _%rest259167%_)
                                              _%user-decls259147%_))))
                                      (if (pair? _%expr259169259181%_)
                                          (let ((_%tl259179259215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr259169259181%_)))
                                                (_%hd259178259213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr259169259181%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd259178259213%_
                                                         'declare))
                                                (let ((_%decls259218%_
                                                       _%tl259179259215%_))
                                                  (_%K259177259210%_
                                                   _%decls259218%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd259178259213%_
                                                             'begin))
                                                    (let ((_%exprs259203%_
                                                           _%tl259179259215%_))
                                                      (_%K259174259195%_
                                                       _%exprs259203%_))
                                                    (_%else259172259189%_))))
                                          (_%else259172259189%_)))))))
                          (if (pair? _%rest259148259156%_)
                              (let ((_%hd259153259223%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest259148259156%_)))
                                    (_%tl259154259225%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest259148259156%_))))
                                (let* ((_%expr259228%_ _%hd259153259223%_)
                                       (_%rest259230%_ _%tl259154259225%_))
                                  (_%K259152259220%_
                                   _%rest259230%_
                                   _%expr259228%_)))
                              (_%else259150259164%_)))))))
                 (_%compile-stub259069%_
                  (lambda (_%output-scm259076%_ _%output-bin259077%_)
                    (let* ((_%gerbil-home259079%_
                            (let ((__tmp259852
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp259852)))
                           (_%gerbil-libdir259081%_
                            (path-expand '"lib" _%gerbil-home259079%_))
                           (_%runtime259083%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp259085%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home259079%_))
                           (_%include-gambit-sharp259087%_
                            (gxc#include-source _%gambit-sharp259085%_))
                           (_%bin-scm259089%_
                            (gxc#find-static-module-file _%ctx259063%_))
                           (_%deps259091%_
                            (gxc#find-runtime-module-deps _%ctx259063%_))
                           (_%deps259093%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps259091%_)))
                           (_%deps259098%_
                            (let ((__tmp259853
                                   (lambda (_%$obj259095%_)
                                     (not (gxc#file-empty? _%$obj259095%_)))))
                              (declare (not safe))
                              (##filter __tmp259853 _%deps259093%_)))
                           (_%deps259102%_
                            (let ((__tmp259854
                                   (lambda (_%f259100%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f259100%_
                                             _%runtime259083%_))))))
                              (declare (not safe))
                              (##filter __tmp259854 _%deps259098%_)))
                           (_%output-base259104%_
                            (let ((__tmp259855
                                   (path-strip-extension
                                    _%output-scm259076%_)))
                              (declare (not safe))
                              (##string-append __tmp259855)))
                           (_%output-c259106%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259104%_ '".c")))
                           (_%output-o259108%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base259104%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_259110%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259104%_ '"_.c")))
                           (_%output-o_259112%_
                            (let ((__tmp259856
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base259104%_
                               __tmp259856)))
                           (_%gsc-link-opts259114%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259116%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259118%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir259081%_)))
                           (_%output-ld-opts259120%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros259122%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp259087%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp259087%_
                                            '()))))
                           (_%gsc-link-opts259124%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts259114%_
                               _%gsc-gx-macros259122%_)))
                           (_%rpath259126%_
                            (gxc#gerbil-rpath _%gerbil-libdir259081%_))
                           (_%default-ld-options259128%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp259857
                             (lambda ()
                               (let ((__tmp259858
                                      (path-directory _%output-bin259077%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp259858)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp259857))
                      (gxc#with-output-to-scheme-file
                       _%output-scm259076%_
                       (lambda ()
                         (_%generate-stub259067%_
                          (let ((__tmp259859
                                 (let ((__tmp259860
                                        (cons _%bin-scm259089%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp259860
                                    _%deps259102%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp259859 _%runtime259083%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it259134%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_259110%_
                                                      (let ((__tmp259861
                                                             (cons _%output-scm259076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp259861 _%gsc-link-opts259124%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp259862
                                                 (let ((__tmp259863
                                                        (cons _%output-c259106%_
                                                              (cons _%output-c_259110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp259863
                                                    _%gsc-static-opts259118%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp259862
                                             _%gsc-cc-opts259116%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin259077%_
                                                      (cons _%output-o259108%_
                                                            (cons _%output-o_259112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259864
                                 (let ((__tmp259866
                                        (cons '"-L"
                                              (cons _%gerbil-libdir259081%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options259128%_))))
                                       (__tmp259865
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath259126%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp259866 __tmp259865))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp259864
                             _%output-ld-opts259120%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it259134%_))
                                (_%compile-it259134%_)))
                          '#!void)))))
          (let* ((_%output-bin259071%_
                  (gxc#compile-exe-output-file _%ctx259063%_ _%opts259064%_))
                 (_%output-scm259073%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259071%_ '"__exe.scm"))))
            (_%compile-stub259069%_
             _%output-scm259073%_
             _%output-bin259071%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx259012%_ _%id259013%_)
        (let ((_%$e259059%_
               (let ((__tmp259868
                      (lambda (_%e259014259016%_)
                        (let* ((_%e259014259018259028%_ _%e259014259016%_)
                               (_%else259020259036%_ (lambda () '#f))
                               (_%K259022259040%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e259014259018259028%_
                                 'gx#module-export::t))
                              (let* ((_%e259023259043%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259014259018259028%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e259024259046%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259014259018259028%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e259025259049%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259014259018259028%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e259025259049%_ '0))
                                    (let ((_%e259026259052%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e259014259018259028%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g259054259056%_)
                                             (eq? _%g259054259056%_
                                                  _%id259013%_))
                                           _%e259026259052%_)
                                          (_%K259022259040%_)
                                          (_%else259020259036%_)))
                                    (_%else259020259036%_)))
                              (_%else259020259036%_)))))
                     (__tmp259867
                      (##structure-ref
                       _%ctx259012%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp259868 __tmp259867))))
          (if _%$e259059%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e259059%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx259003%_ _%id259004%_)
        (let ((_%$e259006%_
               (gxc#find-export-binding _%ctx259003%_ _%id259004%_)))
          (if _%$e259006%_
              ((lambda (_%bind259009%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind259009%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id259004%_)))
                 (##structure-ref _%bind259009%_ '1 gx#binding::t '#f))
               _%$e259006%_)
              (let ((__tmp259869
                     (##structure-ref
                      _%ctx259003%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp259869
                 _%id259004%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx258869%_)
        (letrec* ((_%ht258871%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template258872%_
                   (lambda (_%in258948%_ _%phi258949%_)
                     (let ((_%iphi258951%_
                            (fx+ _%phi258949%_
                                 (##direct-structure-ref
                                  _%in258948%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports258952%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in258948%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp258954%_ ((_%rest258956%_ _%imports258952%_)
                                          (_%r258957%_ '()))
                         (let* ((_%rest258958258966%_ _%rest258956%_)
                                (_%else258960258974%_ (lambda () _%r258957%_))
                                (_%K258962258991%_
                                 (lambda (_%rest258977%_ _%in258978%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in258978%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi258951%_))
                                           (_%lp258954%_
                                            _%rest258977%_
                                            (cons _%in258978%_ _%r258957%_))
                                           (_%lp258954%_
                                            _%rest258977%_
                                            _%r258957%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in258978%_
                                              'gx#module-import::t))
                                           (let ((_%iphi258982%_
                                                  (fx+ _%phi258949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in258978%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi258982%_))
                                                 (_%lp258954%_
                                                  _%rest258977%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in258978%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r258957%_))
                                                 (_%lp258954%_
                                                  _%rest258977%_
                                                  _%r258957%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in258978%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi258985%_
                                                      (fx+ _%iphi258951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in258978%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi258985%_))
                                                     (_%lp258954%_
                                                      _%rest258977%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in258978%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r258957%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi258985%_))
                                                         (_%lp258954%_
                                                          _%rest258977%_
                                                          (let ((__tmp259870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template258872%_
                          _%in258978%_
                          _%iphi258951%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r258957%_ __tmp259870)))
                 (_%lp258954%_ _%rest258977%_ _%r258957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp258954%_
                                                _%rest258977%_
                                                _%r258957%_)))))))
                           (if (pair? _%rest258958258966%_)
                               (let ((_%hd258963258994%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest258958258966%_)))
                                     (_%tl258964258996%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest258958258966%_))))
                                 (let* ((_%in258999%_ _%hd258963258994%_)
                                        (_%rest259001%_ _%tl258964258996%_))
                                   (_%K258962258991%_
                                    _%rest259001%_
                                    _%in258999%_)))
                               (_%else258960258974%_)))))))
                  (_%find-deps258873%_
                   (lambda (_%rest258881%_ _%deps258882%_)
                     (let* ((_%rest258883258891%_ _%rest258881%_)
                            (_%else258885258899%_ (lambda () _%deps258882%_))
                            (_%K258887258936%_
                             (lambda (_%rest258902%_ _%hd258903%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd258903%_
                                      'gx#module-context::t))
                                   (let ((_%id258906%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd258903%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports258907%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd258903%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht258871%_
                                            _%id258906%_))
                                         (_%find-deps258873%_
                                          _%rest258902%_
                                          _%deps258882%_)
                                         (let ((_%$e258910%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd258903%_))))
                                           (if _%$e258910%_
                                               ((lambda (_%pre258913%_)
                                                  (let ((_%xdeps258915%_
                                                         (_%find-deps258873%_
                                                          (cons _%pre258913%_
                                                                _%imports258907%_)
                                                          _%deps258882%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht258871%_
                                                       _%id258906%_
                                                       _%hd258903%_))
                                                    (_%find-deps258873%_
                                                     _%rest258902%_
                                                     (cons _%hd258903%_
                                                           _%xdeps258915%_))))
                                                _%$e258910%_)
                                               (let ((_%xdeps258918%_
                                                      (_%find-deps258873%_
                                                       _%imports258907%_
                                                       _%deps258882%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht258871%_
                                                    _%id258906%_
                                                    _%hd258903%_))
                                                 (_%find-deps258873%_
                                                  _%rest258902%_
                                                  (cons _%hd258903%_
                                                        _%xdeps258918%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd258903%_
                                          'gx#prelude-context::t))
                                       (let ((_%id258921%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd258903%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht258871%_
                                                _%id258921%_))
                                             (_%find-deps258873%_
                                              _%rest258902%_
                                              _%deps258882%_)
                                             (let ((_%xdeps258925%_
                                                    (_%find-deps258873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd258903%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps258882%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht258871%_
                                                      _%id258921%_))
                                                   (_%find-deps258873%_
                                                    _%rest258902%_
                                                    _%xdeps258925%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht258871%_
                                                        _%id258921%_
                                                        _%hd258903%_))
                                                     (_%find-deps258873%_
                                                      _%rest258902%_
                                                      (cons _%hd258903%_
                                                            _%xdeps258925%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd258903%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd258903%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps258873%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd258903%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest258902%_)
                                                _%deps258882%_)
                                               (_%find-deps258873%_
                                                _%rest258902%_
                                                _%deps258882%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd258903%_
                                                  'gx#module-export::t))
                                               (_%find-deps258873%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd258903%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest258902%_)
                                                _%deps258882%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd258903%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd258903%_ '2 '#f '#f)))
               (_%find-deps258873%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd258903%_ '1 '#f '#f))
                      _%rest258902%_)
                _%deps258882%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd258903%_ '2 '#f '#f)))
                   (let ((_%xdeps258932%_
                          (_%import-set-template258872%_ _%hd258903%_ '0)))
                     (_%find-deps258873%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest258902%_ _%xdeps258932%_))
                      _%deps258882%_))
                   (_%find-deps258873%_ _%rest258902%_ _%deps258882%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd258903%_))))))))))
                       (if (pair? _%rest258883258891%_)
                           (let ((_%hd258888258939%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest258883258891%_)))
                                 (_%tl258889258941%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest258883258891%_))))
                             (let* ((_%hd258944%_ _%hd258888258939%_)
                                    (_%rest258946%_ _%tl258889258941%_))
                               (_%K258887258936%_
                                _%rest258946%_
                                _%hd258944%_)))
                           (_%else258885258899%_))))))
          (let ((__tmp259871
                 (filter gx#expander-context-id
                         (_%find-deps258873%_
                          (let ((_%$e258875%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx258869%_))))
                            (if _%$e258875%_
                                ((lambda (_%pre258878%_)
                                   (cons _%pre258878%_
                                         (##structure-ref
                                          _%ctx258869%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e258875%_)
                                (##structure-ref
                                 _%ctx258869%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp259871)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx258799%_)
        (let* ((_%context-id258801%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx258799%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx258799%_ '1 '#f '#f))
                    (string->symbol _%ctx258799%_)))
               (_%scm258803%_
                (let ((__tmp259872
                       (gxc#static-module-name _%context-id258801%_)))
                  (declare (not safe))
                  (##string-append __tmp259872 '".scm")))
               (_%dirs258805%_ (let () (declare (not safe)) (load-path)))
               (_%dirs258811%_
                (let ((_%user-libpath258807%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath258807%_
                      (let ((_%user-libpath258809%_
                             (path-expand '"lib" _%user-libpath258807%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath258809%_ _%dirs258805%_))
                            _%dirs258805%_
                            (cons _%user-libpath258809%_ _%dirs258805%_)))
                      _%dirs258805%_)))
               (_%dirs258821%_
                (let ((_%$e258813%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e258813%_
                      ((lambda (_%g258815258817%_)
                         (cons _%g258815258817%_ _%dirs258811%_))
                       _%$e258813%_)
                      _%dirs258811%_)))
               (_%dirs258827%_
                (let ((__tmp259873
                       (lambda (_%g258822258824%_)
                         (path-expand '"static" _%g258822258824%_))))
                  (declare (not safe))
                  (##map __tmp259873 _%dirs258821%_))))
          (let _%lp258830%_ ((_%rest258832%_ _%dirs258827%_))
            (let* ((_%rest258833258841%_ _%rest258832%_)
                   (_%else258835258849%_
                    (lambda ()
                      (let ((__tmp259874
                             (##structure-ref
                              _%ctx258799%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp259874
                         _%scm258803%_))))
                   (_%K258837258857%_
                    (lambda (_%rest258852%_ _%dir258853%_)
                      (let ((_%path258855%_
                             (path-expand _%scm258803%_ _%dir258853%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path258855%_))
                            _%path258855%_
                            (_%lp258830%_ _%rest258852%_))))))
              (if (pair? _%rest258833258841%_)
                  (let ((_%hd258838258860%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258833258841%_)))
                        (_%tl258839258862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258833258841%_))))
                    (let* ((_%dir258865%_ _%hd258838258860%_)
                           (_%rest258867%_ _%tl258839258862%_))
                      (_%K258837258857%_ _%rest258867%_ _%dir258865%_)))
                  (_%else258835258849%_)))))))
    (define gxc#file-empty?
      (lambda (_%path258797%_)
        (zero? (let ((__tmp259875 (file-info _%path258797%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp259875)))))
    (define gxc#compile-top-module
      (lambda (_%ctx258788%_)
        (let ((__tmp259876
               (lambda ()
                 (let ((__tmp259877
                        (lambda ()
                          (let ((__tmp259878
                                 (lambda ()
                                   (let ((__tmp259880
                                          (lambda ()
                                            (let ((__tmp259882
                                                   (lambda ()
                                                     (let ((__tmp259884
                                                            (lambda ()
                                                              (let ((__tmp259885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx258788%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp259885))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp259886
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx258788%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp259886))
                          '#!void)
                      (gxc#collect-bindings _%ctx258788%_)
                      (gxc#compile-runtime-code _%ctx258788%_)
                      (gxc#compile-meta-code _%ctx258788%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx258788%_)
                          '#!void)))
                   (__tmp259883
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
                __tmp259884
                gxc#current-compile-runtime-names
                __tmp259883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp259881
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp259882
                                               gxc#current-compile-runtime-sections
                                               __tmp259881))))
                                         (__tmp259879
                                          (let ((__obj259777
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj259777))
                                            __obj259777)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp259880
                                      gxc#current-compile-symbol-table
                                      __tmp259879)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp259878
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp259877
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259876
           gx#current-expander-context
           _%ctx258788%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx258786%_)
        (let ((__tmp259887
               (##structure-ref _%ctx258786%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp259887))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx258731%_)
        (letrec ((_%compile1258733%_
                  (lambda (_%ctx258775%_)
                    (let* ((_%code258777%_
                            (##structure-ref
                             _%ctx258775%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm258781%_
                            (let ((_%idstr258779%_
                                   (let ((__tmp259888
                                          (##structure-ref
                                           _%ctx258775%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp259888))))
                              (declare (not safe))
                              (##string-append _%idstr258779%_ '"~0")))
                           (_%rtc?258783%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code258777%_))))
                      (if _%rtc?258783%_
                          (let ((__tmp259889
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp259889
                             _%ctx258775%_
                             _%rtm258781%_))
                          '#!void)
                      (_%generate-runtime-code258735%_
                       _%ctx258775%_
                       _%code258777%_
                       (if _%rtc?258783%_ _%rtm258781%_ '#f)))))
                 (_%context-timestamp258734%_
                  (lambda (_%ctx258773%_)
                    (let ((__tmp259890
                           (let ((__tmp259891
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx258773%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp259891 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp259890))))
                 (_%generate-runtime-code258735%_
                  (lambda (_%ctx258742%_ _%code258743%_ _%rtm258744%_)
                    (let* ((_%runtime-code?258746%_ (if _%rtm258744%_ '#t '#f))
                           (_%lifts258748%_ (box '()))
                           (_%runtime-code258754%_
                            (if _%runtime-code?258746%_
                                (let ((__tmp259892
                                       (lambda ()
                                         (let ((__tmp259893
                                                (lambda ()
                                                  (let ((__tmp259894
                                                         (lambda ()
                                                           (let ((__tmp259896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code258743%_))))
                         (__tmp259895
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259896
                      gxc#current-compile-marks
                      __tmp259895)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp259894
                                                     gxc#current-compile-lift
                                                     _%lifts258748%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp259893
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp259892
                                   gx#current-expander-context
                                   _%ctx258742%_))
                                '#f))
                           (_%runtime-code258756%_
                            (if _%runtime-code?258746%_
                                (if (null? (unbox _%lifts258748%_))
                                    _%runtime-code258754%_
                                    (cons 'begin
                                          (let ((__tmp259898
                                                 (cons _%runtime-code258754%_
                                                       '()))
                                                (__tmp259897
                                                 (reverse (unbox _%lifts258748%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp259898
                                             __tmp259897))))
                                '#f))
                           (_%runtime-code258758%_
                            (if _%runtime-code?258746%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp258734%_
                                                         _%ctx258742%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code258756%_ '())))
                                '#f))
                           (_%loader-code258761%_
                            (let ((__tmp259899
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code258743%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259899
                               gx#current-expander-context
                               _%ctx258742%_)))
                           (_%loader-code258763%_
                            (cons 'begin
                                  (cons _%loader-code258761%_
                                        (cons (if _%runtime-code?258746%_
                                                  (cons 'load-module
                                                        (cons _%rtm258744%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0258765%_
                            (gxc#compile-output-file _%ctx258742%_ '0 '".scm"))
                           (_%scmrt258767%_
                            (gxc#compile-output-file
                             _%ctx258742%_
                             '#f
                             '".scm"))
                           (_%scms258769%_
                            (gxc#compile-static-output-file _%ctx258742%_)))
                      (if _%runtime-code?258746%_
                          (gxc#compile-scm-file__0
                           _%scm0258765%_
                           _%runtime-code258758%_)
                          '#!void)
                      (let ((__tmp259900
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt258767%_
                                _%loader-code258763%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp259900
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms258769%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms258769%_))
                          '#!void)
                      (if _%runtime-code?258746%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0258765%_ _%scms258769%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms258769%_ void)))))))
          (let* ((_%all-modules258737%_
                  (cons _%ctx258731%_ (gxc#lift-nested-modules _%ctx258731%_)))
                 (__tmp259901
                  (lambda (_%ctx258739%_)
                    (let ((__tmp259902
                           (lambda () (_%compile1258733%_ _%ctx258739%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259902
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp259901 _%all-modules258737%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx258630%_)
        (letrec ((_%compile-ssi258632%_
                  (lambda (_%code258699%_)
                    (let* ((_%path258701%_
                            (gxc#compile-output-file
                             _%ctx258630%_
                             '#f
                             '".ssi"))
                           (_%prelude258713%_
                            (let* ((_%super258703%_
                                    (##structure-ref
                                     _%ctx258630%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e258705%_
                                    (##structure-ref
                                     _%super258703%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e258705%_
                                  ((lambda (_%g258707258709%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g258707258709%_)))
                                   _%$e258705%_)
                                  ':<root>)))
                           (_%ns258715%_
                            (##structure-ref
                             _%ctx258630%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr258717%_
                            (symbol->string
                             (##structure-ref
                              _%ctx258630%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg258725%_
                            (let ((_%$e258719%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr258717%_ '#\/))))
                              (if _%$e258719%_
                                  ((lambda (_%x258722%_)
                                     (let ((__tmp259903
                                            (substring
                                             _%idstr258717%_
                                             '0
                                             _%x258722%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp259903)))
                                   _%$e258719%_)
                                  '#f)))
                           (_%rt258727%_
                            (let ((__tmp259904
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp259904 _%ctx258630%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path258701%_))
                      (gxc#with-output-to-scheme-file
                       _%path258701%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude258713%_))
                         (if _%pkg258725%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg258725%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns258715%_))
                         (newline)
                         (pretty-print _%code258699%_)
                         (if _%rt258727%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt258727%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi258633%_
                  (lambda (_%part258638%_)
                    (let* ((_%part258639258652%_ _%part258638%_)
                           (_%E258641258656%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part258639258652%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K258642258668%_
                            (lambda (_%code258659%_
                                     _%n258660%_
                                     _%phi258661%_
                                     _%phi-ctx258662%_)
                              (let ((_%code258666%_
                                     (let ((__tmp259905
                                            (lambda ()
                                              (let ((__tmp259906
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code258659%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259906
                                                 gx#current-expander-phi
                                                 _%phi258661%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259905
                                        gx#current-expander-context
                                        _%phi-ctx258662%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx258630%_
                                  _%n258660%_
                                  '".scm")
                                 _%code258666%_
                                 '#t)))))
                      (if (pair? _%part258639258652%_)
                          (let ((_%hd258643258671%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part258639258652%_)))
                                (_%tl258644258673%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part258639258652%_))))
                            (let ((_%phi-ctx258676%_ _%hd258643258671%_))
                              (if (pair? _%tl258644258673%_)
                                  (let ((_%hd258645258678%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258644258673%_)))
                                        (_%tl258646258680%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258644258673%_))))
                                    (let ((_%phi258683%_ _%hd258645258678%_))
                                      (if (pair? _%tl258646258680%_)
                                          (let ((_%hd258647258685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl258646258680%_)))
                                                (_%tl258648258687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl258646258680%_))))
                                            (let ((_%n258690%_
                                                   _%hd258647258685%_))
                                              (if (pair? _%tl258648258687%_)
                                                  (let ((_%hd258649258692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl258648258687%_)))
                                                        (_%tl258650258694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl258648258687%_))))
                                                    (let ((_%code258697%_
                                                           _%hd258649258692%_))
                                                      (if (null? _%tl258650258694%_)
                                                          (_%K258642258668%_
                                                           _%code258697%_
                                                           _%n258690%_
                                                           _%phi258683%_
                                                           _%phi-ctx258676%_)
                                                          (_%E258641258656%_))))
                                                  (_%E258641258656%_))))
                                          (_%E258641258656%_))))
                                  (_%E258641258656%_))))
                          (_%E258641258656%_))))))
          (let ((_g259907_ (gxc#generate-meta-code _%ctx258630%_)))
            (begin
              (let ((_g259908_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g259907_)
                           (##values-length _g259907_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g259908_ 2)))
                    (error "Context expects 2 values" _g259908_)))
              (let ((_%ssi-code258635%_
                     (let () (declare (not safe)) (##values-ref _g259907_ 0)))
                    (_%phi-code258636%_
                     (let () (declare (not safe)) (##values-ref _g259907_ 1))))
                (begin
                  (_%compile-ssi258632%_ _%ssi-code258635%_)
                  (for-each _%compile-phi258633%_ _%phi-code258636%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx258612%_)
        (let* ((_%path258614%_
                (gxc#compile-output-file _%ctx258612%_ '#f '".ssxi.ss"))
               (_%code258616%_
                (let ((__tmp259909
                       (##structure-ref
                        _%ctx258612%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp259909)))
               (_%idstr258618%_
                (symbol->string
                 (##structure-ref
                  _%ctx258612%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg258626%_
                (let ((_%$e258620%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr258618%_ '#\/))))
                  (if _%$e258620%_
                      ((lambda (_%x258623%_)
                         (let ((__tmp259910
                                (substring _%idstr258618%_ '0 _%x258623%_)))
                           (declare (not safe))
                           (##string->symbol __tmp259910)))
                       _%$e258620%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path258614%_))
          (gxc#with-output-to-scheme-file
           _%path258614%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg258626%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg258626%_))
                 '#!void)
             (newline)
             (pretty-print _%code258616%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx258605%_)
        (let* ((_%state258607%_
                (let ((__obj259778
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj259778 _%ctx258605%_))
                  __obj259778))
               (_%ssi-code258609%_
                (let ((__tmp259911
                       (##structure-ref
                        _%ctx258605%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state258607%_
                   __tmp259911))))
          (values _%ssi-code258609%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state258607%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx258597%_)
        (let* ((_%lifts258599%_ (box '()))
               (__tmp259912
                (lambda ()
                  (let ((__tmp259914
                         (lambda ()
                           (let ((_%code258603%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx258597%_))))
                             (if (null? (unbox _%lifts258599%_))
                                 _%code258603%_
                                 (cons 'begin
                                       (let ((__tmp259916
                                              (cons _%code258603%_ '()))
                                             (__tmp259915
                                              (reverse (unbox _%lifts258599%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp259916
                                          __tmp259915)))))))
                        (__tmp259913
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp259914
                     gxc#current-compile-marks
                     __tmp259913)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259912
           gxc#current-compile-lift
           _%lifts258599%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx258593%_)
        (let ((_%modules258595%_ (box '())))
          (let ((__tmp259917
                 (##structure-ref _%ctx258593%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules258595%_ __tmp259917))
          (reverse (unbox _%modules258595%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path258573%_ _%code258574%_ _%phi?258575%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path258573%_))
        (gxc#with-output-to-scheme-file
         _%path258573%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp259918
                                           (if _%phi?258575%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp259918)))))))
           (pretty-print _%code258574%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it258579%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path258573%_ _%phi?258575%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp259919
                         (cons 'compile-file (cons _%path258573%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it258579%_ __tmp259919))
                  (_%compile-it258579%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path258584%_ _%code258585%_)
        (let ((_%phi?258587%_ '#f))
          (gxc#compile-scm-file__%
           _%path258584%_
           _%code258585%_
           _%phi?258587%_))))
    (define gxc#compile-scm-file
      (lambda _g259920_
        (let ((_g259921_ (let () (declare (not safe)) (##length _g259920_))))
          (cond ((let () (declare (not safe)) (##fx= _g259921_ 2))
                 (apply gxc#compile-scm-file__0 _g259920_))
                ((let () (declare (not safe)) (##fx= _g259921_ 3))
                 (apply gxc#compile-scm-file__% _g259920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g259920_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?258474%_)
        (let _%lp258476%_ ((_%rest258478%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258479%_ '()))
          (let* ((_%rest258480258500%_ _%rest258478%_)
                 (_%else258484258508%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts258479%_)))
                        (reverse _%opts258479%_)))))
            (let ((_%K258494258551%_
                   (lambda (_%rest258549%_)
                     (_%lp258476%_ _%rest258549%_ _%opts258479%_)))
                  (_%K258489258533%_
                   (lambda (_%rest258531%_)
                     (_%lp258476%_ _%rest258531%_ _%opts258479%_)))
                  (_%K258486258515%_
                   (lambda (_%rest258512%_ _%opt258513%_)
                     (_%lp258476%_
                      _%rest258512%_
                      (cons _%opt258513%_ _%opts258479%_)))))
              (if (pair? _%rest258480258500%_)
                  (let ((_%tl258496258556%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258480258500%_)))
                        (_%hd258495258554%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258480258500%_))))
                    (if (equal? _%hd258495258554%_ '"-cc-options")
                        (if (pair? _%tl258496258556%_)
                            (let* ((_%tl258498258559%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258496258556%_)))
                                   (_%rest258562%_ _%tl258498258559%_))
                              (_%K258494258551%_ _%rest258562%_))
                            (let ((_%opt258523%_ _%hd258495258554%_)
                                  (_%rest258525%_ _%tl258496258556%_))
                              (_%K258486258515%_
                               _%rest258525%_
                               _%opt258523%_)))
                        (if (equal? _%hd258495258554%_ '"-ld-options")
                            (if (pair? _%tl258496258556%_)
                                (let* ((_%tl258493258541%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl258496258556%_)))
                                       (_%rest258544%_ _%tl258493258541%_))
                                  (_%K258489258533%_ _%rest258544%_))
                                (let ((_%opt258523%_ _%hd258495258554%_)
                                      (_%rest258525%_ _%tl258496258556%_))
                                  (_%K258486258515%_
                                   _%rest258525%_
                                   _%opt258523%_)))
                            (let ((_%opt258523%_ _%hd258495258554%_)
                                  (_%rest258525%_ _%tl258496258556%_))
                              (_%K258486258515%_
                               _%rest258525%_
                               _%opt258523%_)))))
                  (_%else258484258508%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?258568%_ '#f)) (gxc#gsc-link-options__% _%phi?258568%_))))
    (define gxc#gsc-link-options
      (lambda _g259922_
        (let ((_g259923_ (let () (declare (not safe)) (##length _g259922_))))
          (cond ((let () (declare (not safe)) (##fx= _g259923_ 0))
                 (apply gxc#gsc-link-options__0 _g259922_))
                ((let () (declare (not safe)) (##fx= _g259923_ 1))
                 (apply gxc#gsc-link-options__% _g259922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g259922_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords258324%_ _%static?258320258325%_ _%phi?258326%_)
        (let ((_%static?258328%_
               (if (eq? _%static?258320258325%_ absent-value)
                   '#f
                   _%static?258320258325%_)))
          (if _%phi?258326%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp258330%_ ((_%rest258332%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258333%_ '()))
                (let* ((_%rest258334258360%_ _%rest258332%_)
                       (_%else258339258368%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts258333%_)))
                              (reverse! _%opts258333%_)))))
                  (let ((_%K258354258431%_
                         (lambda (_%rest258428%_ _%opt258429%_)
                           (if _%static?258328%_
                               (_%lp258330%_
                                _%rest258428%_
                                (cons _%opt258429%_
                                      (cons '"-cc-options" _%opts258333%_)))
                               (_%lp258330%_ _%rest258428%_ _%opts258333%_))))
                        (_%K258349258408%_
                         (lambda (_%rest258405%_ _%opt258406%_)
                           (_%lp258330%_
                            _%rest258405%_
                            (cons _%opt258406%_
                                  (cons '"-cc-options" _%opts258333%_)))))
                        (_%K258344258388%_
                         (lambda (_%rest258386%_)
                           (_%lp258330%_ _%rest258386%_ _%opts258333%_)))
                        (_%K258341258374%_
                         (lambda (_%rest258372%_)
                           (_%lp258330%_ _%rest258372%_ _%opts258333%_))))
                    (if (pair? _%rest258334258360%_)
                        (let ((_%tl258356258436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258334258360%_)))
                              (_%hd258355258434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258334258360%_))))
                          (if (equal? _%hd258355258434%_ '"-cc-options")
                              (if (pair? _%tl258356258436%_)
                                  (let ((_%tl258358258441%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258356258436%_)))
                                        (_%hd258357258439%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258356258436%_))))
                                    (if (equal? _%hd258357258439%_ '"-Bstatic")
                                        (let ((_%opt258444%_
                                               _%hd258357258439%_)
                                              (_%rest258446%_
                                               _%tl258358258441%_))
                                          (_%K258354258431%_
                                           _%rest258446%_
                                           _%opt258444%_))
                                        (let ((_%opt258421%_
                                               _%hd258357258439%_)
                                              (_%rest258423%_
                                               _%tl258358258441%_))
                                          (_%K258349258408%_
                                           _%rest258423%_
                                           _%opt258421%_))))
                                  (let ((_%rest258380%_ _%tl258356258436%_))
                                    (_%K258341258374%_ _%rest258380%_)))
                              (if (equal? _%hd258355258434%_ '"-ld-options")
                                  (if (pair? _%tl258356258436%_)
                                      (let* ((_%tl258348258396%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258356258436%_)))
                                             (_%rest258399%_
                                              _%tl258348258396%_))
                                        (_%K258344258388%_ _%rest258399%_))
                                      (let ((_%rest258380%_
                                             _%tl258356258436%_))
                                        (_%K258341258374%_ _%rest258380%_)))
                                  (let ((_%rest258380%_ _%tl258356258436%_))
                                    (_%K258341258374%_ _%rest258380%_)))))
                        (_%else258339258368%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords258451%_ _%static?258320258452%_)
        (let ((_%phi?258454%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords258451%_
           _%static?258320258452%_
           _%phi?258454%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g259924_
        (let ((_g259925_ (let () (declare (not safe)) (##length _g259924_))))
          (cond ((let () (declare (not safe)) (##fx= _g259925_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g259924_))
                ((let () (declare (not safe)) (##fx= _g259925_ 3))
                 (apply gxc#gsc-cc-options__%__% _g259924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g259924_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords258463%_ . _%args258464%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords258463%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258463%_
                  'static:
                  absent-value))
               _%args258464%_)))
    (define gxc#gsc-cc-options
      (lambda _%args258321258470%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args258321258470%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords258170%_ _%static?258166258171%_ _%phi?258172%_)
        (let ((_%static?258174%_
               (if (eq? _%static?258166258171%_ absent-value)
                   '#f
                   _%static?258166258171%_)))
          (if _%phi?258172%_
              '()
              (let _%lp258176%_ ((_%rest258178%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258179%_ '()))
                (let* ((_%rest258180258206%_ _%rest258178%_)
                       (_%else258185258214%_
                        (lambda () (reverse! _%opts258179%_))))
                  (let ((_%K258200258277%_
                         (lambda (_%rest258274%_ _%opt258275%_)
                           (if _%static?258174%_
                               (_%lp258176%_
                                _%rest258274%_
                                (cons _%opt258275%_
                                      (cons '"-ld-options" _%opts258179%_)))
                               (_%lp258176%_ _%rest258274%_ _%opts258179%_))))
                        (_%K258195258254%_
                         (lambda (_%rest258251%_ _%opt258252%_)
                           (_%lp258176%_
                            _%rest258251%_
                            (cons _%opt258252%_
                                  (cons '"-ld-options" _%opts258179%_)))))
                        (_%K258190258234%_
                         (lambda (_%rest258232%_)
                           (_%lp258176%_ _%rest258232%_ _%opts258179%_)))
                        (_%K258187258220%_
                         (lambda (_%rest258218%_)
                           (_%lp258176%_ _%rest258218%_ _%opts258179%_))))
                    (if (pair? _%rest258180258206%_)
                        (let ((_%tl258202258282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258180258206%_)))
                              (_%hd258201258280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258180258206%_))))
                          (if (equal? _%hd258201258280%_ '"-ld-options")
                              (if (pair? _%tl258202258282%_)
                                  (let ((_%tl258204258287%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258202258282%_)))
                                        (_%hd258203258285%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258202258282%_))))
                                    (if (equal? _%hd258203258285%_ '"-static")
                                        (let ((_%opt258290%_
                                               _%hd258203258285%_)
                                              (_%rest258292%_
                                               _%tl258204258287%_))
                                          (_%K258200258277%_
                                           _%rest258292%_
                                           _%opt258290%_))
                                        (let ((_%opt258267%_
                                               _%hd258203258285%_)
                                              (_%rest258269%_
                                               _%tl258204258287%_))
                                          (_%K258195258254%_
                                           _%rest258269%_
                                           _%opt258267%_))))
                                  (let ((_%rest258226%_ _%tl258202258282%_))
                                    (_%K258187258220%_ _%rest258226%_)))
                              (if (equal? _%hd258201258280%_ '"-cc-options")
                                  (if (pair? _%tl258202258282%_)
                                      (let* ((_%tl258194258242%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258202258282%_)))
                                             (_%rest258245%_
                                              _%tl258194258242%_))
                                        (_%K258190258234%_ _%rest258245%_))
                                      (let ((_%rest258226%_
                                             _%tl258202258282%_))
                                        (_%K258187258220%_ _%rest258226%_)))
                                  (let ((_%rest258226%_ _%tl258202258282%_))
                                    (_%K258187258220%_ _%rest258226%_)))))
                        (_%else258185258214%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords258297%_ _%static?258166258298%_)
        (let ((_%phi?258300%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords258297%_
           _%static?258166258298%_
           _%phi?258300%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g259926_
        (let ((_g259927_ (let () (declare (not safe)) (##length _g259926_))))
          (cond ((let () (declare (not safe)) (##fx= _g259927_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g259926_))
                ((let () (declare (not safe)) (##fx= _g259927_ 3))
                 (apply gxc#gsc-ld-options__%__% _g259926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g259926_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords258309%_ . _%args258310%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords258309%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258309%_
                  'static:
                  absent-value))
               _%args258310%_)))
    (define gxc#gsc-ld-options
      (lambda _%args258167258316%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args258167258316%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir258161%_)
        (let ((_%user-staticdir258163%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir258161%_
                       '" -I "
                       _%user-staticdir258163%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp258073%_ ((_%rest258075%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258076%_ '()))
          (let* ((_%rest258077258097%_ _%rest258075%_)
                 (_%else258081258105%_ (lambda () _%opts258076%_)))
            (let ((_%K258091258148%_
                   (lambda (_%rest258146%_)
                     (_%lp258073%_ _%rest258146%_ _%opts258076%_)))
                  (_%K258086258126%_
                   (lambda (_%rest258123%_ _%opt258124%_)
                     (_%lp258073%_
                      _%rest258123%_
                      (let ((__tmp259928
                             (let ((__tmp259929
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt258124%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp259929))))
                        (declare (not safe))
                        (##append _%opts258076%_ __tmp259928)))))
                  (_%K258083258111%_
                   (lambda (_%rest258109%_)
                     (_%lp258073%_ _%rest258109%_ _%opts258076%_))))
              (if (pair? _%rest258077258097%_)
                  (let ((_%tl258093258153%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258077258097%_)))
                        (_%hd258092258151%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258077258097%_))))
                    (if (equal? _%hd258092258151%_ '"-cc-options")
                        (if (pair? _%tl258093258153%_)
                            (let* ((_%tl258095258156%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258093258153%_)))
                                   (_%rest258159%_ _%tl258095258156%_))
                              (_%K258091258148%_ _%rest258159%_))
                            (let ((_%rest258117%_ _%tl258093258153%_))
                              (_%K258083258111%_ _%rest258117%_)))
                        (if (equal? _%hd258092258151%_ '"-ld-options")
                            (if (pair? _%tl258093258153%_)
                                (let ((_%tl258090258136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl258093258153%_)))
                                      (_%hd258089258134%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl258093258153%_))))
                                  (let ((_%opt258139%_ _%hd258089258134%_)
                                        (_%rest258141%_ _%tl258090258136%_))
                                    (_%K258086258126%_
                                     _%rest258141%_
                                     _%opt258139%_)))
                                (let ((_%rest258117%_ _%tl258093258153%_))
                                  (_%K258083258111%_ _%rest258117%_)))
                            (let ((_%rest258117%_ _%tl258093258153%_))
                              (_%K258083258111%_ _%rest258117%_)))))
                  (_%else258081258105%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str258070%_)
        (not (let () (declare (not safe)) (string-empty? _%str258070%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path258063%_ _%phi?258064%_)
        (let ((_%gsc-link-opts258066%_
               (gxc#gsc-link-options__% _%phi?258064%_))
              (_%gsc-cc-opts258067%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?258064%_))
              (_%gsc-ld-opts258068%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?258064%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp259930
                  (let ((__tmp259931
                         (let ((__tmp259932 (cons _%path258063%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp259932
                            _%gsc-link-opts258066%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259931 _%gsc-ld-opts258068%_))))
             (declare (not safe))
             (foldr__0 cons __tmp259930 _%gsc-cc-opts258067%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx258029%_ _%n258030%_ _%ext258031%_)
        (letrec ((_%module-relative-path258033%_
                  (lambda (_%ctx258061%_)
                    (path-strip-directory
                     (let ((__tmp259933
                            (##structure-ref
                             _%ctx258061%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp259933)))))
                 (_%module-source-directory258034%_
                  (lambda (_%ctx258057%_)
                    (path-directory
                     (let ((_%mpath258059%_
                            (##structure-ref
                             _%ctx258057%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath258059%_)
                           _%mpath258059%_
                           (last _%mpath258059%_))))))
                 (_%section-string258035%_
                  (lambda (_%n258051%_)
                    (if (number? _%n258051%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n258051%_))
                        (if (symbol? _%n258051%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n258051%_))
                            (if (string? _%n258051%_)
                                _%n258051%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n258051%_)))))))
                 (_%file-name258036%_
                  (lambda (_%path258049%_)
                    (if _%n258030%_
                        (string-append
                         _%path258049%_
                         '"~"
                         (_%section-string258035%_ _%n258030%_)
                         _%ext258031%_)
                        (string-append _%path258049%_ _%ext258031%_))))
                 (_%file-path258037%_
                  (lambda ()
                    (let ((_%$e258043%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e258043%_
                          ((lambda (_%outdir258046%_)
                             (path-expand
                              (_%file-name258036%_
                               (let ((__tmp259934
                                      (##structure-ref
                                       _%ctx258029%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp259934)))
                              _%outdir258046%_))
                           _%$e258043%_)
                          (path-expand
                           (_%file-name258036%_
                            (_%module-relative-path258033%_ _%ctx258029%_))
                           (_%module-source-directory258034%_
                            _%ctx258029%_)))))))
          (let ((_%path258039%_ (_%file-path258037%_)))
            (let ((__tmp259935
                   (lambda ()
                     (let ((__tmp259936 (path-directory _%path258039%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp259936)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp259935))
            _%path258039%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx258010%_)
        (letrec ((_%file-name258012%_
                  (lambda (_%id258027%_)
                    (let ((__tmp259937 (gxc#static-module-name _%id258027%_)))
                      (declare (not safe))
                      (##string-append __tmp259937 '".scm"))))
                 (_%file-path258013%_
                  (lambda ()
                    (let* ((_%file258019%_
                            (_%file-name258012%_
                             (##structure-ref
                              _%ctx258010%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e258021%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e258021%_
                          ((lambda (_%outdir258024%_)
                             (path-expand
                              _%file258019%_
                              (path-expand '"static" _%outdir258024%_)))
                           _%$e258021%_)
                          (path-expand _%file258019%_ '"static"))))))
          (let ((_%path258015%_ (_%file-path258013%_)))
            (let ((__tmp259938
                   (lambda ()
                     (let ((__tmp259939 (path-directory _%path258015%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp259939)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp259938))
            _%path258015%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx258003%_ _%opts258004%_)
        (let ((_%$e258006%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts258004%_))))
          (if _%$e258006%_
              _%$e258006%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx258003%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr257993%_)
        (if (string? _%idstr257993%_)
            (let* ((_%str257996%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr257993%_)))
                   (_%strs257998%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str257996%_ '#\/))))
              (declare (not safe))
              (string-join _%strs257998%_ '"__"))
            (if (symbol? _%idstr257993%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr257993%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr257993%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp259940
               (let ((__tmp259941 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp259941 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp259940))))
    (define gxc#invoke__%
      (lambda (_%@@keywords257959%_
               _%stdout-redirection257955257960%_
               _%stderr-redirection257956257961%_
               _%program257962%_
               _%args257963%_)
        (let* ((_%stdout-redirection257965%_
                (if (eq? _%stdout-redirection257955257960%_ absent-value)
                    '#f
                    _%stdout-redirection257955257960%_))
               (_%stderr-redirection257967%_
                (if (eq? _%stderr-redirection257956257961%_ absent-value)
                    '#f
                    _%stderr-redirection257956257961%_)))
          (let ((__tmp259942 (cons _%program257962%_ _%args257963%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp259942))
          (let* ((_%proc257969%_
                  (open-process
                   (cons 'path:
                         (cons _%program257962%_
                               (cons 'arguments:
                                     (cons _%args257963%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection257965%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection257967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output257974%_
                  (if (or _%stdout-redirection257965%_
                          _%stderr-redirection257967%_)
                      (read-line _%proc257969%_ '#f)
                      '#f))
                 (_%status257977%_ (process-status _%proc257969%_)))
            (let () (declare (not safe)) (##close-port _%proc257969%_))
            (if (zero? _%status257977%_)
                '#!void
                (begin
                  (display _%output257974%_)
                  (let ((__tmp259943 (cons _%program257962%_ _%args257963%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp259943
                     _%status257977%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords257982%_ . _%args257983%_)
        (apply gxc#invoke__%
               _%@@keywords257982%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257982%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257982%_
                  'stderr-redirection:
                  absent-value))
               _%args257983%_)))
    (define gxc#invoke
      (lambda _%args257957257989%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args257957257989%_)))))
