(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1771093457)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp259783 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp259783))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp259784 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp259784))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path259640%_ _%fun259641%_)
        (with-output-to-file
         (cons 'path: (cons _%path259640%_ gxc#scheme-file-settings))
         _%fun259641%_)))
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
      (lambda (_%gerbil-libdir259635%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir259635%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path259633%_)
        (let ((__tmp259785 (object->string _%path259633%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp259785 '")"))))
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
      (lambda (_%dir259631%_) (delete-file-or-directory _%dir259631%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath259574%_ _%opts259575%_)
        (if (string? _%srcpath259574%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath259574%_)))
        (let* ((_%outdir259577%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts259575%_)))
               (_%invoke-gsc?259579%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts259575%_)))
               (_%target259584%_
                (let ((_%$e259581%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts259575%_))))
                  (if _%$e259581%_ _%$e259581%_ 'C)))
               (_%gsc-options259589%_
                (append (cons '"-target"
                              (cons (symbol->string _%target259584%_) '()))
                        (let ((_%$e259586%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts259575%_))))
                          (if _%$e259586%_ _%$e259586%_ '()))))
               (_%keep-scm?259591%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts259575%_)))
               (_%verbosity259593%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts259575%_)))
               (_%optimize259595%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts259575%_)))
               (_%debug259597%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts259575%_)))
               (_%gen-ssxi259599%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts259575%_)))
               (_%parallel?259601%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts259575%_))))
          (if _%outdir259577%_
              (let ((__tmp259786
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir259577%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259786))
              '#!void)
          (if _%optimize259595%_
              (let ((__tmp259787
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259787))
              '#!void)
          (let ((__tmp259788
                 (lambda ()
                   (let ((__tmp259789
                          (lambda ()
                            (let ((__tmp259790
                                   (lambda ()
                                     (let ((__tmp259791
                                            (lambda ()
                                              (let ((__tmp259792
                                                     (lambda ()
                                                       (let ((__tmp259793
                                                              (lambda ()
                                                                (let ((__tmp259794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp259795
                                        (lambda ()
                                          (let ((__tmp259796
                                                 (lambda ()
                                                   (let ((__tmp259798
                                                          (lambda ()
                                                            (let ((__tmp259800
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp259802
                                    (lambda ()
                                      (let ((__tmp259803
                                             (lambda ()
                                               (let ((__tmp259804
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath259574%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp259805
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath259574%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp259805))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp259804
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp259803
                                         gxc#current-compile-parallel
                                         _%parallel?259601%_))))
                                   (__tmp259801
                                    (let ()
                                      (declare (not safe))
                                      (gxc#make-bound-identifier-table))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259802
                                gxc#current-compile-identifiers
                                __tmp259801))))
                          (__tmp259799
                           (cons (cons 'compile-module
                                       (cons _%srcpath259574%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259800
                       gxc#current-compile-context
                       __tmp259799))))
                 (__tmp259797 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp259798
                                                      gxc#current-compile-timestamp
                                                      __tmp259797)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp259796
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi259599%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp259795
                                    gxc#current-compile-debug
                                    _%debug259597%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp259794
                           gxc#current-compile-optimize
                           _%optimize259595%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp259793
                  gxc#current-compile-verbose
                  _%verbosity259593%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259792
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?259591%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259791
                                        gxc#current-compile-gsc-options
                                        _%gsc-options259589%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259790
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?259579%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259789
                      gx#current-compilation-target
                      _%target259584%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp259788
             gxc#current-compile-output-dir
             _%outdir259577%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath259624%_)
        (let ((_%opts259626%_ '()))
          (gxc#compile-module__% _%srcpath259624%_ _%opts259626%_))))
    (define gxc#compile-module
      (lambda _g259806_
        (let ((_g259807_ (let () (declare (not safe)) (##length _g259806_))))
          (cond ((let () (declare (not safe)) (##fx= _g259807_ 1))
                 (apply gxc#compile-module__0 _g259806_))
                ((let () (declare (not safe)) (##fx= _g259807_ 2))
                 (apply gxc#compile-module__% _g259806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g259806_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath259523%_ _%opts259524%_)
        (if (string? _%srcpath259523%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath259523%_)))
        (let* ((_%outdir259526%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts259524%_)))
               (_%invoke-gsc?259528%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts259524%_)))
               (_%target259533%_
                (let ((_%$e259530%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts259524%_))))
                  (if _%$e259530%_ _%$e259530%_ 'C)))
               (_%gsc-options259538%_
                (append (cons '"-target"
                              (cons (symbol->string _%target259533%_) '()))
                        (let ((_%$e259535%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts259524%_))))
                          (if _%$e259535%_ _%$e259535%_ '()))))
               (_%keep-scm?259540%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts259524%_)))
               (_%verbosity259542%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts259524%_)))
               (_%debug259544%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts259524%_)))
               (_%parallel?259546%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts259524%_))))
          (if _%outdir259526%_
              (let ((__tmp259808
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir259526%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp259808))
              '#!void)
          (let ((__tmp259809
                 (lambda ()
                   (let ((__tmp259810
                          (lambda ()
                            (let ((__tmp259811
                                   (lambda ()
                                     (let ((__tmp259812
                                            (lambda ()
                                              (let ((__tmp259813
                                                     (lambda ()
                                                       (let ((__tmp259814
                                                              (lambda ()
                                                                (let ((__tmp259815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp259817
                                        (lambda ()
                                          (let ((__tmp259819
                                                 (lambda ()
                                                   (let ((__tmp259821
                                                          (lambda ()
                                                            (let ((__tmp259822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp259823
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath259523%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp259824
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath259523%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp259824))
                                       _%opts259524%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp259823
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259822
                       gxc#current-compile-parallel
                       _%parallel?259546%_))))
                 (__tmp259820
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp259821
                                                      gxc#current-compile-identifiers
                                                      __tmp259820))))
                                                (__tmp259818
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath259523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp259819
                                             gxc#current-compile-context
                                             __tmp259818))))
                                       (__tmp259816 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp259817
                                    gxc#current-compile-timestamp
                                    __tmp259816)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp259815
                           gxc#current-compile-debug
                           _%debug259544%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp259814
                  gxc#current-compile-verbose
                  _%verbosity259542%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259813
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?259540%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259812
                                        gxc#current-compile-gsc-options
                                        _%gsc-options259538%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259811
                               gx#current-compilation-target
                               _%target259533%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259810
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?259528%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp259809
             gxc#current-compile-output-dir
             _%outdir259526%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath259566%_)
        (let ((_%opts259568%_ '()))
          (gxc#compile-exe__% _%srcpath259566%_ _%opts259568%_))))
    (define gxc#compile-exe
      (lambda _g259825_
        (let ((_g259826_ (let () (declare (not safe)) (##length _g259825_))))
          (cond ((let () (declare (not safe)) (##fx= _g259826_ 1))
                 (apply gxc#compile-exe__0 _g259825_))
                ((let () (declare (not safe)) (##fx= _g259826_ 2))
                 (apply gxc#compile-exe__% _g259825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g259825_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx259519%_ _%opts259520%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts259520%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx259519%_
             _%opts259520%_)
            (gxc#compile-executable-module/separate
             _%ctx259519%_
             _%opts259520%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx259245%_ _%opts259246%_)
        (letrec ((_%generate-stub259248%_
                  (lambda (_%builtin-modules259515%_)
                    (let ((_%mod-main259517%_
                           (gxc#find-runtime-symbol _%ctx259245%_ 'main)))
                      (let ((__tmp259827
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules259515%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp259827))
                      (let ((__tmp259828
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main259517%_
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
                        (##write __tmp259828))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts259249%_
                  (lambda (_%gerbil-libdir259513%_)
                    (let ((__tmp259829
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir259513%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp259829 read))))
                 (_%replace-extension259250%_
                  (lambda (_%path259510%_ _%ext259511%_)
                    (string-append
                     (path-strip-extension _%path259510%_)
                     _%ext259511%_)))
                 (_%replace-extension-with-c259251%_
                  (lambda (_%path259508%_)
                    (_%replace-extension259250%_ _%path259508%_ '".c")))
                 (_%replace-extension-with-object259252%_
                  (lambda (_%path259506%_)
                    (_%replace-extension259250%_
                     _%path259506%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?259253%_
                  (lambda (_%ctx259504%_)
                    (if (_%exclude-module?259255%_ _%ctx259504%_)
                        '#f
                        (not (_%libgerbil-module?259254%_ _%ctx259504%_)))))
                 (_%libgerbil-module?259254%_
                  (lambda (_%ctx259497%_)
                    (let ((_%id-str259499%_
                           (symbol->string
                            (##structure-ref
                             _%ctx259497%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?259255%_ _%id-str259499%_)
                          '#f
                          (let ((_%$e259501%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str259499%_))))
                            (if _%$e259501%_
                                _%$e259501%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str259499%_))))))))
                 (_%exclude-module?259255%_
                  (lambda (_%ctx-or-str259493%_)
                    (let ((_%str259495%_
                           (if (string? _%ctx-or-str259493%_)
                               _%ctx-or-str259493%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str259493%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str259495%_))))
                 (_%not-file-empty?259256%_
                  (lambda (_%path259491%_)
                    (not (gxc#file-empty? _%path259491%_))))
                 (_%fold-libgerbil-runtime-scm259257%_
                  (lambda (_%gerbil-staticdir259484%_ _%libgerbil-scm259485%_)
                    (let ((_%gerbil-runtime-scm259489%_
                           (let ((__tmp259830
                                  (lambda (_%rtm259487%_)
                                    (path-expand
                                     (let ((__tmp259831
                                            (let ((__tmp259832
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm259487%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp259832
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp259831 '".scm"))
                                     _%gerbil-staticdir259484%_))))
                             (declare (not safe))
                             (##map __tmp259830 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates259258%_
                       (append _%gerbil-runtime-scm259489%_
                               _%libgerbil-scm259485%_)))))
                 (_%remove-duplicates259258%_
                  (lambda (_%strlst259444%_)
                    (let _%loop259446%_ ((_%rest259448%_ _%strlst259444%_)
                                         (_%result259449%_ '()))
                      (let* ((_%rest259450259458%_ _%rest259448%_)
                             (_%else259452259466%_
                              (lambda () (reverse! _%result259449%_)))
                             (_%K259454259472%_
                              (lambda (_%rest259469%_ _%path259470%_)
                                (if (member _%path259470%_ _%result259449%_)
                                    (_%loop259446%_
                                     _%rest259469%_
                                     _%result259449%_)
                                    (_%loop259446%_
                                     _%rest259469%_
                                     (cons _%path259470%_
                                           _%result259449%_))))))
                        (if (pair? _%rest259450259458%_)
                            (let ((_%hd259455259475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest259450259458%_)))
                                  (_%tl259456259477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest259450259458%_))))
                              (let* ((_%path259480%_ _%hd259455259475%_)
                                     (_%rest259482%_ _%tl259456259477%_))
                                (_%K259454259472%_
                                 _%rest259482%_
                                 _%path259480%_)))
                            (_%else259452259466%_))))))
                 (_%compile-stub259259%_
                  (lambda (_%output-scm259266%_ _%output-bin259267%_)
                    (let* ((_%gerbil-home259269%_
                            (let ((__tmp259833
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp259833)))
                           (_%gerbil-libdir259271%_
                            (path-expand '"lib" _%gerbil-home259269%_))
                           (_%gerbil-staticdir259273%_
                            (path-expand '"static" _%gerbil-libdir259271%_))
                           (_%deps259275%_
                            (gxc#find-runtime-module-deps _%ctx259245%_))
                           (_%libgerbil-deps259277%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?259254%_
                               _%deps259275%_)))
                           (_%libgerbil-scm259279%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps259277%_)))
                           (_%libgerbil-scm259281%_
                            (_%fold-libgerbil-runtime-scm259257%_
                             _%gerbil-staticdir259273%_
                             _%libgerbil-scm259279%_))
                           (_%libgerbil-c259283%_
                            (map _%replace-extension-with-c259251%_
                                 _%libgerbil-scm259281%_))
                           (_%libgerbil-o259285%_
                            (map _%replace-extension-with-object259252%_
                                 _%libgerbil-scm259281%_))
                           (_%src-deps259287%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?259253%_
                               _%deps259275%_)))
                           (_%src-deps-scm259289%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps259287%_)))
                           (_%src-deps-scm259291%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?259256%_
                               _%src-deps-scm259289%_)))
                           (_%src-deps-scm259293%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm259291%_)))
                           (_%src-deps-c259295%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c259251%_
                                     _%src-deps-scm259293%_)))
                           (_%src-deps-o259297%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object259252%_
                                     _%src-deps-scm259293%_)))
                           (_%src-bin-scm259299%_
                            (gxc#find-static-module-file _%ctx259245%_))
                           (_%src-bin-scm259301%_
                            (path-expand _%src-bin-scm259299%_))
                           (_%src-bin-c259303%_
                            (_%replace-extension-with-c259251%_
                             _%src-bin-scm259301%_))
                           (_%src-bin-o259305%_
                            (_%replace-extension-with-object259252%_
                             _%src-bin-scm259301%_))
                           (_%output-bin259307%_
                            (path-expand _%output-bin259267%_))
                           (_%output-scm259309%_
                            (path-expand _%output-scm259266%_))
                           (_%output-c259311%_
                            (_%replace-extension-with-c259251%_
                             _%output-scm259309%_))
                           (_%output-o259313%_
                            (_%replace-extension-with-object259252%_
                             _%output-scm259309%_))
                           (_%output_-c259315%_
                            (_%replace-extension259250%_
                             _%output-scm259309%_
                             '"_.c"))
                           (_%output_-o259317%_
                            (_%replace-extension259250%_
                             _%output-scm259309%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts259319%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259321%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259323%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir259273%_))
                           (_%output-ld-opts259325%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts259327%_
                            (_%get-libgerbil-ld-opts259249%_
                             _%gerbil-libdir259271%_))
                           (_%rpath259329%_
                            (gxc#gerbil-rpath _%gerbil-libdir259271%_))
                           (_%builtin-modules259333%_
                            (_%remove-duplicates259258%_
                             (let ((__tmp259834
                                    (let ((__tmp259836
                                           (lambda (_%mod259331%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod259331%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp259835
                                           (cons _%ctx259245%_
                                                 _%deps259275%_)))
                                      (declare (not safe))
                                      (##map __tmp259836 __tmp259835))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp259834)))))
                      (letrec ((_%compile-obj259336%_
                                (lambda (_%scm-path259343%_ _%c-path259344%_)
                                  (let* ((_%o-path259346%_
                                          (_%replace-extension259250%_
                                           _%c-path259344%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock259348%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path259346%_
                                             '".lock")))
                                         (_%locked259350%_ '#f)
                                         (_%unlock259353%_
                                          (lambda ()
                                            (close-port _%locked259350%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock259348%_)))))
                                    (let _%retry259356%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock259348%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry259356%_))
                                          (begin
                                            (set! _%locked259350%_
                                                  (let* ((_%handler259359%_
                                                          false)
                                                         (_%thunk259363%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock259348%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler259368%_ _%handler259359%_)
                 (_%thunk259424%_ _%thunk259363%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler259368%_
                                                     _%thunk259424%_)))
                                            (if _%locked259350%_
                                                '#!void
                                                (_%retry259356%_)))))
                                    (let ((__tmp259838
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path259346%_)))
                                                     (not _%scm-path259343%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path259343%_
                                                        _%o-path259346%_)))
                                                 (let ((_%gsc-cc-opts259441%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp259839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp259840 (cons _%c-path259344%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp259840
                            _%gsc-static-opts259323%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259839 _%gsc-cc-opts259441%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp259837
                                           (lambda () (_%unlock259353%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp259838
                                       __tmp259837))))))
                        (let ((__tmp259841
                               (lambda ()
                                 (let ((__tmp259842
                                        (path-directory _%output-bin259307%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp259842)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp259841))
                        (gxc#with-output-to-scheme-file
                         _%output-scm259309%_
                         (lambda ()
                           (_%generate-stub259248%_
                            _%builtin-modules259333%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it259341%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp259843
                                                   (let ((__tmp259844
                                                          (let ((__tmp259845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm259301%_
                               (cons _%output-scm259309%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259845 _%src-deps-scm259293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp259844
                                                      _%libgerbil-c259283%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp259843
                                               _%gsc-link-opts259319%_))))
                                     (for-each
                                      _%compile-obj259336%_
                                      (let ((__tmp259846
                                             (cons _%src-bin-scm259301%_
                                                   (cons _%output-scm259309%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp259846
                                         _%src-deps-scm259293%_))
                                      (let ((__tmp259847
                                             (cons _%src-bin-c259303%_
                                                   (cons _%output-c259311%_
                                                         (cons _%output_-c259315%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp259847
                                         _%src-deps-c259295%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin259307%_
                                                        (let ((__tmp259848
                                                               (cons _%src-bin-o259305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o259313%_
                                   (cons _%output_-o259317%_
                                         (let ((__tmp259849
                                                (let ((__tmp259850
                                                       (let ((__tmp259852
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir259271%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts259327%_))))
                     (__tmp259851
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath259329%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp259852 __tmp259851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp259850
                                                   _%output-ld-opts259325%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp259849
                                            _%libgerbil-o259285%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp259848 _%src-deps-o259297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp259853
                                            (cons _%output-c259311%_
                                                  (cons _%output_-c259315%_
                                                        (cons _%output-o259313%_
                                                              (cons _%output_-o259317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp259853)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it259341%_))
                                  (_%compile-it259341%_)))
                            '#!void))))))
          (let* ((_%output-bin259261%_
                  (gxc#compile-exe-output-file _%ctx259245%_ _%opts259246%_))
                 (_%output-scm259263%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259261%_ '"__exe.scm"))))
            (_%compile-stub259259%_
             _%output-scm259263%_
             _%output-bin259261%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx259067%_ _%opts259068%_)
        (letrec ((_%reset-declare259070%_
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
                 (_%generate-stub259071%_
                  (lambda (_%deps259236%_)
                    (let ((_%mod-main259238%_
                           (gxc#find-runtime-symbol _%ctx259067%_ 'main))
                          (_%reset-decl259239%_ (_%reset-declare259070%_))
                          (_%user-decl259240%_ (_%user-declare259072%_)))
                      (for-each
                       (lambda (_%dep259242%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl259239%_))
                         (newline)
                         (if _%user-decl259240%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl259240%_))
                               (newline))
                             '#!void)
                         (let ((__tmp259854
                                (cons 'include (cons _%dep259242%_ '()))))
                           (declare (not safe))
                           (##write __tmp259854))
                         (newline))
                       _%deps259236%_)
                      (let ((__tmp259855
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main259238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp259855))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare259072%_
                  (lambda ()
                    (let* ((_%gsc-opts259141%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts259068%_)))
                           (_%gsc-prelude259143%_
                            (if _%gsc-opts259141%_
                                (member '"-prelude" _%gsc-opts259141%_)
                                '#f))
                           (_%gsc-prelude259145%_
                            (if _%gsc-prelude259143%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude259143%_)))
                                '#f)))
                      (let _%lp259148%_ ((_%rest259150%_
                                          (cons _%gsc-prelude259145%_ '()))
                                         (_%user-decls259151%_ '()))
                        (let* ((_%rest259152259160%_ _%rest259150%_)
                               (_%else259154259168%_
                                (lambda ()
                                  (if (null? _%user-decls259151%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls259151%_)))))
                               (_%K259156259224%_
                                (lambda (_%rest259171%_ _%expr259172%_)
                                  (let* ((_%expr259173259185%_ _%expr259172%_)
                                         (_%else259176259193%_
                                          (lambda ()
                                            (_%lp259148%_
                                             _%rest259171%_
                                             _%user-decls259151%_))))
                                    (let ((_%K259181259214%_
                                           (lambda (_%decls259212%_)
                                             (_%lp259148%_
                                              _%rest259171%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls259151%_
                                                 _%decls259212%_)))))
                                          (_%K259178259199%_
                                           (lambda (_%exprs259197%_)
                                             (_%lp259148%_
                                              (append _%exprs259197%_
                                                      _%rest259171%_)
                                              _%user-decls259151%_))))
                                      (if (pair? _%expr259173259185%_)
                                          (let ((_%tl259183259219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr259173259185%_)))
                                                (_%hd259182259217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr259173259185%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd259182259217%_
                                                         'declare))
                                                (let ((_%decls259222%_
                                                       _%tl259183259219%_))
                                                  (_%K259181259214%_
                                                   _%decls259222%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd259182259217%_
                                                             'begin))
                                                    (let ((_%exprs259207%_
                                                           _%tl259183259219%_))
                                                      (_%K259178259199%_
                                                       _%exprs259207%_))
                                                    (_%else259176259193%_))))
                                          (_%else259176259193%_)))))))
                          (if (pair? _%rest259152259160%_)
                              (let ((_%hd259157259227%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest259152259160%_)))
                                    (_%tl259158259229%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest259152259160%_))))
                                (let* ((_%expr259232%_ _%hd259157259227%_)
                                       (_%rest259234%_ _%tl259158259229%_))
                                  (_%K259156259224%_
                                   _%rest259234%_
                                   _%expr259232%_)))
                              (_%else259154259168%_)))))))
                 (_%compile-stub259073%_
                  (lambda (_%output-scm259080%_ _%output-bin259081%_)
                    (let* ((_%gerbil-home259083%_
                            (let ((__tmp259856
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp259856)))
                           (_%gerbil-libdir259085%_
                            (path-expand '"lib" _%gerbil-home259083%_))
                           (_%runtime259087%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp259089%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home259083%_))
                           (_%include-gambit-sharp259091%_
                            (gxc#include-source _%gambit-sharp259089%_))
                           (_%bin-scm259093%_
                            (gxc#find-static-module-file _%ctx259067%_))
                           (_%deps259095%_
                            (gxc#find-runtime-module-deps _%ctx259067%_))
                           (_%deps259097%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps259095%_)))
                           (_%deps259102%_
                            (let ((__tmp259857
                                   (lambda (_%$obj259099%_)
                                     (not (gxc#file-empty? _%$obj259099%_)))))
                              (declare (not safe))
                              (##filter __tmp259857 _%deps259097%_)))
                           (_%deps259106%_
                            (let ((__tmp259858
                                   (lambda (_%f259104%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f259104%_
                                             _%runtime259087%_))))))
                              (declare (not safe))
                              (##filter __tmp259858 _%deps259102%_)))
                           (_%output-base259108%_
                            (let ((__tmp259859
                                   (path-strip-extension
                                    _%output-scm259080%_)))
                              (declare (not safe))
                              (##string-append __tmp259859)))
                           (_%output-c259110%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259108%_ '".c")))
                           (_%output-o259112%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base259108%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_259114%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base259108%_ '"_.c")))
                           (_%output-o_259116%_
                            (let ((__tmp259860
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base259108%_
                               __tmp259860)))
                           (_%gsc-link-opts259118%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts259120%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts259122%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir259085%_)))
                           (_%output-ld-opts259124%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros259126%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp259091%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp259091%_
                                            '()))))
                           (_%gsc-link-opts259128%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts259118%_
                               _%gsc-gx-macros259126%_)))
                           (_%rpath259130%_
                            (gxc#gerbil-rpath _%gerbil-libdir259085%_))
                           (_%default-ld-options259132%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp259861
                             (lambda ()
                               (let ((__tmp259862
                                      (path-directory _%output-bin259081%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp259862)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp259861))
                      (gxc#with-output-to-scheme-file
                       _%output-scm259080%_
                       (lambda ()
                         (_%generate-stub259071%_
                          (let ((__tmp259863
                                 (let ((__tmp259864
                                        (cons _%bin-scm259093%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp259864
                                    _%deps259106%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp259863 _%runtime259087%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it259138%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_259114%_
                                                      (let ((__tmp259865
                                                             (cons _%output-scm259080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp259865 _%gsc-link-opts259128%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp259866
                                                 (let ((__tmp259867
                                                        (cons _%output-c259110%_
                                                              (cons _%output-c_259114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp259867
                                                    _%gsc-static-opts259122%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp259866
                                             _%gsc-cc-opts259120%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin259081%_
                                                      (cons _%output-o259112%_
                                                            (cons _%output-o_259116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp259868
                                 (let ((__tmp259870
                                        (cons '"-L"
                                              (cons _%gerbil-libdir259085%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options259132%_))))
                                       (__tmp259869
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath259130%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp259870 __tmp259869))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp259868
                             _%output-ld-opts259124%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it259138%_))
                                (_%compile-it259138%_)))
                          '#!void)))))
          (let* ((_%output-bin259075%_
                  (gxc#compile-exe-output-file _%ctx259067%_ _%opts259068%_))
                 (_%output-scm259077%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin259075%_ '"__exe.scm"))))
            (_%compile-stub259073%_
             _%output-scm259077%_
             _%output-bin259075%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx259016%_ _%id259017%_)
        (let ((_%$e259063%_
               (let ((__tmp259872
                      (lambda (_%e259018259020%_)
                        (let* ((_%e259018259022259032%_ _%e259018259020%_)
                               (_%else259024259040%_ (lambda () '#f))
                               (_%K259026259044%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e259018259022259032%_
                                 'gx#module-export::t))
                              (let* ((_%e259027259047%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259018259022259032%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e259028259050%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259018259022259032%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e259029259053%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e259018259022259032%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e259029259053%_ '0))
                                    (let ((_%e259030259056%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e259018259022259032%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g259058259060%_)
                                             (eq? _%g259058259060%_
                                                  _%id259017%_))
                                           _%e259030259056%_)
                                          (_%K259026259044%_)
                                          (_%else259024259040%_)))
                                    (_%else259024259040%_)))
                              (_%else259024259040%_)))))
                     (__tmp259871
                      (##structure-ref
                       _%ctx259016%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp259872 __tmp259871))))
          (if _%$e259063%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e259063%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx259007%_ _%id259008%_)
        (let ((_%$e259010%_
               (gxc#find-export-binding _%ctx259007%_ _%id259008%_)))
          (if _%$e259010%_
              ((lambda (_%bind259013%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind259013%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id259008%_)))
                 (##structure-ref _%bind259013%_ '1 gx#binding::t '#f))
               _%$e259010%_)
              (let ((__tmp259873
                     (##structure-ref
                      _%ctx259007%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp259873
                 _%id259008%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx258873%_)
        (letrec* ((_%ht258875%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template258876%_
                   (lambda (_%in258952%_ _%phi258953%_)
                     (let ((_%iphi258955%_
                            (fx+ _%phi258953%_
                                 (##direct-structure-ref
                                  _%in258952%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports258956%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in258952%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp258958%_ ((_%rest258960%_ _%imports258956%_)
                                          (_%r258961%_ '()))
                         (let* ((_%rest258962258970%_ _%rest258960%_)
                                (_%else258964258978%_ (lambda () _%r258961%_))
                                (_%K258966258995%_
                                 (lambda (_%rest258981%_ _%in258982%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in258982%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi258955%_))
                                           (_%lp258958%_
                                            _%rest258981%_
                                            (cons _%in258982%_ _%r258961%_))
                                           (_%lp258958%_
                                            _%rest258981%_
                                            _%r258961%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in258982%_
                                              'gx#module-import::t))
                                           (let ((_%iphi258986%_
                                                  (fx+ _%phi258953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in258982%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi258986%_))
                                                 (_%lp258958%_
                                                  _%rest258981%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in258982%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r258961%_))
                                                 (_%lp258958%_
                                                  _%rest258981%_
                                                  _%r258961%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in258982%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi258989%_
                                                      (fx+ _%iphi258955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in258982%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi258989%_))
                                                     (_%lp258958%_
                                                      _%rest258981%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in258982%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r258961%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi258989%_))
                                                         (_%lp258958%_
                                                          _%rest258981%_
                                                          (let ((__tmp259874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template258876%_
                          _%in258982%_
                          _%iphi258955%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r258961%_ __tmp259874)))
                 (_%lp258958%_ _%rest258981%_ _%r258961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp258958%_
                                                _%rest258981%_
                                                _%r258961%_)))))))
                           (if (pair? _%rest258962258970%_)
                               (let ((_%hd258967258998%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest258962258970%_)))
                                     (_%tl258968259000%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest258962258970%_))))
                                 (let* ((_%in259003%_ _%hd258967258998%_)
                                        (_%rest259005%_ _%tl258968259000%_))
                                   (_%K258966258995%_
                                    _%rest259005%_
                                    _%in259003%_)))
                               (_%else258964258978%_)))))))
                  (_%find-deps258877%_
                   (lambda (_%rest258885%_ _%deps258886%_)
                     (let* ((_%rest258887258895%_ _%rest258885%_)
                            (_%else258889258903%_ (lambda () _%deps258886%_))
                            (_%K258891258940%_
                             (lambda (_%rest258906%_ _%hd258907%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd258907%_
                                      'gx#module-context::t))
                                   (let ((_%id258910%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd258907%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports258911%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd258907%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht258875%_
                                            _%id258910%_))
                                         (_%find-deps258877%_
                                          _%rest258906%_
                                          _%deps258886%_)
                                         (let ((_%$e258914%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd258907%_))))
                                           (if _%$e258914%_
                                               ((lambda (_%pre258917%_)
                                                  (let ((_%xdeps258919%_
                                                         (_%find-deps258877%_
                                                          (cons _%pre258917%_
                                                                _%imports258911%_)
                                                          _%deps258886%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht258875%_
                                                       _%id258910%_
                                                       _%hd258907%_))
                                                    (_%find-deps258877%_
                                                     _%rest258906%_
                                                     (cons _%hd258907%_
                                                           _%xdeps258919%_))))
                                                _%$e258914%_)
                                               (let ((_%xdeps258922%_
                                                      (_%find-deps258877%_
                                                       _%imports258911%_
                                                       _%deps258886%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht258875%_
                                                    _%id258910%_
                                                    _%hd258907%_))
                                                 (_%find-deps258877%_
                                                  _%rest258906%_
                                                  (cons _%hd258907%_
                                                        _%xdeps258922%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd258907%_
                                          'gx#prelude-context::t))
                                       (let ((_%id258925%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd258907%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht258875%_
                                                _%id258925%_))
                                             (_%find-deps258877%_
                                              _%rest258906%_
                                              _%deps258886%_)
                                             (let ((_%xdeps258929%_
                                                    (_%find-deps258877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd258907%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps258886%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht258875%_
                                                      _%id258925%_))
                                                   (_%find-deps258877%_
                                                    _%rest258906%_
                                                    _%xdeps258929%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht258875%_
                                                        _%id258925%_
                                                        _%hd258907%_))
                                                     (_%find-deps258877%_
                                                      _%rest258906%_
                                                      (cons _%hd258907%_
                                                            _%xdeps258929%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd258907%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd258907%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps258877%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd258907%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest258906%_)
                                                _%deps258886%_)
                                               (_%find-deps258877%_
                                                _%rest258906%_
                                                _%deps258886%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd258907%_
                                                  'gx#module-export::t))
                                               (_%find-deps258877%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd258907%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest258906%_)
                                                _%deps258886%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd258907%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd258907%_ '2 '#f '#f)))
               (_%find-deps258877%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd258907%_ '1 '#f '#f))
                      _%rest258906%_)
                _%deps258886%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd258907%_ '2 '#f '#f)))
                   (let ((_%xdeps258936%_
                          (_%import-set-template258876%_ _%hd258907%_ '0)))
                     (_%find-deps258877%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest258906%_ _%xdeps258936%_))
                      _%deps258886%_))
                   (_%find-deps258877%_ _%rest258906%_ _%deps258886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd258907%_))))))))))
                       (if (pair? _%rest258887258895%_)
                           (let ((_%hd258892258943%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest258887258895%_)))
                                 (_%tl258893258945%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest258887258895%_))))
                             (let* ((_%hd258948%_ _%hd258892258943%_)
                                    (_%rest258950%_ _%tl258893258945%_))
                               (_%K258891258940%_
                                _%rest258950%_
                                _%hd258948%_)))
                           (_%else258889258903%_))))))
          (let ((__tmp259875
                 (filter gx#expander-context-id
                         (_%find-deps258877%_
                          (let ((_%$e258879%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx258873%_))))
                            (if _%$e258879%_
                                ((lambda (_%pre258882%_)
                                   (cons _%pre258882%_
                                         (##structure-ref
                                          _%ctx258873%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e258879%_)
                                (##structure-ref
                                 _%ctx258873%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp259875)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx258803%_)
        (let* ((_%context-id258805%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx258803%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx258803%_ '1 '#f '#f))
                    (string->symbol _%ctx258803%_)))
               (_%scm258807%_
                (let ((__tmp259876
                       (gxc#static-module-name _%context-id258805%_)))
                  (declare (not safe))
                  (##string-append __tmp259876 '".scm")))
               (_%dirs258809%_ (let () (declare (not safe)) (load-path)))
               (_%dirs258815%_
                (let ((_%user-libpath258811%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath258811%_
                      (let ((_%user-libpath258813%_
                             (path-expand '"lib" _%user-libpath258811%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath258813%_ _%dirs258809%_))
                            _%dirs258809%_
                            (cons _%user-libpath258813%_ _%dirs258809%_)))
                      _%dirs258809%_)))
               (_%dirs258825%_
                (let ((_%$e258817%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e258817%_
                      ((lambda (_%g258819258821%_)
                         (cons _%g258819258821%_ _%dirs258815%_))
                       _%$e258817%_)
                      _%dirs258815%_)))
               (_%dirs258831%_
                (let ((__tmp259877
                       (lambda (_%g258826258828%_)
                         (path-expand '"static" _%g258826258828%_))))
                  (declare (not safe))
                  (##map __tmp259877 _%dirs258825%_))))
          (let _%lp258834%_ ((_%rest258836%_ _%dirs258831%_))
            (let* ((_%rest258837258845%_ _%rest258836%_)
                   (_%else258839258853%_
                    (lambda ()
                      (let ((__tmp259878
                             (##structure-ref
                              _%ctx258803%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp259878
                         _%scm258807%_))))
                   (_%K258841258861%_
                    (lambda (_%rest258856%_ _%dir258857%_)
                      (let ((_%path258859%_
                             (path-expand _%scm258807%_ _%dir258857%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path258859%_))
                            _%path258859%_
                            (_%lp258834%_ _%rest258856%_))))))
              (if (pair? _%rest258837258845%_)
                  (let ((_%hd258842258864%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258837258845%_)))
                        (_%tl258843258866%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258837258845%_))))
                    (let* ((_%dir258869%_ _%hd258842258864%_)
                           (_%rest258871%_ _%tl258843258866%_))
                      (_%K258841258861%_ _%rest258871%_ _%dir258869%_)))
                  (_%else258839258853%_)))))))
    (define gxc#file-empty?
      (lambda (_%path258801%_)
        (zero? (let ((__tmp259879 (file-info _%path258801%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp259879)))))
    (define gxc#compile-top-module
      (lambda (_%ctx258792%_)
        (let ((__tmp259880
               (lambda ()
                 (let ((__tmp259881
                        (lambda ()
                          (let ((__tmp259882
                                 (lambda ()
                                   (let ((__tmp259884
                                          (lambda ()
                                            (let ((__tmp259886
                                                   (lambda ()
                                                     (let ((__tmp259888
                                                            (lambda ()
                                                              (let ((__tmp259889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx258792%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp259889))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp259890
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx258792%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp259890))
                          '#!void)
                      (gxc#collect-bindings _%ctx258792%_)
                      (gxc#compile-runtime-code _%ctx258792%_)
                      (gxc#compile-meta-code _%ctx258792%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx258792%_)
                          '#!void)))
                   (__tmp259887
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
                __tmp259888
                gxc#current-compile-runtime-names
                __tmp259887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp259885
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp259886
                                               gxc#current-compile-runtime-sections
                                               __tmp259885))))
                                         (__tmp259883
                                          (let ((__obj259781
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj259781))
                                            __obj259781)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp259884
                                      gxc#current-compile-symbol-table
                                      __tmp259883)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp259882
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp259881
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259880
           gx#current-expander-context
           _%ctx258792%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx258790%_)
        (let ((__tmp259891
               (##structure-ref _%ctx258790%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp259891))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx258735%_)
        (letrec ((_%compile1258737%_
                  (lambda (_%ctx258779%_)
                    (let* ((_%code258781%_
                            (##structure-ref
                             _%ctx258779%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm258785%_
                            (let ((_%idstr258783%_
                                   (let ((__tmp259892
                                          (##structure-ref
                                           _%ctx258779%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp259892))))
                              (declare (not safe))
                              (##string-append _%idstr258783%_ '"~0")))
                           (_%rtc?258787%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code258781%_))))
                      (if _%rtc?258787%_
                          (let ((__tmp259893
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp259893
                             _%ctx258779%_
                             _%rtm258785%_))
                          '#!void)
                      (_%generate-runtime-code258739%_
                       _%ctx258779%_
                       _%code258781%_
                       (if _%rtc?258787%_ _%rtm258785%_ '#f)))))
                 (_%context-timestamp258738%_
                  (lambda (_%ctx258777%_)
                    (let ((__tmp259894
                           (let ((__tmp259895
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx258777%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp259895 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp259894))))
                 (_%generate-runtime-code258739%_
                  (lambda (_%ctx258746%_ _%code258747%_ _%rtm258748%_)
                    (let* ((_%runtime-code?258750%_ (if _%rtm258748%_ '#t '#f))
                           (_%lifts258752%_ (box '()))
                           (_%runtime-code258758%_
                            (if _%runtime-code?258750%_
                                (let ((__tmp259896
                                       (lambda ()
                                         (let ((__tmp259897
                                                (lambda ()
                                                  (let ((__tmp259898
                                                         (lambda ()
                                                           (let ((__tmp259900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code258747%_))))
                         (__tmp259899
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp259900
                      gxc#current-compile-marks
                      __tmp259899)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp259898
                                                     gxc#current-compile-lift
                                                     _%lifts258752%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp259897
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp259896
                                   gx#current-expander-context
                                   _%ctx258746%_))
                                '#f))
                           (_%runtime-code258760%_
                            (if _%runtime-code?258750%_
                                (if (null? (unbox _%lifts258752%_))
                                    _%runtime-code258758%_
                                    (cons 'begin
                                          (let ((__tmp259902
                                                 (cons _%runtime-code258758%_
                                                       '()))
                                                (__tmp259901
                                                 (reverse (unbox _%lifts258752%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp259902
                                             __tmp259901))))
                                '#f))
                           (_%runtime-code258762%_
                            (if _%runtime-code?258750%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp258738%_
                                                         _%ctx258746%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code258760%_ '())))
                                '#f))
                           (_%loader-code258765%_
                            (let ((__tmp259903
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code258747%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp259903
                               gx#current-expander-context
                               _%ctx258746%_)))
                           (_%loader-code258767%_
                            (cons 'begin
                                  (cons _%loader-code258765%_
                                        (cons (if _%runtime-code?258750%_
                                                  (cons 'load-module
                                                        (cons _%rtm258748%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0258769%_
                            (gxc#compile-output-file _%ctx258746%_ '0 '".scm"))
                           (_%scmrt258771%_
                            (gxc#compile-output-file
                             _%ctx258746%_
                             '#f
                             '".scm"))
                           (_%scms258773%_
                            (gxc#compile-static-output-file _%ctx258746%_)))
                      (if _%runtime-code?258750%_
                          (gxc#compile-scm-file__0
                           _%scm0258769%_
                           _%runtime-code258762%_)
                          '#!void)
                      (let ((__tmp259904
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt258771%_
                                _%loader-code258767%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp259904
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms258773%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms258773%_))
                          '#!void)
                      (if _%runtime-code?258750%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0258769%_ _%scms258773%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms258773%_ void)))))))
          (let* ((_%all-modules258741%_
                  (cons _%ctx258735%_ (gxc#lift-nested-modules _%ctx258735%_)))
                 (__tmp259905
                  (lambda (_%ctx258743%_)
                    (let ((__tmp259906
                           (lambda () (_%compile1258737%_ _%ctx258743%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp259906
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp259905 _%all-modules258741%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx258634%_)
        (letrec ((_%compile-ssi258636%_
                  (lambda (_%code258703%_)
                    (let* ((_%path258705%_
                            (gxc#compile-output-file
                             _%ctx258634%_
                             '#f
                             '".ssi"))
                           (_%prelude258717%_
                            (let* ((_%super258707%_
                                    (##structure-ref
                                     _%ctx258634%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e258709%_
                                    (##structure-ref
                                     _%super258707%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e258709%_
                                  ((lambda (_%g258711258713%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g258711258713%_)))
                                   _%$e258709%_)
                                  ':<root>)))
                           (_%ns258719%_
                            (##structure-ref
                             _%ctx258634%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr258721%_
                            (symbol->string
                             (##structure-ref
                              _%ctx258634%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg258729%_
                            (let ((_%$e258723%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr258721%_ '#\/))))
                              (if _%$e258723%_
                                  ((lambda (_%x258726%_)
                                     (let ((__tmp259907
                                            (substring
                                             _%idstr258721%_
                                             '0
                                             _%x258726%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp259907)))
                                   _%$e258723%_)
                                  '#f)))
                           (_%rt258731%_
                            (let ((__tmp259908
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp259908 _%ctx258634%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path258705%_))
                      (gxc#with-output-to-scheme-file
                       _%path258705%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude258717%_))
                         (if _%pkg258729%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg258729%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns258719%_))
                         (newline)
                         (pretty-print _%code258703%_)
                         (if _%rt258731%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt258731%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi258637%_
                  (lambda (_%part258642%_)
                    (let* ((_%part258643258656%_ _%part258642%_)
                           (_%E258645258660%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part258643258656%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K258646258672%_
                            (lambda (_%code258663%_
                                     _%n258664%_
                                     _%phi258665%_
                                     _%phi-ctx258666%_)
                              (let ((_%code258670%_
                                     (let ((__tmp259909
                                            (lambda ()
                                              (let ((__tmp259910
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code258663%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp259910
                                                 gx#current-expander-phi
                                                 _%phi258665%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp259909
                                        gx#current-expander-context
                                        _%phi-ctx258666%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx258634%_
                                  _%n258664%_
                                  '".scm")
                                 _%code258670%_
                                 '#t)))))
                      (if (pair? _%part258643258656%_)
                          (let ((_%hd258647258675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part258643258656%_)))
                                (_%tl258648258677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part258643258656%_))))
                            (let ((_%phi-ctx258680%_ _%hd258647258675%_))
                              (if (pair? _%tl258648258677%_)
                                  (let ((_%hd258649258682%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258648258677%_)))
                                        (_%tl258650258684%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258648258677%_))))
                                    (let ((_%phi258687%_ _%hd258649258682%_))
                                      (if (pair? _%tl258650258684%_)
                                          (let ((_%hd258651258689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl258650258684%_)))
                                                (_%tl258652258691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl258650258684%_))))
                                            (let ((_%n258694%_
                                                   _%hd258651258689%_))
                                              (if (pair? _%tl258652258691%_)
                                                  (let ((_%hd258653258696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl258652258691%_)))
                                                        (_%tl258654258698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl258652258691%_))))
                                                    (let ((_%code258701%_
                                                           _%hd258653258696%_))
                                                      (if (null? _%tl258654258698%_)
                                                          (_%K258646258672%_
                                                           _%code258701%_
                                                           _%n258694%_
                                                           _%phi258687%_
                                                           _%phi-ctx258680%_)
                                                          (_%E258645258660%_))))
                                                  (_%E258645258660%_))))
                                          (_%E258645258660%_))))
                                  (_%E258645258660%_))))
                          (_%E258645258660%_))))))
          (let ((_g259911_ (gxc#generate-meta-code _%ctx258634%_)))
            (begin
              (let ((_g259912_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g259911_)
                           (##values-length _g259911_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g259912_ 2)))
                    (error "Context expects 2 values" _g259912_)))
              (let ((_%ssi-code258639%_
                     (let () (declare (not safe)) (##values-ref _g259911_ 0)))
                    (_%phi-code258640%_
                     (let () (declare (not safe)) (##values-ref _g259911_ 1))))
                (begin
                  (_%compile-ssi258636%_ _%ssi-code258639%_)
                  (for-each _%compile-phi258637%_ _%phi-code258640%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx258616%_)
        (let* ((_%path258618%_
                (gxc#compile-output-file _%ctx258616%_ '#f '".ssxi.ss"))
               (_%code258620%_
                (let ((__tmp259913
                       (##structure-ref
                        _%ctx258616%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp259913)))
               (_%idstr258622%_
                (symbol->string
                 (##structure-ref
                  _%ctx258616%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg258630%_
                (let ((_%$e258624%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr258622%_ '#\/))))
                  (if _%$e258624%_
                      ((lambda (_%x258627%_)
                         (let ((__tmp259914
                                (substring _%idstr258622%_ '0 _%x258627%_)))
                           (declare (not safe))
                           (##string->symbol __tmp259914)))
                       _%$e258624%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path258618%_))
          (gxc#with-output-to-scheme-file
           _%path258618%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg258630%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg258630%_))
                 '#!void)
             (newline)
             (pretty-print _%code258620%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx258609%_)
        (let* ((_%state258611%_
                (let ((__obj259782
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj259782 _%ctx258609%_))
                  __obj259782))
               (_%ssi-code258613%_
                (let ((__tmp259915
                       (##structure-ref
                        _%ctx258609%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state258611%_
                   __tmp259915))))
          (values _%ssi-code258613%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state258611%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx258601%_)
        (let* ((_%lifts258603%_ (box '()))
               (__tmp259916
                (lambda ()
                  (let ((__tmp259918
                         (lambda ()
                           (let ((_%code258607%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx258601%_))))
                             (if (null? (unbox _%lifts258603%_))
                                 _%code258607%_
                                 (cons 'begin
                                       (let ((__tmp259920
                                              (cons _%code258607%_ '()))
                                             (__tmp259919
                                              (reverse (unbox _%lifts258603%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp259920
                                          __tmp259919)))))))
                        (__tmp259917
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp259918
                     gxc#current-compile-marks
                     __tmp259917)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp259916
           gxc#current-compile-lift
           _%lifts258603%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx258597%_)
        (let ((_%modules258599%_ (box '())))
          (let ((__tmp259921
                 (##structure-ref _%ctx258597%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules258599%_ __tmp259921))
          (reverse (unbox _%modules258599%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path258577%_ _%code258578%_ _%phi?258579%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path258577%_))
        (gxc#with-output-to-scheme-file
         _%path258577%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp259922
                                           (if _%phi?258579%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp259922)))))))
           (pretty-print _%code258578%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it258583%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path258577%_ _%phi?258579%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp259923
                         (cons 'compile-file (cons _%path258577%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it258583%_ __tmp259923))
                  (_%compile-it258583%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path258588%_ _%code258589%_)
        (let ((_%phi?258591%_ '#f))
          (gxc#compile-scm-file__%
           _%path258588%_
           _%code258589%_
           _%phi?258591%_))))
    (define gxc#compile-scm-file
      (lambda _g259924_
        (let ((_g259925_ (let () (declare (not safe)) (##length _g259924_))))
          (cond ((let () (declare (not safe)) (##fx= _g259925_ 2))
                 (apply gxc#compile-scm-file__0 _g259924_))
                ((let () (declare (not safe)) (##fx= _g259925_ 3))
                 (apply gxc#compile-scm-file__% _g259924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g259924_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?258478%_)
        (let _%lp258480%_ ((_%rest258482%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258483%_ '()))
          (let* ((_%rest258484258504%_ _%rest258482%_)
                 (_%else258488258512%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts258483%_)))
                        (reverse _%opts258483%_)))))
            (let ((_%K258498258555%_
                   (lambda (_%rest258553%_)
                     (_%lp258480%_ _%rest258553%_ _%opts258483%_)))
                  (_%K258493258537%_
                   (lambda (_%rest258535%_)
                     (_%lp258480%_ _%rest258535%_ _%opts258483%_)))
                  (_%K258490258519%_
                   (lambda (_%rest258516%_ _%opt258517%_)
                     (_%lp258480%_
                      _%rest258516%_
                      (cons _%opt258517%_ _%opts258483%_)))))
              (if (pair? _%rest258484258504%_)
                  (let ((_%tl258500258560%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258484258504%_)))
                        (_%hd258499258558%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258484258504%_))))
                    (if (equal? _%hd258499258558%_ '"-cc-options")
                        (if (pair? _%tl258500258560%_)
                            (let* ((_%tl258502258563%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258500258560%_)))
                                   (_%rest258566%_ _%tl258502258563%_))
                              (_%K258498258555%_ _%rest258566%_))
                            (let ((_%opt258527%_ _%hd258499258558%_)
                                  (_%rest258529%_ _%tl258500258560%_))
                              (_%K258490258519%_
                               _%rest258529%_
                               _%opt258527%_)))
                        (if (equal? _%hd258499258558%_ '"-ld-options")
                            (if (pair? _%tl258500258560%_)
                                (let* ((_%tl258497258545%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl258500258560%_)))
                                       (_%rest258548%_ _%tl258497258545%_))
                                  (_%K258493258537%_ _%rest258548%_))
                                (let ((_%opt258527%_ _%hd258499258558%_)
                                      (_%rest258529%_ _%tl258500258560%_))
                                  (_%K258490258519%_
                                   _%rest258529%_
                                   _%opt258527%_)))
                            (let ((_%opt258527%_ _%hd258499258558%_)
                                  (_%rest258529%_ _%tl258500258560%_))
                              (_%K258490258519%_
                               _%rest258529%_
                               _%opt258527%_)))))
                  (_%else258488258512%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?258572%_ '#f)) (gxc#gsc-link-options__% _%phi?258572%_))))
    (define gxc#gsc-link-options
      (lambda _g259926_
        (let ((_g259927_ (let () (declare (not safe)) (##length _g259926_))))
          (cond ((let () (declare (not safe)) (##fx= _g259927_ 0))
                 (apply gxc#gsc-link-options__0 _g259926_))
                ((let () (declare (not safe)) (##fx= _g259927_ 1))
                 (apply gxc#gsc-link-options__% _g259926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g259926_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords258328%_ _%static?258324258329%_ _%phi?258330%_)
        (let ((_%static?258332%_
               (if (eq? _%static?258324258329%_ absent-value)
                   '#f
                   _%static?258324258329%_)))
          (if _%phi?258330%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp258334%_ ((_%rest258336%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258337%_ '()))
                (let* ((_%rest258338258364%_ _%rest258336%_)
                       (_%else258343258372%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts258337%_)))
                              (reverse! _%opts258337%_)))))
                  (let ((_%K258358258435%_
                         (lambda (_%rest258432%_ _%opt258433%_)
                           (if _%static?258332%_
                               (_%lp258334%_
                                _%rest258432%_
                                (cons _%opt258433%_
                                      (cons '"-cc-options" _%opts258337%_)))
                               (_%lp258334%_ _%rest258432%_ _%opts258337%_))))
                        (_%K258353258412%_
                         (lambda (_%rest258409%_ _%opt258410%_)
                           (_%lp258334%_
                            _%rest258409%_
                            (cons _%opt258410%_
                                  (cons '"-cc-options" _%opts258337%_)))))
                        (_%K258348258392%_
                         (lambda (_%rest258390%_)
                           (_%lp258334%_ _%rest258390%_ _%opts258337%_)))
                        (_%K258345258378%_
                         (lambda (_%rest258376%_)
                           (_%lp258334%_ _%rest258376%_ _%opts258337%_))))
                    (if (pair? _%rest258338258364%_)
                        (let ((_%tl258360258440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258338258364%_)))
                              (_%hd258359258438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258338258364%_))))
                          (if (equal? _%hd258359258438%_ '"-cc-options")
                              (if (pair? _%tl258360258440%_)
                                  (let ((_%tl258362258445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258360258440%_)))
                                        (_%hd258361258443%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258360258440%_))))
                                    (if (equal? _%hd258361258443%_ '"-Bstatic")
                                        (let ((_%opt258448%_
                                               _%hd258361258443%_)
                                              (_%rest258450%_
                                               _%tl258362258445%_))
                                          (_%K258358258435%_
                                           _%rest258450%_
                                           _%opt258448%_))
                                        (let ((_%opt258425%_
                                               _%hd258361258443%_)
                                              (_%rest258427%_
                                               _%tl258362258445%_))
                                          (_%K258353258412%_
                                           _%rest258427%_
                                           _%opt258425%_))))
                                  (let ((_%rest258384%_ _%tl258360258440%_))
                                    (_%K258345258378%_ _%rest258384%_)))
                              (if (equal? _%hd258359258438%_ '"-ld-options")
                                  (if (pair? _%tl258360258440%_)
                                      (let* ((_%tl258352258400%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258360258440%_)))
                                             (_%rest258403%_
                                              _%tl258352258400%_))
                                        (_%K258348258392%_ _%rest258403%_))
                                      (let ((_%rest258384%_
                                             _%tl258360258440%_))
                                        (_%K258345258378%_ _%rest258384%_)))
                                  (let ((_%rest258384%_ _%tl258360258440%_))
                                    (_%K258345258378%_ _%rest258384%_)))))
                        (_%else258343258372%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords258455%_ _%static?258324258456%_)
        (let ((_%phi?258458%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords258455%_
           _%static?258324258456%_
           _%phi?258458%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g259928_
        (let ((_g259929_ (let () (declare (not safe)) (##length _g259928_))))
          (cond ((let () (declare (not safe)) (##fx= _g259929_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g259928_))
                ((let () (declare (not safe)) (##fx= _g259929_ 3))
                 (apply gxc#gsc-cc-options__%__% _g259928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g259928_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords258467%_ . _%args258468%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords258467%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258467%_
                  'static:
                  absent-value))
               _%args258468%_)))
    (define gxc#gsc-cc-options
      (lambda _%args258325258474%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args258325258474%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords258174%_ _%static?258170258175%_ _%phi?258176%_)
        (let ((_%static?258178%_
               (if (eq? _%static?258170258175%_ absent-value)
                   '#f
                   _%static?258170258175%_)))
          (if _%phi?258176%_
              '()
              (let _%lp258180%_ ((_%rest258182%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts258183%_ '()))
                (let* ((_%rest258184258210%_ _%rest258182%_)
                       (_%else258189258218%_
                        (lambda () (reverse! _%opts258183%_))))
                  (let ((_%K258204258281%_
                         (lambda (_%rest258278%_ _%opt258279%_)
                           (if _%static?258178%_
                               (_%lp258180%_
                                _%rest258278%_
                                (cons _%opt258279%_
                                      (cons '"-ld-options" _%opts258183%_)))
                               (_%lp258180%_ _%rest258278%_ _%opts258183%_))))
                        (_%K258199258258%_
                         (lambda (_%rest258255%_ _%opt258256%_)
                           (_%lp258180%_
                            _%rest258255%_
                            (cons _%opt258256%_
                                  (cons '"-ld-options" _%opts258183%_)))))
                        (_%K258194258238%_
                         (lambda (_%rest258236%_)
                           (_%lp258180%_ _%rest258236%_ _%opts258183%_)))
                        (_%K258191258224%_
                         (lambda (_%rest258222%_)
                           (_%lp258180%_ _%rest258222%_ _%opts258183%_))))
                    (if (pair? _%rest258184258210%_)
                        (let ((_%tl258206258286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest258184258210%_)))
                              (_%hd258205258284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest258184258210%_))))
                          (if (equal? _%hd258205258284%_ '"-ld-options")
                              (if (pair? _%tl258206258286%_)
                                  (let ((_%tl258208258291%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl258206258286%_)))
                                        (_%hd258207258289%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl258206258286%_))))
                                    (if (equal? _%hd258207258289%_ '"-static")
                                        (let ((_%opt258294%_
                                               _%hd258207258289%_)
                                              (_%rest258296%_
                                               _%tl258208258291%_))
                                          (_%K258204258281%_
                                           _%rest258296%_
                                           _%opt258294%_))
                                        (let ((_%opt258271%_
                                               _%hd258207258289%_)
                                              (_%rest258273%_
                                               _%tl258208258291%_))
                                          (_%K258199258258%_
                                           _%rest258273%_
                                           _%opt258271%_))))
                                  (let ((_%rest258230%_ _%tl258206258286%_))
                                    (_%K258191258224%_ _%rest258230%_)))
                              (if (equal? _%hd258205258284%_ '"-cc-options")
                                  (if (pair? _%tl258206258286%_)
                                      (let* ((_%tl258198258246%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl258206258286%_)))
                                             (_%rest258249%_
                                              _%tl258198258246%_))
                                        (_%K258194258238%_ _%rest258249%_))
                                      (let ((_%rest258230%_
                                             _%tl258206258286%_))
                                        (_%K258191258224%_ _%rest258230%_)))
                                  (let ((_%rest258230%_ _%tl258206258286%_))
                                    (_%K258191258224%_ _%rest258230%_)))))
                        (_%else258189258218%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords258301%_ _%static?258170258302%_)
        (let ((_%phi?258304%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords258301%_
           _%static?258170258302%_
           _%phi?258304%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g259930_
        (let ((_g259931_ (let () (declare (not safe)) (##length _g259930_))))
          (cond ((let () (declare (not safe)) (##fx= _g259931_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g259930_))
                ((let () (declare (not safe)) (##fx= _g259931_ 3))
                 (apply gxc#gsc-ld-options__%__% _g259930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g259930_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords258313%_ . _%args258314%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords258313%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords258313%_
                  'static:
                  absent-value))
               _%args258314%_)))
    (define gxc#gsc-ld-options
      (lambda _%args258171258320%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args258171258320%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir258165%_)
        (let ((_%user-staticdir258167%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir258165%_
                       '" -I "
                       _%user-staticdir258167%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp258077%_ ((_%rest258079%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts258080%_ '()))
          (let* ((_%rest258081258101%_ _%rest258079%_)
                 (_%else258085258109%_ (lambda () _%opts258080%_)))
            (let ((_%K258095258152%_
                   (lambda (_%rest258150%_)
                     (_%lp258077%_ _%rest258150%_ _%opts258080%_)))
                  (_%K258090258130%_
                   (lambda (_%rest258127%_ _%opt258128%_)
                     (_%lp258077%_
                      _%rest258127%_
                      (let ((__tmp259932
                             (let ((__tmp259933
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt258128%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp259933))))
                        (declare (not safe))
                        (##append _%opts258080%_ __tmp259932)))))
                  (_%K258087258115%_
                   (lambda (_%rest258113%_)
                     (_%lp258077%_ _%rest258113%_ _%opts258080%_))))
              (if (pair? _%rest258081258101%_)
                  (let ((_%tl258097258157%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258081258101%_)))
                        (_%hd258096258155%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258081258101%_))))
                    (if (equal? _%hd258096258155%_ '"-cc-options")
                        (if (pair? _%tl258097258157%_)
                            (let* ((_%tl258099258160%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl258097258157%_)))
                                   (_%rest258163%_ _%tl258099258160%_))
                              (_%K258095258152%_ _%rest258163%_))
                            (let ((_%rest258121%_ _%tl258097258157%_))
                              (_%K258087258115%_ _%rest258121%_)))
                        (if (equal? _%hd258096258155%_ '"-ld-options")
                            (if (pair? _%tl258097258157%_)
                                (let ((_%tl258094258140%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl258097258157%_)))
                                      (_%hd258093258138%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl258097258157%_))))
                                  (let ((_%opt258143%_ _%hd258093258138%_)
                                        (_%rest258145%_ _%tl258094258140%_))
                                    (_%K258090258130%_
                                     _%rest258145%_
                                     _%opt258143%_)))
                                (let ((_%rest258121%_ _%tl258097258157%_))
                                  (_%K258087258115%_ _%rest258121%_)))
                            (let ((_%rest258121%_ _%tl258097258157%_))
                              (_%K258087258115%_ _%rest258121%_)))))
                  (_%else258085258109%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str258074%_)
        (not (let () (declare (not safe)) (string-empty? _%str258074%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path258067%_ _%phi?258068%_)
        (let ((_%gsc-link-opts258070%_
               (gxc#gsc-link-options__% _%phi?258068%_))
              (_%gsc-cc-opts258071%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?258068%_))
              (_%gsc-ld-opts258072%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?258068%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp259934
                  (let ((__tmp259935
                         (let ((__tmp259936 (cons _%path258067%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp259936
                            _%gsc-link-opts258070%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp259935 _%gsc-ld-opts258072%_))))
             (declare (not safe))
             (foldr__0 cons __tmp259934 _%gsc-cc-opts258071%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx258033%_ _%n258034%_ _%ext258035%_)
        (letrec ((_%module-relative-path258037%_
                  (lambda (_%ctx258065%_)
                    (path-strip-directory
                     (let ((__tmp259937
                            (##structure-ref
                             _%ctx258065%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp259937)))))
                 (_%module-source-directory258038%_
                  (lambda (_%ctx258061%_)
                    (path-directory
                     (let ((_%mpath258063%_
                            (##structure-ref
                             _%ctx258061%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath258063%_)
                           _%mpath258063%_
                           (last _%mpath258063%_))))))
                 (_%section-string258039%_
                  (lambda (_%n258055%_)
                    (if (number? _%n258055%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n258055%_))
                        (if (symbol? _%n258055%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n258055%_))
                            (if (string? _%n258055%_)
                                _%n258055%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n258055%_)))))))
                 (_%file-name258040%_
                  (lambda (_%path258053%_)
                    (if _%n258034%_
                        (string-append
                         _%path258053%_
                         '"~"
                         (_%section-string258039%_ _%n258034%_)
                         _%ext258035%_)
                        (string-append _%path258053%_ _%ext258035%_))))
                 (_%file-path258041%_
                  (lambda ()
                    (let ((_%$e258047%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e258047%_
                          ((lambda (_%outdir258050%_)
                             (path-expand
                              (_%file-name258040%_
                               (let ((__tmp259938
                                      (##structure-ref
                                       _%ctx258033%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp259938)))
                              _%outdir258050%_))
                           _%$e258047%_)
                          (path-expand
                           (_%file-name258040%_
                            (_%module-relative-path258037%_ _%ctx258033%_))
                           (_%module-source-directory258038%_
                            _%ctx258033%_)))))))
          (let ((_%path258043%_ (_%file-path258041%_)))
            (let ((__tmp259939
                   (lambda ()
                     (let ((__tmp259940 (path-directory _%path258043%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp259940)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp259939))
            _%path258043%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx258014%_)
        (letrec ((_%file-name258016%_
                  (lambda (_%id258031%_)
                    (let ((__tmp259941 (gxc#static-module-name _%id258031%_)))
                      (declare (not safe))
                      (##string-append __tmp259941 '".scm"))))
                 (_%file-path258017%_
                  (lambda ()
                    (let* ((_%file258023%_
                            (_%file-name258016%_
                             (##structure-ref
                              _%ctx258014%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e258025%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e258025%_
                          ((lambda (_%outdir258028%_)
                             (path-expand
                              _%file258023%_
                              (path-expand '"static" _%outdir258028%_)))
                           _%$e258025%_)
                          (path-expand _%file258023%_ '"static"))))))
          (let ((_%path258019%_ (_%file-path258017%_)))
            (let ((__tmp259942
                   (lambda ()
                     (let ((__tmp259943 (path-directory _%path258019%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp259943)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp259942))
            _%path258019%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx258007%_ _%opts258008%_)
        (let ((_%$e258010%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts258008%_))))
          (if _%$e258010%_
              _%$e258010%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx258007%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr257997%_)
        (if (string? _%idstr257997%_)
            (let* ((_%str258000%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr257997%_)))
                   (_%strs258002%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str258000%_ '#\/))))
              (declare (not safe))
              (string-join _%strs258002%_ '"__"))
            (if (symbol? _%idstr257997%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr257997%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr257997%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp259944
               (let ((__tmp259945 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp259945 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp259944))))
    (define gxc#invoke__%
      (lambda (_%@@keywords257963%_
               _%stdout-redirection257959257964%_
               _%stderr-redirection257960257965%_
               _%program257966%_
               _%args257967%_)
        (let* ((_%stdout-redirection257969%_
                (if (eq? _%stdout-redirection257959257964%_ absent-value)
                    '#f
                    _%stdout-redirection257959257964%_))
               (_%stderr-redirection257971%_
                (if (eq? _%stderr-redirection257960257965%_ absent-value)
                    '#f
                    _%stderr-redirection257960257965%_)))
          (let ((__tmp259946 (cons _%program257966%_ _%args257967%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp259946))
          (let* ((_%proc257973%_
                  (open-process
                   (cons 'path:
                         (cons _%program257966%_
                               (cons 'arguments:
                                     (cons _%args257967%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection257969%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection257971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output257978%_
                  (if (or _%stdout-redirection257969%_
                          _%stderr-redirection257971%_)
                      (read-line _%proc257973%_ '#f)
                      '#f))
                 (_%status257981%_ (process-status _%proc257973%_)))
            (let () (declare (not safe)) (##close-port _%proc257973%_))
            (if (zero? _%status257981%_)
                '#!void
                (begin
                  (display _%output257978%_)
                  (let ((__tmp259947 (cons _%program257966%_ _%args257967%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp259947
                     _%status257981%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords257986%_ . _%args257987%_)
        (apply gxc#invoke__%
               _%@@keywords257986%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257986%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords257986%_
                  'stderr-redirection:
                  absent-value))
               _%args257987%_)))
    (define gxc#invoke
      (lambda _%args257961257993%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args257961257993%_)))))
