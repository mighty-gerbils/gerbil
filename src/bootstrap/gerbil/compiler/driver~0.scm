(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1773012993)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp260843 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp260843))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp260844 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp260844))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path260700%_ _%fun260701%_)
        (with-output-to-file
         (cons 'path: (cons _%path260700%_ gxc#scheme-file-settings))
         _%fun260701%_)))
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
      (lambda (_%gerbil-libdir260695%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir260695%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path260693%_)
        (let ((__tmp260845 (object->string _%path260693%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp260845 '")"))))
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
      (lambda (_%dir260691%_) (delete-file-or-directory _%dir260691%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath260634%_ _%opts260635%_)
        (if (string? _%srcpath260634%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath260634%_)))
        (let* ((_%outdir260637%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts260635%_)))
               (_%invoke-gsc?260639%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts260635%_)))
               (_%target260644%_
                (let ((_%$e260641%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts260635%_))))
                  (if _%$e260641%_ _%$e260641%_ 'C)))
               (_%gsc-options260649%_
                (append (cons '"-target"
                              (cons (symbol->string _%target260644%_) '()))
                        (let ((_%$e260646%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts260635%_))))
                          (if _%$e260646%_ _%$e260646%_ '()))))
               (_%keep-scm?260651%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts260635%_)))
               (_%verbosity260653%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts260635%_)))
               (_%optimize260655%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts260635%_)))
               (_%debug260657%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts260635%_)))
               (_%gen-ssxi260659%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts260635%_)))
               (_%parallel?260661%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts260635%_))))
          (if _%outdir260637%_
              (let ((__tmp260846
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260637%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260846))
              '#!void)
          (if _%optimize260655%_
              (let ((__tmp260847
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260847))
              '#!void)
          (let ((__tmp260848
                 (lambda ()
                   (let ((__tmp260849
                          (lambda ()
                            (let ((__tmp260850
                                   (lambda ()
                                     (let ((__tmp260851
                                            (lambda ()
                                              (let ((__tmp260852
                                                     (lambda ()
                                                       (let ((__tmp260853
                                                              (lambda ()
                                                                (let ((__tmp260854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260855
                                        (lambda ()
                                          (let ((__tmp260857
                                                 (lambda ()
                                                   (let ((__tmp260859
                                                          (lambda ()
                                                            (let ((__tmp260861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260862
                                    (lambda ()
                                      (let ((__tmp260863
                                             (lambda ()
                                               (let ((__tmp260864
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath260634%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp260865
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath260634%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp260865))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp260864
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp260863
                                         gx#current-compilation-target
                                         _%target260644%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260862
                                gxc#current-compile-parallel
                                _%parallel?260661%_))))
                          (__tmp260860
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260861
                       gxc#current-compile-identifiers
                       __tmp260860))))
                 (__tmp260858
                  (cons (cons 'compile-module (cons _%srcpath260634%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260859
                                                      gxc#current-compile-context
                                                      __tmp260858))))
                                                (__tmp260856
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260857
                                             gxc#current-compile-timestamp
                                             __tmp260856)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260855
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi260659%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260854
                           gxc#current-compile-debug
                           _%debug260657%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260853
                  gxc#current-compile-optimize
                  _%optimize260655%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260852
                                                 gxc#current-compile-verbose
                                                 _%verbosity260653%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260851
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?260651%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260850
                               gxc#current-compile-gsc-options
                               _%gsc-options260649%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260849
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?260639%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260848
             gxc#current-compile-output-dir
             _%outdir260637%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath260684%_)
        (let ((_%opts260686%_ '()))
          (gxc#compile-module__% _%srcpath260684%_ _%opts260686%_))))
    (define gxc#compile-module
      (lambda _g260866_
        (let ((_g260867_ (let () (declare (not safe)) (##length _g260866_))))
          (cond ((let () (declare (not safe)) (##fx= _g260867_ 1))
                 (apply gxc#compile-module__0 _g260866_))
                ((let () (declare (not safe)) (##fx= _g260867_ 2))
                 (apply gxc#compile-module__% _g260866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g260866_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath260583%_ _%opts260584%_)
        (if (string? _%srcpath260583%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath260583%_)))
        (let* ((_%outdir260586%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts260584%_)))
               (_%invoke-gsc?260588%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts260584%_)))
               (_%target260593%_
                (let ((_%$e260590%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts260584%_))))
                  (if _%$e260590%_ _%$e260590%_ 'C)))
               (_%gsc-options260598%_
                (append (cons '"-target"
                              (cons (symbol->string _%target260593%_) '()))
                        (let ((_%$e260595%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts260584%_))))
                          (if _%$e260595%_ _%$e260595%_ '()))))
               (_%keep-scm?260600%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts260584%_)))
               (_%verbosity260602%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts260584%_)))
               (_%debug260604%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts260584%_)))
               (_%parallel?260606%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts260584%_))))
          (if _%outdir260586%_
              (let ((__tmp260868
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260586%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260868))
              '#!void)
          (let ((__tmp260869
                 (lambda ()
                   (let ((__tmp260870
                          (lambda ()
                            (let ((__tmp260871
                                   (lambda ()
                                     (let ((__tmp260872
                                            (lambda ()
                                              (let ((__tmp260873
                                                     (lambda ()
                                                       (let ((__tmp260874
                                                              (lambda ()
                                                                (let ((__tmp260875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260877
                                        (lambda ()
                                          (let ((__tmp260879
                                                 (lambda ()
                                                   (let ((__tmp260881
                                                          (lambda ()
                                                            (let ((__tmp260882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260883
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath260583%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp260884
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath260583%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp260884))
                                       _%opts260584%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260883
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260882
                       gxc#current-compile-parallel
                       _%parallel?260606%_))))
                 (__tmp260880
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260881
                                                      gxc#current-compile-identifiers
                                                      __tmp260880))))
                                                (__tmp260878
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath260583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260879
                                             gxc#current-compile-context
                                             __tmp260878))))
                                       (__tmp260876 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260877
                                    gxc#current-compile-timestamp
                                    __tmp260876)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260875
                           gxc#current-compile-debug
                           _%debug260604%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260874
                  gxc#current-compile-verbose
                  _%verbosity260602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260873
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?260600%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260872
                                        gxc#current-compile-gsc-options
                                        _%gsc-options260598%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260871
                               gx#current-compilation-target
                               _%target260593%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260870
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?260588%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260869
             gxc#current-compile-output-dir
             _%outdir260586%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath260626%_)
        (let ((_%opts260628%_ '()))
          (gxc#compile-exe__% _%srcpath260626%_ _%opts260628%_))))
    (define gxc#compile-exe
      (lambda _g260885_
        (let ((_g260886_ (let () (declare (not safe)) (##length _g260885_))))
          (cond ((let () (declare (not safe)) (##fx= _g260886_ 1))
                 (apply gxc#compile-exe__0 _g260885_))
                ((let () (declare (not safe)) (##fx= _g260886_ 2))
                 (apply gxc#compile-exe__% _g260885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g260885_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx260579%_ _%opts260580%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts260580%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx260579%_
             _%opts260580%_)
            (gxc#compile-executable-module/separate
             _%ctx260579%_
             _%opts260580%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx260305%_ _%opts260306%_)
        (letrec ((_%generate-stub260308%_
                  (lambda (_%builtin-modules260575%_)
                    (let ((_%mod-main260577%_
                           (gxc#find-runtime-symbol _%ctx260305%_ 'main)))
                      (let ((__tmp260887
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules260575%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp260887))
                      (let ((__tmp260888
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main260577%_
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
                        (##write __tmp260888))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts260309%_
                  (lambda (_%gerbil-libdir260573%_)
                    (let ((__tmp260889
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir260573%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp260889 read))))
                 (_%replace-extension260310%_
                  (lambda (_%path260570%_ _%ext260571%_)
                    (string-append
                     (path-strip-extension _%path260570%_)
                     _%ext260571%_)))
                 (_%replace-extension-with-c260311%_
                  (lambda (_%path260568%_)
                    (_%replace-extension260310%_ _%path260568%_ '".c")))
                 (_%replace-extension-with-object260312%_
                  (lambda (_%path260566%_)
                    (_%replace-extension260310%_
                     _%path260566%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?260313%_
                  (lambda (_%ctx260564%_)
                    (if (_%exclude-module?260315%_ _%ctx260564%_)
                        '#f
                        (not (_%libgerbil-module?260314%_ _%ctx260564%_)))))
                 (_%libgerbil-module?260314%_
                  (lambda (_%ctx260557%_)
                    (let ((_%id-str260559%_
                           (symbol->string
                            (##structure-ref
                             _%ctx260557%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?260315%_ _%id-str260559%_)
                          '#f
                          (let ((_%$e260561%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str260559%_))))
                            (if _%$e260561%_
                                _%$e260561%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str260559%_))))))))
                 (_%exclude-module?260315%_
                  (lambda (_%ctx-or-str260553%_)
                    (let ((_%str260555%_
                           (if (string? _%ctx-or-str260553%_)
                               _%ctx-or-str260553%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str260553%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str260555%_))))
                 (_%not-file-empty?260316%_
                  (lambda (_%path260551%_)
                    (not (gxc#file-empty? _%path260551%_))))
                 (_%fold-libgerbil-runtime-scm260317%_
                  (lambda (_%gerbil-staticdir260544%_ _%libgerbil-scm260545%_)
                    (let ((_%gerbil-runtime-scm260549%_
                           (let ((__tmp260890
                                  (lambda (_%rtm260547%_)
                                    (path-expand
                                     (let ((__tmp260891
                                            (let ((__tmp260892
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm260547%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp260892
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp260891 '".scm"))
                                     _%gerbil-staticdir260544%_))))
                             (declare (not safe))
                             (##map __tmp260890 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates260318%_
                       (append _%gerbil-runtime-scm260549%_
                               _%libgerbil-scm260545%_)))))
                 (_%remove-duplicates260318%_
                  (lambda (_%strlst260504%_)
                    (let _%loop260506%_ ((_%rest260508%_ _%strlst260504%_)
                                         (_%result260509%_ '()))
                      (let* ((_%rest260510260518%_ _%rest260508%_)
                             (_%else260512260526%_
                              (lambda () (reverse! _%result260509%_)))
                             (_%K260514260532%_
                              (lambda (_%rest260529%_ _%path260530%_)
                                (if (member _%path260530%_ _%result260509%_)
                                    (_%loop260506%_
                                     _%rest260529%_
                                     _%result260509%_)
                                    (_%loop260506%_
                                     _%rest260529%_
                                     (cons _%path260530%_
                                           _%result260509%_))))))
                        (if (pair? _%rest260510260518%_)
                            (let ((_%hd260515260535%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest260510260518%_)))
                                  (_%tl260516260537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest260510260518%_))))
                              (let* ((_%path260540%_ _%hd260515260535%_)
                                     (_%rest260542%_ _%tl260516260537%_))
                                (_%K260514260532%_
                                 _%rest260542%_
                                 _%path260540%_)))
                            (_%else260512260526%_))))))
                 (_%compile-stub260319%_
                  (lambda (_%output-scm260326%_ _%output-bin260327%_)
                    (let* ((_%gerbil-home260329%_
                            (let ((__tmp260893
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260893)))
                           (_%gerbil-libdir260331%_
                            (path-expand '"lib" _%gerbil-home260329%_))
                           (_%gerbil-staticdir260333%_
                            (path-expand '"static" _%gerbil-libdir260331%_))
                           (_%deps260335%_
                            (gxc#find-runtime-module-deps _%ctx260305%_))
                           (_%libgerbil-deps260337%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?260314%_
                               _%deps260335%_)))
                           (_%libgerbil-scm260339%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps260337%_)))
                           (_%libgerbil-scm260341%_
                            (_%fold-libgerbil-runtime-scm260317%_
                             _%gerbil-staticdir260333%_
                             _%libgerbil-scm260339%_))
                           (_%libgerbil-c260343%_
                            (map _%replace-extension-with-c260311%_
                                 _%libgerbil-scm260341%_))
                           (_%libgerbil-o260345%_
                            (map _%replace-extension-with-object260312%_
                                 _%libgerbil-scm260341%_))
                           (_%src-deps260347%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?260313%_
                               _%deps260335%_)))
                           (_%src-deps-scm260349%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps260347%_)))
                           (_%src-deps-scm260351%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?260316%_
                               _%src-deps-scm260349%_)))
                           (_%src-deps-scm260353%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm260351%_)))
                           (_%src-deps-c260355%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c260311%_
                                     _%src-deps-scm260353%_)))
                           (_%src-deps-o260357%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object260312%_
                                     _%src-deps-scm260353%_)))
                           (_%src-bin-scm260359%_
                            (gxc#find-static-module-file _%ctx260305%_))
                           (_%src-bin-scm260361%_
                            (path-expand _%src-bin-scm260359%_))
                           (_%src-bin-c260363%_
                            (_%replace-extension-with-c260311%_
                             _%src-bin-scm260361%_))
                           (_%src-bin-o260365%_
                            (_%replace-extension-with-object260312%_
                             _%src-bin-scm260361%_))
                           (_%output-bin260367%_
                            (path-expand _%output-bin260327%_))
                           (_%output-scm260369%_
                            (path-expand _%output-scm260326%_))
                           (_%output-c260371%_
                            (_%replace-extension-with-c260311%_
                             _%output-scm260369%_))
                           (_%output-o260373%_
                            (_%replace-extension-with-object260312%_
                             _%output-scm260369%_))
                           (_%output_-c260375%_
                            (_%replace-extension260310%_
                             _%output-scm260369%_
                             '"_.c"))
                           (_%output_-o260377%_
                            (_%replace-extension260310%_
                             _%output-scm260369%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts260379%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts260381%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts260383%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir260333%_))
                           (_%output-ld-opts260385%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts260387%_
                            (_%get-libgerbil-ld-opts260309%_
                             _%gerbil-libdir260331%_))
                           (_%rpath260389%_
                            (gxc#gerbil-rpath _%gerbil-libdir260331%_))
                           (_%builtin-modules260393%_
                            (_%remove-duplicates260318%_
                             (let ((__tmp260894
                                    (let ((__tmp260896
                                           (lambda (_%mod260391%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod260391%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp260895
                                           (cons _%ctx260305%_
                                                 _%deps260335%_)))
                                      (declare (not safe))
                                      (##map __tmp260896 __tmp260895))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp260894)))))
                      (letrec ((_%compile-obj260396%_
                                (lambda (_%scm-path260403%_ _%c-path260404%_)
                                  (let* ((_%o-path260406%_
                                          (_%replace-extension260310%_
                                           _%c-path260404%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock260408%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path260406%_
                                             '".lock")))
                                         (_%locked260410%_ '#f)
                                         (_%unlock260413%_
                                          (lambda ()
                                            (close-port _%locked260410%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock260408%_)))))
                                    (let _%retry260416%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock260408%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry260416%_))
                                          (begin
                                            (set! _%locked260410%_
                                                  (let* ((_%handler260419%_
                                                          false)
                                                         (_%thunk260423%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock260408%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler260428%_ _%handler260419%_)
                 (_%thunk260484%_ _%thunk260423%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler260428%_
                                                     _%thunk260484%_)))
                                            (if _%locked260410%_
                                                '#!void
                                                (_%retry260416%_)))))
                                    (let ((__tmp260898
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path260406%_)))
                                                     (not _%scm-path260403%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path260403%_
                                                        _%o-path260406%_)))
                                                 (let ((_%gsc-cc-opts260501%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp260899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp260900 (cons _%c-path260404%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260900
                            _%gsc-static-opts260383%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260899 _%gsc-cc-opts260501%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp260897
                                           (lambda () (_%unlock260413%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp260898
                                       __tmp260897))))))
                        (let ((__tmp260901
                               (lambda ()
                                 (let ((__tmp260902
                                        (path-directory _%output-bin260367%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp260902)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp260901))
                        (gxc#with-output-to-scheme-file
                         _%output-scm260369%_
                         (lambda ()
                           (_%generate-stub260308%_
                            _%builtin-modules260393%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it260401%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp260903
                                                   (let ((__tmp260904
                                                          (let ((__tmp260905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm260361%_
                               (cons _%output-scm260369%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260905 _%src-deps-scm260353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp260904
                                                      _%libgerbil-c260343%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp260903
                                               _%gsc-link-opts260379%_))))
                                     (for-each
                                      _%compile-obj260396%_
                                      (let ((__tmp260906
                                             (cons _%src-bin-scm260361%_
                                                   (cons _%output-scm260369%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260906
                                         _%src-deps-scm260353%_))
                                      (let ((__tmp260907
                                             (cons _%src-bin-c260363%_
                                                   (cons _%output-c260371%_
                                                         (cons _%output_-c260375%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260907
                                         _%src-deps-c260355%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin260367%_
                                                        (let ((__tmp260908
                                                               (cons _%src-bin-o260365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o260373%_
                                   (cons _%output_-o260377%_
                                         (let ((__tmp260909
                                                (let ((__tmp260910
                                                       (let ((__tmp260912
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir260331%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts260387%_))))
                     (__tmp260911
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath260389%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp260912 __tmp260911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp260910
                                                   _%output-ld-opts260385%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp260909
                                            _%libgerbil-o260345%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp260908 _%src-deps-o260357%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp260913
                                            (cons _%output-c260371%_
                                                  (cons _%output_-c260375%_
                                                        (cons _%output-o260373%_
                                                              (cons _%output_-o260377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp260913)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it260401%_))
                                  (_%compile-it260401%_)))
                            '#!void))))))
          (let* ((_%output-bin260321%_
                  (gxc#compile-exe-output-file _%ctx260305%_ _%opts260306%_))
                 (_%output-scm260323%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin260321%_ '"__exe.scm"))))
            (_%compile-stub260319%_
             _%output-scm260323%_
             _%output-bin260321%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx260127%_ _%opts260128%_)
        (letrec ((_%reset-declare260130%_
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
                 (_%generate-stub260131%_
                  (lambda (_%deps260296%_)
                    (let ((_%mod-main260298%_
                           (gxc#find-runtime-symbol _%ctx260127%_ 'main))
                          (_%reset-decl260299%_ (_%reset-declare260130%_))
                          (_%user-decl260300%_ (_%user-declare260132%_)))
                      (for-each
                       (lambda (_%dep260302%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl260299%_))
                         (newline)
                         (if _%user-decl260300%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl260300%_))
                               (newline))
                             '#!void)
                         (let ((__tmp260914
                                (cons 'include (cons _%dep260302%_ '()))))
                           (declare (not safe))
                           (##write __tmp260914))
                         (newline))
                       _%deps260296%_)
                      (let ((__tmp260915
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main260298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp260915))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare260132%_
                  (lambda ()
                    (let* ((_%gsc-opts260201%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts260128%_)))
                           (_%gsc-prelude260203%_
                            (if _%gsc-opts260201%_
                                (member '"-prelude" _%gsc-opts260201%_)
                                '#f))
                           (_%gsc-prelude260205%_
                            (if _%gsc-prelude260203%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude260203%_)))
                                '#f)))
                      (let _%lp260208%_ ((_%rest260210%_
                                          (cons _%gsc-prelude260205%_ '()))
                                         (_%user-decls260211%_ '()))
                        (let* ((_%rest260212260220%_ _%rest260210%_)
                               (_%else260214260228%_
                                (lambda ()
                                  (if (null? _%user-decls260211%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls260211%_)))))
                               (_%K260216260284%_
                                (lambda (_%rest260231%_ _%expr260232%_)
                                  (let* ((_%expr260233260245%_ _%expr260232%_)
                                         (_%else260236260253%_
                                          (lambda ()
                                            (_%lp260208%_
                                             _%rest260231%_
                                             _%user-decls260211%_))))
                                    (let ((_%K260241260274%_
                                           (lambda (_%decls260272%_)
                                             (_%lp260208%_
                                              _%rest260231%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls260211%_
                                                 _%decls260272%_)))))
                                          (_%K260238260259%_
                                           (lambda (_%exprs260257%_)
                                             (_%lp260208%_
                                              (append _%exprs260257%_
                                                      _%rest260231%_)
                                              _%user-decls260211%_))))
                                      (if (pair? _%expr260233260245%_)
                                          (let ((_%tl260243260279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr260233260245%_)))
                                                (_%hd260242260277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr260233260245%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd260242260277%_
                                                         'declare))
                                                (let ((_%decls260282%_
                                                       _%tl260243260279%_))
                                                  (_%K260241260274%_
                                                   _%decls260282%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd260242260277%_
                                                             'begin))
                                                    (let ((_%exprs260267%_
                                                           _%tl260243260279%_))
                                                      (_%K260238260259%_
                                                       _%exprs260267%_))
                                                    (_%else260236260253%_))))
                                          (_%else260236260253%_)))))))
                          (if (pair? _%rest260212260220%_)
                              (let ((_%hd260217260287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest260212260220%_)))
                                    (_%tl260218260289%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest260212260220%_))))
                                (let* ((_%expr260292%_ _%hd260217260287%_)
                                       (_%rest260294%_ _%tl260218260289%_))
                                  (_%K260216260284%_
                                   _%rest260294%_
                                   _%expr260292%_)))
                              (_%else260214260228%_)))))))
                 (_%compile-stub260133%_
                  (lambda (_%output-scm260140%_ _%output-bin260141%_)
                    (let* ((_%gerbil-home260143%_
                            (let ((__tmp260916
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260916)))
                           (_%gerbil-libdir260145%_
                            (path-expand '"lib" _%gerbil-home260143%_))
                           (_%runtime260147%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp260149%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home260143%_))
                           (_%include-gambit-sharp260151%_
                            (gxc#include-source _%gambit-sharp260149%_))
                           (_%bin-scm260153%_
                            (gxc#find-static-module-file _%ctx260127%_))
                           (_%deps260155%_
                            (gxc#find-runtime-module-deps _%ctx260127%_))
                           (_%deps260157%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps260155%_)))
                           (_%deps260162%_
                            (let ((__tmp260917
                                   (lambda (_%$obj260159%_)
                                     (not (gxc#file-empty? _%$obj260159%_)))))
                              (declare (not safe))
                              (##filter __tmp260917 _%deps260157%_)))
                           (_%deps260166%_
                            (let ((__tmp260918
                                   (lambda (_%f260164%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f260164%_
                                             _%runtime260147%_))))))
                              (declare (not safe))
                              (##filter __tmp260918 _%deps260162%_)))
                           (_%output-base260168%_
                            (let ((__tmp260919
                                   (path-strip-extension
                                    _%output-scm260140%_)))
                              (declare (not safe))
                              (##string-append __tmp260919)))
                           (_%output-c260170%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base260168%_ '".c")))
                           (_%output-o260172%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base260168%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_260174%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base260168%_ '"_.c")))
                           (_%output-o_260176%_
                            (let ((__tmp260920
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base260168%_
                               __tmp260920)))
                           (_%gsc-link-opts260178%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts260180%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts260182%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir260145%_)))
                           (_%output-ld-opts260184%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros260186%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp260151%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp260151%_
                                            '()))))
                           (_%gsc-link-opts260188%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts260178%_
                               _%gsc-gx-macros260186%_)))
                           (_%rpath260190%_
                            (gxc#gerbil-rpath _%gerbil-libdir260145%_))
                           (_%default-ld-options260192%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp260921
                             (lambda ()
                               (let ((__tmp260922
                                      (path-directory _%output-bin260141%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp260922)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp260921))
                      (gxc#with-output-to-scheme-file
                       _%output-scm260140%_
                       (lambda ()
                         (_%generate-stub260131%_
                          (let ((__tmp260923
                                 (let ((__tmp260924
                                        (cons _%bin-scm260153%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp260924
                                    _%deps260166%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp260923 _%runtime260147%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it260198%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_260174%_
                                                      (let ((__tmp260925
                                                             (cons _%output-scm260140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp260925 _%gsc-link-opts260188%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp260926
                                                 (let ((__tmp260927
                                                        (cons _%output-c260170%_
                                                              (cons _%output-c_260174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp260927
                                                    _%gsc-static-opts260182%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260926
                                             _%gsc-cc-opts260180%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin260141%_
                                                      (cons _%output-o260172%_
                                                            (cons _%output-o_260176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260928
                                 (let ((__tmp260930
                                        (cons '"-L"
                                              (cons _%gerbil-libdir260145%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options260192%_))))
                                       (__tmp260929
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath260190%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp260930 __tmp260929))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp260928
                             _%output-ld-opts260184%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it260198%_))
                                (_%compile-it260198%_)))
                          '#!void)))))
          (let* ((_%output-bin260135%_
                  (gxc#compile-exe-output-file _%ctx260127%_ _%opts260128%_))
                 (_%output-scm260137%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin260135%_ '"__exe.scm"))))
            (_%compile-stub260133%_
             _%output-scm260137%_
             _%output-bin260135%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx260076%_ _%id260077%_)
        (let ((_%$e260123%_
               (let ((__tmp260932
                      (lambda (_%e260078260080%_)
                        (let* ((_%e260078260082260092%_ _%e260078260080%_)
                               (_%else260084260100%_ (lambda () '#f))
                               (_%K260086260104%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e260078260082260092%_
                                 'gx#module-export::t))
                              (let* ((_%e260087260107%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260078260082260092%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e260088260110%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260078260082260092%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e260089260113%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260078260082260092%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e260089260113%_ '0))
                                    (let ((_%e260090260116%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e260078260082260092%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g260118260120%_)
                                             (eq? _%g260118260120%_
                                                  _%id260077%_))
                                           _%e260090260116%_)
                                          (_%K260086260104%_)
                                          (_%else260084260100%_)))
                                    (_%else260084260100%_)))
                              (_%else260084260100%_)))))
                     (__tmp260931
                      (##structure-ref
                       _%ctx260076%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp260932 __tmp260931))))
          (if _%$e260123%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e260123%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx260067%_ _%id260068%_)
        (let ((_%$e260070%_
               (gxc#find-export-binding _%ctx260067%_ _%id260068%_)))
          (if _%$e260070%_
              ((lambda (_%bind260073%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind260073%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id260068%_)))
                 (##structure-ref _%bind260073%_ '1 gx#binding::t '#f))
               _%$e260070%_)
              (let ((__tmp260933
                     (##structure-ref
                      _%ctx260067%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp260933
                 _%id260068%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx259933%_)
        (letrec* ((_%ht259935%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template259936%_
                   (lambda (_%in260012%_ _%phi260013%_)
                     (let ((_%iphi260015%_
                            (fx+ _%phi260013%_
                                 (##direct-structure-ref
                                  _%in260012%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports260016%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in260012%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp260018%_ ((_%rest260020%_ _%imports260016%_)
                                          (_%r260021%_ '()))
                         (let* ((_%rest260022260030%_ _%rest260020%_)
                                (_%else260024260038%_ (lambda () _%r260021%_))
                                (_%K260026260055%_
                                 (lambda (_%rest260041%_ _%in260042%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in260042%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi260015%_))
                                           (_%lp260018%_
                                            _%rest260041%_
                                            (cons _%in260042%_ _%r260021%_))
                                           (_%lp260018%_
                                            _%rest260041%_
                                            _%r260021%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in260042%_
                                              'gx#module-import::t))
                                           (let ((_%iphi260046%_
                                                  (fx+ _%phi260013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in260042%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi260046%_))
                                                 (_%lp260018%_
                                                  _%rest260041%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in260042%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r260021%_))
                                                 (_%lp260018%_
                                                  _%rest260041%_
                                                  _%r260021%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in260042%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi260049%_
                                                      (fx+ _%iphi260015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in260042%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi260049%_))
                                                     (_%lp260018%_
                                                      _%rest260041%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in260042%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r260021%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi260049%_))
                                                         (_%lp260018%_
                                                          _%rest260041%_
                                                          (let ((__tmp260934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template259936%_
                          _%in260042%_
                          _%iphi260015%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r260021%_ __tmp260934)))
                 (_%lp260018%_ _%rest260041%_ _%r260021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp260018%_
                                                _%rest260041%_
                                                _%r260021%_)))))))
                           (if (pair? _%rest260022260030%_)
                               (let ((_%hd260027260058%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest260022260030%_)))
                                     (_%tl260028260060%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest260022260030%_))))
                                 (let* ((_%in260063%_ _%hd260027260058%_)
                                        (_%rest260065%_ _%tl260028260060%_))
                                   (_%K260026260055%_
                                    _%rest260065%_
                                    _%in260063%_)))
                               (_%else260024260038%_)))))))
                  (_%find-deps259937%_
                   (lambda (_%rest259945%_ _%deps259946%_)
                     (let* ((_%rest259947259955%_ _%rest259945%_)
                            (_%else259949259963%_ (lambda () _%deps259946%_))
                            (_%K259951260000%_
                             (lambda (_%rest259966%_ _%hd259967%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd259967%_
                                      'gx#module-context::t))
                                   (let ((_%id259970%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259967%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports259971%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259967%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht259935%_
                                            _%id259970%_))
                                         (_%find-deps259937%_
                                          _%rest259966%_
                                          _%deps259946%_)
                                         (let ((_%$e259974%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd259967%_))))
                                           (if _%$e259974%_
                                               ((lambda (_%pre259977%_)
                                                  (let ((_%xdeps259979%_
                                                         (_%find-deps259937%_
                                                          (cons _%pre259977%_
                                                                _%imports259971%_)
                                                          _%deps259946%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht259935%_
                                                       _%id259970%_
                                                       _%hd259967%_))
                                                    (_%find-deps259937%_
                                                     _%rest259966%_
                                                     (cons _%hd259967%_
                                                           _%xdeps259979%_))))
                                                _%$e259974%_)
                                               (let ((_%xdeps259982%_
                                                      (_%find-deps259937%_
                                                       _%imports259971%_
                                                       _%deps259946%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht259935%_
                                                    _%id259970%_
                                                    _%hd259967%_))
                                                 (_%find-deps259937%_
                                                  _%rest259966%_
                                                  (cons _%hd259967%_
                                                        _%xdeps259982%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd259967%_
                                          'gx#prelude-context::t))
                                       (let ((_%id259985%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd259967%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht259935%_
                                                _%id259985%_))
                                             (_%find-deps259937%_
                                              _%rest259966%_
                                              _%deps259946%_)
                                             (let ((_%xdeps259989%_
                                                    (_%find-deps259937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd259967%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps259946%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht259935%_
                                                      _%id259985%_))
                                                   (_%find-deps259937%_
                                                    _%rest259966%_
                                                    _%xdeps259989%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht259935%_
                                                        _%id259985%_
                                                        _%hd259967%_))
                                                     (_%find-deps259937%_
                                                      _%rest259966%_
                                                      (cons _%hd259967%_
                                                            _%xdeps259989%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd259967%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd259967%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps259937%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259967%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259966%_)
                                                _%deps259946%_)
                                               (_%find-deps259937%_
                                                _%rest259966%_
                                                _%deps259946%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd259967%_
                                                  'gx#module-export::t))
                                               (_%find-deps259937%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259967%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259966%_)
                                                _%deps259946%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd259967%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd259967%_ '2 '#f '#f)))
               (_%find-deps259937%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd259967%_ '1 '#f '#f))
                      _%rest259966%_)
                _%deps259946%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd259967%_ '2 '#f '#f)))
                   (let ((_%xdeps259996%_
                          (_%import-set-template259936%_ _%hd259967%_ '0)))
                     (_%find-deps259937%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest259966%_ _%xdeps259996%_))
                      _%deps259946%_))
                   (_%find-deps259937%_ _%rest259966%_ _%deps259946%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd259967%_))))))))))
                       (if (pair? _%rest259947259955%_)
                           (let ((_%hd259952260003%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest259947259955%_)))
                                 (_%tl259953260005%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest259947259955%_))))
                             (let* ((_%hd260008%_ _%hd259952260003%_)
                                    (_%rest260010%_ _%tl259953260005%_))
                               (_%K259951260000%_
                                _%rest260010%_
                                _%hd260008%_)))
                           (_%else259949259963%_))))))
          (let ((__tmp260935
                 (filter gx#expander-context-id
                         (_%find-deps259937%_
                          (let ((_%$e259939%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx259933%_))))
                            (if _%$e259939%_
                                ((lambda (_%pre259942%_)
                                   (cons _%pre259942%_
                                         (##structure-ref
                                          _%ctx259933%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e259939%_)
                                (##structure-ref
                                 _%ctx259933%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp260935)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx259863%_)
        (let* ((_%context-id259865%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx259863%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx259863%_ '1 '#f '#f))
                    (string->symbol _%ctx259863%_)))
               (_%scm259867%_
                (let ((__tmp260936
                       (gxc#static-module-name _%context-id259865%_)))
                  (declare (not safe))
                  (##string-append __tmp260936 '".scm")))
               (_%dirs259869%_ (let () (declare (not safe)) (load-path)))
               (_%dirs259875%_
                (let ((_%user-libpath259871%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath259871%_
                      (let ((_%user-libpath259873%_
                             (path-expand '"lib" _%user-libpath259871%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath259873%_ _%dirs259869%_))
                            _%dirs259869%_
                            (cons _%user-libpath259873%_ _%dirs259869%_)))
                      _%dirs259869%_)))
               (_%dirs259885%_
                (let ((_%$e259877%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e259877%_
                      ((lambda (_%g259879259881%_)
                         (cons _%g259879259881%_ _%dirs259875%_))
                       _%$e259877%_)
                      _%dirs259875%_)))
               (_%dirs259891%_
                (let ((__tmp260937
                       (lambda (_%g259886259888%_)
                         (path-expand '"static" _%g259886259888%_))))
                  (declare (not safe))
                  (##map __tmp260937 _%dirs259885%_))))
          (let _%lp259894%_ ((_%rest259896%_ _%dirs259891%_))
            (let* ((_%rest259897259905%_ _%rest259896%_)
                   (_%else259899259913%_
                    (lambda ()
                      (let ((__tmp260938
                             (##structure-ref
                              _%ctx259863%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp260938
                         _%scm259867%_))))
                   (_%K259901259921%_
                    (lambda (_%rest259916%_ _%dir259917%_)
                      (let ((_%path259919%_
                             (path-expand _%scm259867%_ _%dir259917%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path259919%_))
                            _%path259919%_
                            (_%lp259894%_ _%rest259916%_))))))
              (if (pair? _%rest259897259905%_)
                  (let ((_%hd259902259924%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259897259905%_)))
                        (_%tl259903259926%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259897259905%_))))
                    (let* ((_%dir259929%_ _%hd259902259924%_)
                           (_%rest259931%_ _%tl259903259926%_))
                      (_%K259901259921%_ _%rest259931%_ _%dir259929%_)))
                  (_%else259899259913%_)))))))
    (define gxc#file-empty?
      (lambda (_%path259861%_)
        (zero? (let ((__tmp260939 (file-info _%path259861%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp260939)))))
    (define gxc#compile-top-module
      (lambda (_%ctx259852%_)
        (let ((__tmp260940
               (lambda ()
                 (let ((__tmp260941
                        (lambda ()
                          (let ((__tmp260942
                                 (lambda ()
                                   (let ((__tmp260944
                                          (lambda ()
                                            (let ((__tmp260946
                                                   (lambda ()
                                                     (let ((__tmp260948
                                                            (lambda ()
                                                              (let ((__tmp260949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx259852%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp260949))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp260950
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx259852%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp260950))
                          '#!void)
                      (gxc#collect-bindings _%ctx259852%_)
                      (gxc#compile-runtime-code _%ctx259852%_)
                      (gxc#compile-meta-code _%ctx259852%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx259852%_)
                          '#!void)))
                   (__tmp260947
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
                __tmp260948
                gxc#current-compile-runtime-names
                __tmp260947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp260945
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp260946
                                               gxc#current-compile-runtime-sections
                                               __tmp260945))))
                                         (__tmp260943
                                          (let ((__obj260841
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj260841))
                                            __obj260841)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp260944
                                      gxc#current-compile-symbol-table
                                      __tmp260943)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp260942
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp260941
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260940
           gx#current-expander-context
           _%ctx259852%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx259850%_)
        (let ((__tmp260951
               (##structure-ref _%ctx259850%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp260951))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx259795%_)
        (letrec ((_%compile1259797%_
                  (lambda (_%ctx259839%_)
                    (let* ((_%code259841%_
                            (##structure-ref
                             _%ctx259839%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm259845%_
                            (let ((_%idstr259843%_
                                   (let ((__tmp260952
                                          (##structure-ref
                                           _%ctx259839%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp260952))))
                              (declare (not safe))
                              (##string-append _%idstr259843%_ '"~0")))
                           (_%rtc?259847%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code259841%_))))
                      (if _%rtc?259847%_
                          (let ((__tmp260953
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp260953
                             _%ctx259839%_
                             _%rtm259845%_))
                          '#!void)
                      (_%generate-runtime-code259799%_
                       _%ctx259839%_
                       _%code259841%_
                       (if _%rtc?259847%_ _%rtm259845%_ '#f)))))
                 (_%context-timestamp259798%_
                  (lambda (_%ctx259837%_)
                    (let ((__tmp260954
                           (let ((__tmp260955
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx259837%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp260955 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp260954))))
                 (_%generate-runtime-code259799%_
                  (lambda (_%ctx259806%_ _%code259807%_ _%rtm259808%_)
                    (let* ((_%runtime-code?259810%_ (if _%rtm259808%_ '#t '#f))
                           (_%lifts259812%_ (box '()))
                           (_%runtime-code259818%_
                            (if _%runtime-code?259810%_
                                (let ((__tmp260956
                                       (lambda ()
                                         (let ((__tmp260957
                                                (lambda ()
                                                  (let ((__tmp260958
                                                         (lambda ()
                                                           (let ((__tmp260960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code259807%_))))
                         (__tmp260959
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260960
                      gxc#current-compile-marks
                      __tmp260959)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp260958
                                                     gxc#current-compile-lift
                                                     _%lifts259812%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp260957
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp260956
                                   gx#current-expander-context
                                   _%ctx259806%_))
                                '#f))
                           (_%runtime-code259820%_
                            (if _%runtime-code?259810%_
                                (if (null? (unbox _%lifts259812%_))
                                    _%runtime-code259818%_
                                    (cons 'begin
                                          (let ((__tmp260962
                                                 (cons _%runtime-code259818%_
                                                       '()))
                                                (__tmp260961
                                                 (reverse (unbox _%lifts259812%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260962
                                             __tmp260961))))
                                '#f))
                           (_%runtime-code259822%_
                            (if _%runtime-code?259810%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp259798%_
                                                         _%ctx259806%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code259820%_ '())))
                                '#f))
                           (_%loader-code259825%_
                            (let ((__tmp260963
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code259807%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260963
                               gx#current-expander-context
                               _%ctx259806%_)))
                           (_%loader-code259827%_
                            (cons 'begin
                                  (cons _%loader-code259825%_
                                        (cons (if _%runtime-code?259810%_
                                                  (cons 'load-module
                                                        (cons _%rtm259808%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0259829%_
                            (gxc#compile-output-file _%ctx259806%_ '0 '".scm"))
                           (_%scmrt259831%_
                            (gxc#compile-output-file
                             _%ctx259806%_
                             '#f
                             '".scm"))
                           (_%scms259833%_
                            (gxc#compile-static-output-file _%ctx259806%_)))
                      (if _%runtime-code?259810%_
                          (gxc#compile-scm-file__0
                           _%scm0259829%_
                           _%runtime-code259822%_)
                          '#!void)
                      (let ((__tmp260964
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt259831%_
                                _%loader-code259827%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp260964
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms259833%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms259833%_))
                          '#!void)
                      (if _%runtime-code?259810%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0259829%_ _%scms259833%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms259833%_ void)))))))
          (let* ((_%all-modules259801%_
                  (cons _%ctx259795%_ (gxc#lift-nested-modules _%ctx259795%_)))
                 (__tmp260965
                  (lambda (_%ctx259803%_)
                    (let ((__tmp260966
                           (lambda () (_%compile1259797%_ _%ctx259803%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260966
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp260965 _%all-modules259801%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx259694%_)
        (letrec ((_%compile-ssi259696%_
                  (lambda (_%code259763%_)
                    (let* ((_%path259765%_
                            (gxc#compile-output-file
                             _%ctx259694%_
                             '#f
                             '".ssi"))
                           (_%prelude259777%_
                            (let* ((_%super259767%_
                                    (##structure-ref
                                     _%ctx259694%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e259769%_
                                    (##structure-ref
                                     _%super259767%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e259769%_
                                  ((lambda (_%g259771259773%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g259771259773%_)))
                                   _%$e259769%_)
                                  ':<root>)))
                           (_%ns259779%_
                            (##structure-ref
                             _%ctx259694%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr259781%_
                            (symbol->string
                             (##structure-ref
                              _%ctx259694%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg259789%_
                            (let ((_%$e259783%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr259781%_ '#\/))))
                              (if _%$e259783%_
                                  ((lambda (_%x259786%_)
                                     (let ((__tmp260967
                                            (substring
                                             _%idstr259781%_
                                             '0
                                             _%x259786%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp260967)))
                                   _%$e259783%_)
                                  '#f)))
                           (_%rt259791%_
                            (let ((__tmp260968
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp260968 _%ctx259694%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path259765%_))
                      (gxc#with-output-to-scheme-file
                       _%path259765%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude259777%_))
                         (if _%pkg259789%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg259789%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns259779%_))
                         (newline)
                         (pretty-print _%code259763%_)
                         (if _%rt259791%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt259791%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi259697%_
                  (lambda (_%part259702%_)
                    (let* ((_%part259703259716%_ _%part259702%_)
                           (_%E259705259720%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part259703259716%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K259706259732%_
                            (lambda (_%code259723%_
                                     _%n259724%_
                                     _%phi259725%_
                                     _%phi-ctx259726%_)
                              (let ((_%code259730%_
                                     (let ((__tmp260969
                                            (lambda ()
                                              (let ((__tmp260970
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code259723%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260970
                                                 gx#current-expander-phi
                                                 _%phi259725%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260969
                                        gx#current-expander-context
                                        _%phi-ctx259726%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx259694%_
                                  _%n259724%_
                                  '".scm")
                                 _%code259730%_
                                 '#t)))))
                      (if (pair? _%part259703259716%_)
                          (let ((_%hd259707259735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part259703259716%_)))
                                (_%tl259708259737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part259703259716%_))))
                            (let ((_%phi-ctx259740%_ _%hd259707259735%_))
                              (if (pair? _%tl259708259737%_)
                                  (let ((_%hd259709259742%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259708259737%_)))
                                        (_%tl259710259744%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259708259737%_))))
                                    (let ((_%phi259747%_ _%hd259709259742%_))
                                      (if (pair? _%tl259710259744%_)
                                          (let ((_%hd259711259749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl259710259744%_)))
                                                (_%tl259712259751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl259710259744%_))))
                                            (let ((_%n259754%_
                                                   _%hd259711259749%_))
                                              (if (pair? _%tl259712259751%_)
                                                  (let ((_%hd259713259756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl259712259751%_)))
                                                        (_%tl259714259758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl259712259751%_))))
                                                    (let ((_%code259761%_
                                                           _%hd259713259756%_))
                                                      (if (null? _%tl259714259758%_)
                                                          (_%K259706259732%_
                                                           _%code259761%_
                                                           _%n259754%_
                                                           _%phi259747%_
                                                           _%phi-ctx259740%_)
                                                          (_%E259705259720%_))))
                                                  (_%E259705259720%_))))
                                          (_%E259705259720%_))))
                                  (_%E259705259720%_))))
                          (_%E259705259720%_))))))
          (let ((_g260971_ (gxc#generate-meta-code _%ctx259694%_)))
            (begin
              (let ((_g260972_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g260971_)
                           (##values-length _g260971_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g260972_ 2)))
                    (error "Context expects 2 values" _g260972_)))
              (let ((_%ssi-code259699%_
                     (let () (declare (not safe)) (##values-ref _g260971_ 0)))
                    (_%phi-code259700%_
                     (let () (declare (not safe)) (##values-ref _g260971_ 1))))
                (begin
                  (_%compile-ssi259696%_ _%ssi-code259699%_)
                  (for-each _%compile-phi259697%_ _%phi-code259700%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx259676%_)
        (let* ((_%path259678%_
                (gxc#compile-output-file _%ctx259676%_ '#f '".ssxi.ss"))
               (_%code259680%_
                (let ((__tmp260973
                       (##structure-ref
                        _%ctx259676%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp260973)))
               (_%idstr259682%_
                (symbol->string
                 (##structure-ref
                  _%ctx259676%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg259690%_
                (let ((_%$e259684%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr259682%_ '#\/))))
                  (if _%$e259684%_
                      ((lambda (_%x259687%_)
                         (let ((__tmp260974
                                (substring _%idstr259682%_ '0 _%x259687%_)))
                           (declare (not safe))
                           (##string->symbol __tmp260974)))
                       _%$e259684%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path259678%_))
          (gxc#with-output-to-scheme-file
           _%path259678%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg259690%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg259690%_))
                 '#!void)
             (newline)
             (pretty-print _%code259680%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx259669%_)
        (let* ((_%state259671%_
                (let ((__obj260842
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj260842 _%ctx259669%_))
                  __obj260842))
               (_%ssi-code259673%_
                (let ((__tmp260975
                       (##structure-ref
                        _%ctx259669%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state259671%_
                   __tmp260975))))
          (values _%ssi-code259673%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state259671%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx259661%_)
        (let* ((_%lifts259663%_ (box '()))
               (__tmp260976
                (lambda ()
                  (let ((__tmp260978
                         (lambda ()
                           (let ((_%code259667%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx259661%_))))
                             (if (null? (unbox _%lifts259663%_))
                                 _%code259667%_
                                 (cons 'begin
                                       (let ((__tmp260980
                                              (cons _%code259667%_ '()))
                                             (__tmp260979
                                              (reverse (unbox _%lifts259663%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp260980
                                          __tmp260979)))))))
                        (__tmp260977
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp260978
                     gxc#current-compile-marks
                     __tmp260977)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260976
           gxc#current-compile-lift
           _%lifts259663%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx259657%_)
        (let ((_%modules259659%_ (box '())))
          (let ((__tmp260981
                 (##structure-ref _%ctx259657%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules259659%_ __tmp260981))
          (reverse (unbox _%modules259659%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path259637%_ _%code259638%_ _%phi?259639%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path259637%_))
        (gxc#with-output-to-scheme-file
         _%path259637%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp260982
                                           (if _%phi?259639%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp260982)))))))
           (pretty-print _%code259638%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it259643%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path259637%_ _%phi?259639%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp260983
                         (cons 'compile-file (cons _%path259637%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it259643%_ __tmp260983))
                  (_%compile-it259643%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path259648%_ _%code259649%_)
        (let ((_%phi?259651%_ '#f))
          (gxc#compile-scm-file__%
           _%path259648%_
           _%code259649%_
           _%phi?259651%_))))
    (define gxc#compile-scm-file
      (lambda _g260984_
        (let ((_g260985_ (let () (declare (not safe)) (##length _g260984_))))
          (cond ((let () (declare (not safe)) (##fx= _g260985_ 2))
                 (apply gxc#compile-scm-file__0 _g260984_))
                ((let () (declare (not safe)) (##fx= _g260985_ 3))
                 (apply gxc#compile-scm-file__% _g260984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g260984_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?259538%_)
        (let _%lp259540%_ ((_%rest259542%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts259543%_ '()))
          (let* ((_%rest259544259564%_ _%rest259542%_)
                 (_%else259548259572%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts259543%_)))
                        (reverse _%opts259543%_)))))
            (let ((_%K259558259615%_
                   (lambda (_%rest259613%_)
                     (_%lp259540%_ _%rest259613%_ _%opts259543%_)))
                  (_%K259553259597%_
                   (lambda (_%rest259595%_)
                     (_%lp259540%_ _%rest259595%_ _%opts259543%_)))
                  (_%K259550259579%_
                   (lambda (_%rest259576%_ _%opt259577%_)
                     (_%lp259540%_
                      _%rest259576%_
                      (cons _%opt259577%_ _%opts259543%_)))))
              (if (pair? _%rest259544259564%_)
                  (let ((_%tl259560259620%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259544259564%_)))
                        (_%hd259559259618%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259544259564%_))))
                    (if (equal? _%hd259559259618%_ '"-cc-options")
                        (if (pair? _%tl259560259620%_)
                            (let* ((_%tl259562259623%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl259560259620%_)))
                                   (_%rest259626%_ _%tl259562259623%_))
                              (_%K259558259615%_ _%rest259626%_))
                            (let ((_%opt259587%_ _%hd259559259618%_)
                                  (_%rest259589%_ _%tl259560259620%_))
                              (_%K259550259579%_
                               _%rest259589%_
                               _%opt259587%_)))
                        (if (equal? _%hd259559259618%_ '"-ld-options")
                            (if (pair? _%tl259560259620%_)
                                (let* ((_%tl259557259605%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl259560259620%_)))
                                       (_%rest259608%_ _%tl259557259605%_))
                                  (_%K259553259597%_ _%rest259608%_))
                                (let ((_%opt259587%_ _%hd259559259618%_)
                                      (_%rest259589%_ _%tl259560259620%_))
                                  (_%K259550259579%_
                                   _%rest259589%_
                                   _%opt259587%_)))
                            (let ((_%opt259587%_ _%hd259559259618%_)
                                  (_%rest259589%_ _%tl259560259620%_))
                              (_%K259550259579%_
                               _%rest259589%_
                               _%opt259587%_)))))
                  (_%else259548259572%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?259632%_ '#f)) (gxc#gsc-link-options__% _%phi?259632%_))))
    (define gxc#gsc-link-options
      (lambda _g260986_
        (let ((_g260987_ (let () (declare (not safe)) (##length _g260986_))))
          (cond ((let () (declare (not safe)) (##fx= _g260987_ 0))
                 (apply gxc#gsc-link-options__0 _g260986_))
                ((let () (declare (not safe)) (##fx= _g260987_ 1))
                 (apply gxc#gsc-link-options__% _g260986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g260986_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords259388%_ _%static?259384259389%_ _%phi?259390%_)
        (let ((_%static?259392%_
               (if (eq? _%static?259384259389%_ absent-value)
                   '#f
                   _%static?259384259389%_)))
          (if _%phi?259390%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp259394%_ ((_%rest259396%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts259397%_ '()))
                (let* ((_%rest259398259424%_ _%rest259396%_)
                       (_%else259403259432%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts259397%_)))
                              (reverse! _%opts259397%_)))))
                  (let ((_%K259418259495%_
                         (lambda (_%rest259492%_ _%opt259493%_)
                           (if _%static?259392%_
                               (_%lp259394%_
                                _%rest259492%_
                                (cons _%opt259493%_
                                      (cons '"-cc-options" _%opts259397%_)))
                               (_%lp259394%_ _%rest259492%_ _%opts259397%_))))
                        (_%K259413259472%_
                         (lambda (_%rest259469%_ _%opt259470%_)
                           (_%lp259394%_
                            _%rest259469%_
                            (cons _%opt259470%_
                                  (cons '"-cc-options" _%opts259397%_)))))
                        (_%K259408259452%_
                         (lambda (_%rest259450%_)
                           (_%lp259394%_ _%rest259450%_ _%opts259397%_)))
                        (_%K259405259438%_
                         (lambda (_%rest259436%_)
                           (_%lp259394%_ _%rest259436%_ _%opts259397%_))))
                    (if (pair? _%rest259398259424%_)
                        (let ((_%tl259420259500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest259398259424%_)))
                              (_%hd259419259498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest259398259424%_))))
                          (if (equal? _%hd259419259498%_ '"-cc-options")
                              (if (pair? _%tl259420259500%_)
                                  (let ((_%tl259422259505%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259420259500%_)))
                                        (_%hd259421259503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259420259500%_))))
                                    (if (equal? _%hd259421259503%_ '"-Bstatic")
                                        (let ((_%opt259508%_
                                               _%hd259421259503%_)
                                              (_%rest259510%_
                                               _%tl259422259505%_))
                                          (_%K259418259495%_
                                           _%rest259510%_
                                           _%opt259508%_))
                                        (let ((_%opt259485%_
                                               _%hd259421259503%_)
                                              (_%rest259487%_
                                               _%tl259422259505%_))
                                          (_%K259413259472%_
                                           _%rest259487%_
                                           _%opt259485%_))))
                                  (let ((_%rest259444%_ _%tl259420259500%_))
                                    (_%K259405259438%_ _%rest259444%_)))
                              (if (equal? _%hd259419259498%_ '"-ld-options")
                                  (if (pair? _%tl259420259500%_)
                                      (let* ((_%tl259412259460%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl259420259500%_)))
                                             (_%rest259463%_
                                              _%tl259412259460%_))
                                        (_%K259408259452%_ _%rest259463%_))
                                      (let ((_%rest259444%_
                                             _%tl259420259500%_))
                                        (_%K259405259438%_ _%rest259444%_)))
                                  (let ((_%rest259444%_ _%tl259420259500%_))
                                    (_%K259405259438%_ _%rest259444%_)))))
                        (_%else259403259432%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords259515%_ _%static?259384259516%_)
        (let ((_%phi?259518%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords259515%_
           _%static?259384259516%_
           _%phi?259518%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g260988_
        (let ((_g260989_ (let () (declare (not safe)) (##length _g260988_))))
          (cond ((let () (declare (not safe)) (##fx= _g260989_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g260988_))
                ((let () (declare (not safe)) (##fx= _g260989_ 3))
                 (apply gxc#gsc-cc-options__%__% _g260988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g260988_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords259527%_ . _%args259528%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords259527%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259527%_
                  'static:
                  absent-value))
               _%args259528%_)))
    (define gxc#gsc-cc-options
      (lambda _%args259385259534%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args259385259534%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords259234%_ _%static?259230259235%_ _%phi?259236%_)
        (let ((_%static?259238%_
               (if (eq? _%static?259230259235%_ absent-value)
                   '#f
                   _%static?259230259235%_)))
          (if _%phi?259236%_
              '()
              (let _%lp259240%_ ((_%rest259242%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts259243%_ '()))
                (let* ((_%rest259244259270%_ _%rest259242%_)
                       (_%else259249259278%_
                        (lambda () (reverse! _%opts259243%_))))
                  (let ((_%K259264259341%_
                         (lambda (_%rest259338%_ _%opt259339%_)
                           (if _%static?259238%_
                               (_%lp259240%_
                                _%rest259338%_
                                (cons _%opt259339%_
                                      (cons '"-ld-options" _%opts259243%_)))
                               (_%lp259240%_ _%rest259338%_ _%opts259243%_))))
                        (_%K259259259318%_
                         (lambda (_%rest259315%_ _%opt259316%_)
                           (_%lp259240%_
                            _%rest259315%_
                            (cons _%opt259316%_
                                  (cons '"-ld-options" _%opts259243%_)))))
                        (_%K259254259298%_
                         (lambda (_%rest259296%_)
                           (_%lp259240%_ _%rest259296%_ _%opts259243%_)))
                        (_%K259251259284%_
                         (lambda (_%rest259282%_)
                           (_%lp259240%_ _%rest259282%_ _%opts259243%_))))
                    (if (pair? _%rest259244259270%_)
                        (let ((_%tl259266259346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest259244259270%_)))
                              (_%hd259265259344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest259244259270%_))))
                          (if (equal? _%hd259265259344%_ '"-ld-options")
                              (if (pair? _%tl259266259346%_)
                                  (let ((_%tl259268259351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259266259346%_)))
                                        (_%hd259267259349%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259266259346%_))))
                                    (if (equal? _%hd259267259349%_ '"-static")
                                        (let ((_%opt259354%_
                                               _%hd259267259349%_)
                                              (_%rest259356%_
                                               _%tl259268259351%_))
                                          (_%K259264259341%_
                                           _%rest259356%_
                                           _%opt259354%_))
                                        (let ((_%opt259331%_
                                               _%hd259267259349%_)
                                              (_%rest259333%_
                                               _%tl259268259351%_))
                                          (_%K259259259318%_
                                           _%rest259333%_
                                           _%opt259331%_))))
                                  (let ((_%rest259290%_ _%tl259266259346%_))
                                    (_%K259251259284%_ _%rest259290%_)))
                              (if (equal? _%hd259265259344%_ '"-cc-options")
                                  (if (pair? _%tl259266259346%_)
                                      (let* ((_%tl259258259306%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl259266259346%_)))
                                             (_%rest259309%_
                                              _%tl259258259306%_))
                                        (_%K259254259298%_ _%rest259309%_))
                                      (let ((_%rest259290%_
                                             _%tl259266259346%_))
                                        (_%K259251259284%_ _%rest259290%_)))
                                  (let ((_%rest259290%_ _%tl259266259346%_))
                                    (_%K259251259284%_ _%rest259290%_)))))
                        (_%else259249259278%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords259361%_ _%static?259230259362%_)
        (let ((_%phi?259364%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords259361%_
           _%static?259230259362%_
           _%phi?259364%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g260990_
        (let ((_g260991_ (let () (declare (not safe)) (##length _g260990_))))
          (cond ((let () (declare (not safe)) (##fx= _g260991_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g260990_))
                ((let () (declare (not safe)) (##fx= _g260991_ 3))
                 (apply gxc#gsc-ld-options__%__% _g260990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g260990_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords259373%_ . _%args259374%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords259373%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259373%_
                  'static:
                  absent-value))
               _%args259374%_)))
    (define gxc#gsc-ld-options
      (lambda _%args259231259380%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args259231259380%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir259225%_)
        (let ((_%user-staticdir259227%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir259225%_
                       '" -I "
                       _%user-staticdir259227%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp259137%_ ((_%rest259139%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts259140%_ '()))
          (let* ((_%rest259141259161%_ _%rest259139%_)
                 (_%else259145259169%_ (lambda () _%opts259140%_)))
            (let ((_%K259155259212%_
                   (lambda (_%rest259210%_)
                     (_%lp259137%_ _%rest259210%_ _%opts259140%_)))
                  (_%K259150259190%_
                   (lambda (_%rest259187%_ _%opt259188%_)
                     (_%lp259137%_
                      _%rest259187%_
                      (let ((__tmp260992
                             (let ((__tmp260993
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt259188%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp260993))))
                        (declare (not safe))
                        (##append _%opts259140%_ __tmp260992)))))
                  (_%K259147259175%_
                   (lambda (_%rest259173%_)
                     (_%lp259137%_ _%rest259173%_ _%opts259140%_))))
              (if (pair? _%rest259141259161%_)
                  (let ((_%tl259157259217%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259141259161%_)))
                        (_%hd259156259215%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259141259161%_))))
                    (if (equal? _%hd259156259215%_ '"-cc-options")
                        (if (pair? _%tl259157259217%_)
                            (let* ((_%tl259159259220%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl259157259217%_)))
                                   (_%rest259223%_ _%tl259159259220%_))
                              (_%K259155259212%_ _%rest259223%_))
                            (let ((_%rest259181%_ _%tl259157259217%_))
                              (_%K259147259175%_ _%rest259181%_)))
                        (if (equal? _%hd259156259215%_ '"-ld-options")
                            (if (pair? _%tl259157259217%_)
                                (let ((_%tl259154259200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl259157259217%_)))
                                      (_%hd259153259198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl259157259217%_))))
                                  (let ((_%opt259203%_ _%hd259153259198%_)
                                        (_%rest259205%_ _%tl259154259200%_))
                                    (_%K259150259190%_
                                     _%rest259205%_
                                     _%opt259203%_)))
                                (let ((_%rest259181%_ _%tl259157259217%_))
                                  (_%K259147259175%_ _%rest259181%_)))
                            (let ((_%rest259181%_ _%tl259157259217%_))
                              (_%K259147259175%_ _%rest259181%_)))))
                  (_%else259145259169%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str259134%_)
        (not (let () (declare (not safe)) (string-empty? _%str259134%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path259127%_ _%phi?259128%_)
        (let ((_%gsc-link-opts259130%_
               (gxc#gsc-link-options__% _%phi?259128%_))
              (_%gsc-cc-opts259131%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?259128%_))
              (_%gsc-ld-opts259132%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?259128%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp260994
                  (let ((__tmp260995
                         (let ((__tmp260996 (cons _%path259127%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260996
                            _%gsc-link-opts259130%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260995 _%gsc-ld-opts259132%_))))
             (declare (not safe))
             (foldr__0 cons __tmp260994 _%gsc-cc-opts259131%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx259093%_ _%n259094%_ _%ext259095%_)
        (letrec ((_%module-relative-path259097%_
                  (lambda (_%ctx259125%_)
                    (path-strip-directory
                     (let ((__tmp260997
                            (##structure-ref
                             _%ctx259125%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp260997)))))
                 (_%module-source-directory259098%_
                  (lambda (_%ctx259121%_)
                    (path-directory
                     (let ((_%mpath259123%_
                            (##structure-ref
                             _%ctx259121%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath259123%_)
                           _%mpath259123%_
                           (last _%mpath259123%_))))))
                 (_%section-string259099%_
                  (lambda (_%n259115%_)
                    (if (number? _%n259115%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n259115%_))
                        (if (symbol? _%n259115%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n259115%_))
                            (if (string? _%n259115%_)
                                _%n259115%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n259115%_)))))))
                 (_%file-name259100%_
                  (lambda (_%path259113%_)
                    (if _%n259094%_
                        (string-append
                         _%path259113%_
                         '"~"
                         (_%section-string259099%_ _%n259094%_)
                         _%ext259095%_)
                        (string-append _%path259113%_ _%ext259095%_))))
                 (_%file-path259101%_
                  (lambda ()
                    (let ((_%$e259107%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e259107%_
                          ((lambda (_%outdir259110%_)
                             (path-expand
                              (_%file-name259100%_
                               (let ((__tmp260998
                                      (##structure-ref
                                       _%ctx259093%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp260998)))
                              _%outdir259110%_))
                           _%$e259107%_)
                          (path-expand
                           (_%file-name259100%_
                            (_%module-relative-path259097%_ _%ctx259093%_))
                           (_%module-source-directory259098%_
                            _%ctx259093%_)))))))
          (let ((_%path259103%_ (_%file-path259101%_)))
            (let ((__tmp260999
                   (lambda ()
                     (let ((__tmp261000 (path-directory _%path259103%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp261000)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260999))
            _%path259103%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx259074%_)
        (letrec ((_%file-name259076%_
                  (lambda (_%id259091%_)
                    (let ((__tmp261001 (gxc#static-module-name _%id259091%_)))
                      (declare (not safe))
                      (##string-append __tmp261001 '".scm"))))
                 (_%file-path259077%_
                  (lambda ()
                    (let* ((_%file259083%_
                            (_%file-name259076%_
                             (##structure-ref
                              _%ctx259074%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e259085%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e259085%_
                          ((lambda (_%outdir259088%_)
                             (path-expand
                              _%file259083%_
                              (path-expand '"static" _%outdir259088%_)))
                           _%$e259085%_)
                          (path-expand _%file259083%_ '"static"))))))
          (let ((_%path259079%_ (_%file-path259077%_)))
            (let ((__tmp261002
                   (lambda ()
                     (let ((__tmp261003 (path-directory _%path259079%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp261003)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp261002))
            _%path259079%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx259067%_ _%opts259068%_)
        (let ((_%$e259070%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts259068%_))))
          (if _%$e259070%_
              _%$e259070%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx259067%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr259057%_)
        (if (string? _%idstr259057%_)
            (let* ((_%str259060%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr259057%_)))
                   (_%strs259062%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str259060%_ '#\/))))
              (declare (not safe))
              (string-join _%strs259062%_ '"__"))
            (if (symbol? _%idstr259057%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr259057%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr259057%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp261004
               (let ((__tmp261005 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp261005 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp261004))))
    (define gxc#invoke__%
      (lambda (_%@@keywords259023%_
               _%stdout-redirection259019259024%_
               _%stderr-redirection259020259025%_
               _%program259026%_
               _%args259027%_)
        (let* ((_%stdout-redirection259029%_
                (if (eq? _%stdout-redirection259019259024%_ absent-value)
                    '#f
                    _%stdout-redirection259019259024%_))
               (_%stderr-redirection259031%_
                (if (eq? _%stderr-redirection259020259025%_ absent-value)
                    '#f
                    _%stderr-redirection259020259025%_)))
          (let ((__tmp261006 (cons _%program259026%_ _%args259027%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp261006))
          (let* ((_%proc259033%_
                  (open-process
                   (cons 'path:
                         (cons _%program259026%_
                               (cons 'arguments:
                                     (cons _%args259027%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection259029%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection259031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output259038%_
                  (if (or _%stdout-redirection259029%_
                          _%stderr-redirection259031%_)
                      (read-line _%proc259033%_ '#f)
                      '#f))
                 (_%status259041%_ (process-status _%proc259033%_)))
            (let () (declare (not safe)) (##close-port _%proc259033%_))
            (if (zero? _%status259041%_)
                '#!void
                (begin
                  (display _%output259038%_)
                  (let ((__tmp261007 (cons _%program259026%_ _%args259027%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp261007
                     _%status259041%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords259046%_ . _%args259047%_)
        (apply gxc#invoke__%
               _%@@keywords259046%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259046%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259046%_
                  'stderr-redirection:
                  absent-value))
               _%args259047%_)))
    (define gxc#invoke
      (lambda _%args259021259053%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args259021259053%_)))))
