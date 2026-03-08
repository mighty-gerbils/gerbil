(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1773009284)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp260833 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp260833))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp260834 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp260834))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path260690%_ _%fun260691%_)
        (with-output-to-file
         (cons 'path: (cons _%path260690%_ gxc#scheme-file-settings))
         _%fun260691%_)))
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
      (lambda (_%gerbil-libdir260685%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir260685%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path260683%_)
        (let ((__tmp260835 (object->string _%path260683%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp260835 '")"))))
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
      (lambda (_%dir260681%_) (delete-file-or-directory _%dir260681%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath260624%_ _%opts260625%_)
        (if (string? _%srcpath260624%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath260624%_)))
        (let* ((_%outdir260627%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts260625%_)))
               (_%invoke-gsc?260629%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts260625%_)))
               (_%target260634%_
                (let ((_%$e260631%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts260625%_))))
                  (if _%$e260631%_ _%$e260631%_ 'C)))
               (_%gsc-options260639%_
                (append (cons '"-target"
                              (cons (symbol->string _%target260634%_) '()))
                        (let ((_%$e260636%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts260625%_))))
                          (if _%$e260636%_ _%$e260636%_ '()))))
               (_%keep-scm?260641%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts260625%_)))
               (_%verbosity260643%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts260625%_)))
               (_%optimize260645%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts260625%_)))
               (_%debug260647%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts260625%_)))
               (_%gen-ssxi260649%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts260625%_)))
               (_%parallel?260651%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts260625%_))))
          (if _%outdir260627%_
              (let ((__tmp260836
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260627%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260836))
              '#!void)
          (if _%optimize260645%_
              (let ((__tmp260837
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260837))
              '#!void)
          (let ((__tmp260838
                 (lambda ()
                   (let ((__tmp260839
                          (lambda ()
                            (let ((__tmp260840
                                   (lambda ()
                                     (let ((__tmp260841
                                            (lambda ()
                                              (let ((__tmp260842
                                                     (lambda ()
                                                       (let ((__tmp260843
                                                              (lambda ()
                                                                (let ((__tmp260844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260845
                                        (lambda ()
                                          (let ((__tmp260847
                                                 (lambda ()
                                                   (let ((__tmp260849
                                                          (lambda ()
                                                            (let ((__tmp260851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260852
                                    (lambda ()
                                      (let ((__tmp260853
                                             (lambda ()
                                               (let ((__tmp260854
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath260624%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp260855
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath260624%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp260855))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp260854
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp260853
                                         gx#current-compilation-target
                                         _%target260634%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260852
                                gxc#current-compile-parallel
                                _%parallel?260651%_))))
                          (__tmp260850
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260851
                       gxc#current-compile-identifiers
                       __tmp260850))))
                 (__tmp260848
                  (cons (cons 'compile-module (cons _%srcpath260624%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260849
                                                      gxc#current-compile-context
                                                      __tmp260848))))
                                                (__tmp260846
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260847
                                             gxc#current-compile-timestamp
                                             __tmp260846)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260845
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi260649%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260844
                           gxc#current-compile-debug
                           _%debug260647%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260843
                  gxc#current-compile-optimize
                  _%optimize260645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260842
                                                 gxc#current-compile-verbose
                                                 _%verbosity260643%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260841
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?260641%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260840
                               gxc#current-compile-gsc-options
                               _%gsc-options260639%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260839
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?260629%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260838
             gxc#current-compile-output-dir
             _%outdir260627%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath260674%_)
        (let ((_%opts260676%_ '()))
          (gxc#compile-module__% _%srcpath260674%_ _%opts260676%_))))
    (define gxc#compile-module
      (lambda _g260856_
        (let ((_g260857_ (let () (declare (not safe)) (##length _g260856_))))
          (cond ((let () (declare (not safe)) (##fx= _g260857_ 1))
                 (apply gxc#compile-module__0 _g260856_))
                ((let () (declare (not safe)) (##fx= _g260857_ 2))
                 (apply gxc#compile-module__% _g260856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g260856_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath260573%_ _%opts260574%_)
        (if (string? _%srcpath260573%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath260573%_)))
        (let* ((_%outdir260576%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts260574%_)))
               (_%invoke-gsc?260578%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts260574%_)))
               (_%target260583%_
                (let ((_%$e260580%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts260574%_))))
                  (if _%$e260580%_ _%$e260580%_ 'C)))
               (_%gsc-options260588%_
                (append (cons '"-target"
                              (cons (symbol->string _%target260583%_) '()))
                        (let ((_%$e260585%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts260574%_))))
                          (if _%$e260585%_ _%$e260585%_ '()))))
               (_%keep-scm?260590%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts260574%_)))
               (_%verbosity260592%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts260574%_)))
               (_%debug260594%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts260574%_)))
               (_%parallel?260596%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts260574%_))))
          (if _%outdir260576%_
              (let ((__tmp260858
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir260576%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp260858))
              '#!void)
          (let ((__tmp260859
                 (lambda ()
                   (let ((__tmp260860
                          (lambda ()
                            (let ((__tmp260861
                                   (lambda ()
                                     (let ((__tmp260862
                                            (lambda ()
                                              (let ((__tmp260863
                                                     (lambda ()
                                                       (let ((__tmp260864
                                                              (lambda ()
                                                                (let ((__tmp260865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp260867
                                        (lambda ()
                                          (let ((__tmp260869
                                                 (lambda ()
                                                   (let ((__tmp260871
                                                          (lambda ()
                                                            (let ((__tmp260872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp260873
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath260573%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp260874
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath260573%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp260874))
                                       _%opts260574%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp260873
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260872
                       gxc#current-compile-parallel
                       _%parallel?260596%_))))
                 (__tmp260870
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp260871
                                                      gxc#current-compile-identifiers
                                                      __tmp260870))))
                                                (__tmp260868
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath260573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp260869
                                             gxc#current-compile-context
                                             __tmp260868))))
                                       (__tmp260866 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp260867
                                    gxc#current-compile-timestamp
                                    __tmp260866)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp260865
                           gxc#current-compile-debug
                           _%debug260594%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp260864
                  gxc#current-compile-verbose
                  _%verbosity260592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260863
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?260590%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260862
                                        gxc#current-compile-gsc-options
                                        _%gsc-options260588%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260861
                               gx#current-compilation-target
                               _%target260583%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260860
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?260578%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp260859
             gxc#current-compile-output-dir
             _%outdir260576%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath260616%_)
        (let ((_%opts260618%_ '()))
          (gxc#compile-exe__% _%srcpath260616%_ _%opts260618%_))))
    (define gxc#compile-exe
      (lambda _g260875_
        (let ((_g260876_ (let () (declare (not safe)) (##length _g260875_))))
          (cond ((let () (declare (not safe)) (##fx= _g260876_ 1))
                 (apply gxc#compile-exe__0 _g260875_))
                ((let () (declare (not safe)) (##fx= _g260876_ 2))
                 (apply gxc#compile-exe__% _g260875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g260875_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx260569%_ _%opts260570%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts260570%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx260569%_
             _%opts260570%_)
            (gxc#compile-executable-module/separate
             _%ctx260569%_
             _%opts260570%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx260295%_ _%opts260296%_)
        (letrec ((_%generate-stub260298%_
                  (lambda (_%builtin-modules260565%_)
                    (let ((_%mod-main260567%_
                           (gxc#find-runtime-symbol _%ctx260295%_ 'main)))
                      (let ((__tmp260877
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules260565%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp260877))
                      (let ((__tmp260878
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main260567%_
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
                        (##write __tmp260878))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts260299%_
                  (lambda (_%gerbil-libdir260563%_)
                    (let ((__tmp260879
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir260563%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp260879 read))))
                 (_%replace-extension260300%_
                  (lambda (_%path260560%_ _%ext260561%_)
                    (string-append
                     (path-strip-extension _%path260560%_)
                     _%ext260561%_)))
                 (_%replace-extension-with-c260301%_
                  (lambda (_%path260558%_)
                    (_%replace-extension260300%_ _%path260558%_ '".c")))
                 (_%replace-extension-with-object260302%_
                  (lambda (_%path260556%_)
                    (_%replace-extension260300%_
                     _%path260556%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?260303%_
                  (lambda (_%ctx260554%_)
                    (if (_%exclude-module?260305%_ _%ctx260554%_)
                        '#f
                        (not (_%libgerbil-module?260304%_ _%ctx260554%_)))))
                 (_%libgerbil-module?260304%_
                  (lambda (_%ctx260547%_)
                    (let ((_%id-str260549%_
                           (symbol->string
                            (##structure-ref
                             _%ctx260547%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?260305%_ _%id-str260549%_)
                          '#f
                          (let ((_%$e260551%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str260549%_))))
                            (if _%$e260551%_
                                _%$e260551%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str260549%_))))))))
                 (_%exclude-module?260305%_
                  (lambda (_%ctx-or-str260543%_)
                    (let ((_%str260545%_
                           (if (string? _%ctx-or-str260543%_)
                               _%ctx-or-str260543%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str260543%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str260545%_))))
                 (_%not-file-empty?260306%_
                  (lambda (_%path260541%_)
                    (not (gxc#file-empty? _%path260541%_))))
                 (_%fold-libgerbil-runtime-scm260307%_
                  (lambda (_%gerbil-staticdir260534%_ _%libgerbil-scm260535%_)
                    (let ((_%gerbil-runtime-scm260539%_
                           (let ((__tmp260880
                                  (lambda (_%rtm260537%_)
                                    (path-expand
                                     (let ((__tmp260881
                                            (let ((__tmp260882
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm260537%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp260882
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp260881 '".scm"))
                                     _%gerbil-staticdir260534%_))))
                             (declare (not safe))
                             (##map __tmp260880 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates260308%_
                       (append _%gerbil-runtime-scm260539%_
                               _%libgerbil-scm260535%_)))))
                 (_%remove-duplicates260308%_
                  (lambda (_%strlst260494%_)
                    (let _%loop260496%_ ((_%rest260498%_ _%strlst260494%_)
                                         (_%result260499%_ '()))
                      (let* ((_%rest260500260508%_ _%rest260498%_)
                             (_%else260502260516%_
                              (lambda () (reverse! _%result260499%_)))
                             (_%K260504260522%_
                              (lambda (_%rest260519%_ _%path260520%_)
                                (if (member _%path260520%_ _%result260499%_)
                                    (_%loop260496%_
                                     _%rest260519%_
                                     _%result260499%_)
                                    (_%loop260496%_
                                     _%rest260519%_
                                     (cons _%path260520%_
                                           _%result260499%_))))))
                        (if (pair? _%rest260500260508%_)
                            (let ((_%hd260505260525%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest260500260508%_)))
                                  (_%tl260506260527%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest260500260508%_))))
                              (let* ((_%path260530%_ _%hd260505260525%_)
                                     (_%rest260532%_ _%tl260506260527%_))
                                (_%K260504260522%_
                                 _%rest260532%_
                                 _%path260530%_)))
                            (_%else260502260516%_))))))
                 (_%compile-stub260309%_
                  (lambda (_%output-scm260316%_ _%output-bin260317%_)
                    (let* ((_%gerbil-home260319%_
                            (let ((__tmp260883
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260883)))
                           (_%gerbil-libdir260321%_
                            (path-expand '"lib" _%gerbil-home260319%_))
                           (_%gerbil-staticdir260323%_
                            (path-expand '"static" _%gerbil-libdir260321%_))
                           (_%deps260325%_
                            (gxc#find-runtime-module-deps _%ctx260295%_))
                           (_%libgerbil-deps260327%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?260304%_
                               _%deps260325%_)))
                           (_%libgerbil-scm260329%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps260327%_)))
                           (_%libgerbil-scm260331%_
                            (_%fold-libgerbil-runtime-scm260307%_
                             _%gerbil-staticdir260323%_
                             _%libgerbil-scm260329%_))
                           (_%libgerbil-c260333%_
                            (map _%replace-extension-with-c260301%_
                                 _%libgerbil-scm260331%_))
                           (_%libgerbil-o260335%_
                            (map _%replace-extension-with-object260302%_
                                 _%libgerbil-scm260331%_))
                           (_%src-deps260337%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?260303%_
                               _%deps260325%_)))
                           (_%src-deps-scm260339%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps260337%_)))
                           (_%src-deps-scm260341%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?260306%_
                               _%src-deps-scm260339%_)))
                           (_%src-deps-scm260343%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm260341%_)))
                           (_%src-deps-c260345%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c260301%_
                                     _%src-deps-scm260343%_)))
                           (_%src-deps-o260347%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object260302%_
                                     _%src-deps-scm260343%_)))
                           (_%src-bin-scm260349%_
                            (gxc#find-static-module-file _%ctx260295%_))
                           (_%src-bin-scm260351%_
                            (path-expand _%src-bin-scm260349%_))
                           (_%src-bin-c260353%_
                            (_%replace-extension-with-c260301%_
                             _%src-bin-scm260351%_))
                           (_%src-bin-o260355%_
                            (_%replace-extension-with-object260302%_
                             _%src-bin-scm260351%_))
                           (_%output-bin260357%_
                            (path-expand _%output-bin260317%_))
                           (_%output-scm260359%_
                            (path-expand _%output-scm260316%_))
                           (_%output-c260361%_
                            (_%replace-extension-with-c260301%_
                             _%output-scm260359%_))
                           (_%output-o260363%_
                            (_%replace-extension-with-object260302%_
                             _%output-scm260359%_))
                           (_%output_-c260365%_
                            (_%replace-extension260300%_
                             _%output-scm260359%_
                             '"_.c"))
                           (_%output_-o260367%_
                            (_%replace-extension260300%_
                             _%output-scm260359%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts260369%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts260371%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts260373%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir260323%_))
                           (_%output-ld-opts260375%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts260377%_
                            (_%get-libgerbil-ld-opts260299%_
                             _%gerbil-libdir260321%_))
                           (_%rpath260379%_
                            (gxc#gerbil-rpath _%gerbil-libdir260321%_))
                           (_%builtin-modules260383%_
                            (_%remove-duplicates260308%_
                             (let ((__tmp260884
                                    (let ((__tmp260886
                                           (lambda (_%mod260381%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod260381%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp260885
                                           (cons _%ctx260295%_
                                                 _%deps260325%_)))
                                      (declare (not safe))
                                      (##map __tmp260886 __tmp260885))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp260884)))))
                      (letrec ((_%compile-obj260386%_
                                (lambda (_%scm-path260393%_ _%c-path260394%_)
                                  (let* ((_%o-path260396%_
                                          (_%replace-extension260300%_
                                           _%c-path260394%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock260398%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path260396%_
                                             '".lock")))
                                         (_%locked260400%_ '#f)
                                         (_%unlock260403%_
                                          (lambda ()
                                            (close-port _%locked260400%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock260398%_)))))
                                    (let _%retry260406%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock260398%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry260406%_))
                                          (begin
                                            (set! _%locked260400%_
                                                  (let* ((_%handler260409%_
                                                          false)
                                                         (_%thunk260413%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock260398%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler260418%_ _%handler260409%_)
                 (_%thunk260474%_ _%thunk260413%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler260418%_
                                                     _%thunk260474%_)))
                                            (if _%locked260400%_
                                                '#!void
                                                (_%retry260406%_)))))
                                    (let ((__tmp260888
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path260396%_)))
                                                     (not _%scm-path260393%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path260393%_
                                                        _%o-path260396%_)))
                                                 (let ((_%gsc-cc-opts260491%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp260889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp260890 (cons _%c-path260394%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260890
                            _%gsc-static-opts260373%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260889 _%gsc-cc-opts260491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp260887
                                           (lambda () (_%unlock260403%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp260888
                                       __tmp260887))))))
                        (let ((__tmp260891
                               (lambda ()
                                 (let ((__tmp260892
                                        (path-directory _%output-bin260357%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp260892)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp260891))
                        (gxc#with-output-to-scheme-file
                         _%output-scm260359%_
                         (lambda ()
                           (_%generate-stub260298%_
                            _%builtin-modules260383%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it260391%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp260893
                                                   (let ((__tmp260894
                                                          (let ((__tmp260895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm260351%_
                               (cons _%output-scm260359%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260895 _%src-deps-scm260343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp260894
                                                      _%libgerbil-c260333%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp260893
                                               _%gsc-link-opts260369%_))))
                                     (for-each
                                      _%compile-obj260386%_
                                      (let ((__tmp260896
                                             (cons _%src-bin-scm260351%_
                                                   (cons _%output-scm260359%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260896
                                         _%src-deps-scm260343%_))
                                      (let ((__tmp260897
                                             (cons _%src-bin-c260353%_
                                                   (cons _%output-c260361%_
                                                         (cons _%output_-c260365%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp260897
                                         _%src-deps-c260345%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin260357%_
                                                        (let ((__tmp260898
                                                               (cons _%src-bin-o260355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o260363%_
                                   (cons _%output_-o260367%_
                                         (let ((__tmp260899
                                                (let ((__tmp260900
                                                       (let ((__tmp260902
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir260321%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts260377%_))))
                     (__tmp260901
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath260379%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp260902 __tmp260901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp260900
                                                   _%output-ld-opts260375%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp260899
                                            _%libgerbil-o260335%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp260898 _%src-deps-o260347%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp260903
                                            (cons _%output-c260361%_
                                                  (cons _%output_-c260365%_
                                                        (cons _%output-o260363%_
                                                              (cons _%output_-o260367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp260903)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it260391%_))
                                  (_%compile-it260391%_)))
                            '#!void))))))
          (let* ((_%output-bin260311%_
                  (gxc#compile-exe-output-file _%ctx260295%_ _%opts260296%_))
                 (_%output-scm260313%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin260311%_ '"__exe.scm"))))
            (_%compile-stub260309%_
             _%output-scm260313%_
             _%output-bin260311%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx260117%_ _%opts260118%_)
        (letrec ((_%reset-declare260120%_
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
                 (_%generate-stub260121%_
                  (lambda (_%deps260286%_)
                    (let ((_%mod-main260288%_
                           (gxc#find-runtime-symbol _%ctx260117%_ 'main))
                          (_%reset-decl260289%_ (_%reset-declare260120%_))
                          (_%user-decl260290%_ (_%user-declare260122%_)))
                      (for-each
                       (lambda (_%dep260292%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl260289%_))
                         (newline)
                         (if _%user-decl260290%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl260290%_))
                               (newline))
                             '#!void)
                         (let ((__tmp260904
                                (cons 'include (cons _%dep260292%_ '()))))
                           (declare (not safe))
                           (##write __tmp260904))
                         (newline))
                       _%deps260286%_)
                      (let ((__tmp260905
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main260288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp260905))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare260122%_
                  (lambda ()
                    (let* ((_%gsc-opts260191%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts260118%_)))
                           (_%gsc-prelude260193%_
                            (if _%gsc-opts260191%_
                                (member '"-prelude" _%gsc-opts260191%_)
                                '#f))
                           (_%gsc-prelude260195%_
                            (if _%gsc-prelude260193%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude260193%_)))
                                '#f)))
                      (let _%lp260198%_ ((_%rest260200%_
                                          (cons _%gsc-prelude260195%_ '()))
                                         (_%user-decls260201%_ '()))
                        (let* ((_%rest260202260210%_ _%rest260200%_)
                               (_%else260204260218%_
                                (lambda ()
                                  (if (null? _%user-decls260201%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls260201%_)))))
                               (_%K260206260274%_
                                (lambda (_%rest260221%_ _%expr260222%_)
                                  (let* ((_%expr260223260235%_ _%expr260222%_)
                                         (_%else260226260243%_
                                          (lambda ()
                                            (_%lp260198%_
                                             _%rest260221%_
                                             _%user-decls260201%_))))
                                    (let ((_%K260231260264%_
                                           (lambda (_%decls260262%_)
                                             (_%lp260198%_
                                              _%rest260221%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls260201%_
                                                 _%decls260262%_)))))
                                          (_%K260228260249%_
                                           (lambda (_%exprs260247%_)
                                             (_%lp260198%_
                                              (append _%exprs260247%_
                                                      _%rest260221%_)
                                              _%user-decls260201%_))))
                                      (if (pair? _%expr260223260235%_)
                                          (let ((_%tl260233260269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr260223260235%_)))
                                                (_%hd260232260267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr260223260235%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd260232260267%_
                                                         'declare))
                                                (let ((_%decls260272%_
                                                       _%tl260233260269%_))
                                                  (_%K260231260264%_
                                                   _%decls260272%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd260232260267%_
                                                             'begin))
                                                    (let ((_%exprs260257%_
                                                           _%tl260233260269%_))
                                                      (_%K260228260249%_
                                                       _%exprs260257%_))
                                                    (_%else260226260243%_))))
                                          (_%else260226260243%_)))))))
                          (if (pair? _%rest260202260210%_)
                              (let ((_%hd260207260277%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest260202260210%_)))
                                    (_%tl260208260279%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest260202260210%_))))
                                (let* ((_%expr260282%_ _%hd260207260277%_)
                                       (_%rest260284%_ _%tl260208260279%_))
                                  (_%K260206260274%_
                                   _%rest260284%_
                                   _%expr260282%_)))
                              (_%else260204260218%_)))))))
                 (_%compile-stub260123%_
                  (lambda (_%output-scm260130%_ _%output-bin260131%_)
                    (let* ((_%gerbil-home260133%_
                            (let ((__tmp260906
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp260906)))
                           (_%gerbil-libdir260135%_
                            (path-expand '"lib" _%gerbil-home260133%_))
                           (_%runtime260137%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp260139%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home260133%_))
                           (_%include-gambit-sharp260141%_
                            (gxc#include-source _%gambit-sharp260139%_))
                           (_%bin-scm260143%_
                            (gxc#find-static-module-file _%ctx260117%_))
                           (_%deps260145%_
                            (gxc#find-runtime-module-deps _%ctx260117%_))
                           (_%deps260147%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps260145%_)))
                           (_%deps260152%_
                            (let ((__tmp260907
                                   (lambda (_%$obj260149%_)
                                     (not (gxc#file-empty? _%$obj260149%_)))))
                              (declare (not safe))
                              (##filter __tmp260907 _%deps260147%_)))
                           (_%deps260156%_
                            (let ((__tmp260908
                                   (lambda (_%f260154%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f260154%_
                                             _%runtime260137%_))))))
                              (declare (not safe))
                              (##filter __tmp260908 _%deps260152%_)))
                           (_%output-base260158%_
                            (let ((__tmp260909
                                   (path-strip-extension
                                    _%output-scm260130%_)))
                              (declare (not safe))
                              (##string-append __tmp260909)))
                           (_%output-c260160%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base260158%_ '".c")))
                           (_%output-o260162%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base260158%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_260164%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base260158%_ '"_.c")))
                           (_%output-o_260166%_
                            (let ((__tmp260910
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base260158%_
                               __tmp260910)))
                           (_%gsc-link-opts260168%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts260170%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts260172%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir260135%_)))
                           (_%output-ld-opts260174%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros260176%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp260141%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp260141%_
                                            '()))))
                           (_%gsc-link-opts260178%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts260168%_
                               _%gsc-gx-macros260176%_)))
                           (_%rpath260180%_
                            (gxc#gerbil-rpath _%gerbil-libdir260135%_))
                           (_%default-ld-options260182%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp260911
                             (lambda ()
                               (let ((__tmp260912
                                      (path-directory _%output-bin260131%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp260912)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp260911))
                      (gxc#with-output-to-scheme-file
                       _%output-scm260130%_
                       (lambda ()
                         (_%generate-stub260121%_
                          (let ((__tmp260913
                                 (let ((__tmp260914
                                        (cons _%bin-scm260143%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp260914
                                    _%deps260156%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp260913 _%runtime260137%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it260188%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_260164%_
                                                      (let ((__tmp260915
                                                             (cons _%output-scm260130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp260915 _%gsc-link-opts260178%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp260916
                                                 (let ((__tmp260917
                                                        (cons _%output-c260160%_
                                                              (cons _%output-c_260164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp260917
                                                    _%gsc-static-opts260172%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260916
                                             _%gsc-cc-opts260170%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin260131%_
                                                      (cons _%output-o260162%_
                                                            (cons _%output-o_260166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp260918
                                 (let ((__tmp260920
                                        (cons '"-L"
                                              (cons _%gerbil-libdir260135%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options260182%_))))
                                       (__tmp260919
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath260180%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp260920 __tmp260919))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp260918
                             _%output-ld-opts260174%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it260188%_))
                                (_%compile-it260188%_)))
                          '#!void)))))
          (let* ((_%output-bin260125%_
                  (gxc#compile-exe-output-file _%ctx260117%_ _%opts260118%_))
                 (_%output-scm260127%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin260125%_ '"__exe.scm"))))
            (_%compile-stub260123%_
             _%output-scm260127%_
             _%output-bin260125%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx260066%_ _%id260067%_)
        (let ((_%$e260113%_
               (let ((__tmp260922
                      (lambda (_%e260068260070%_)
                        (let* ((_%e260068260072260082%_ _%e260068260070%_)
                               (_%else260074260090%_ (lambda () '#f))
                               (_%K260076260094%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e260068260072260082%_
                                 'gx#module-export::t))
                              (let* ((_%e260077260097%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260068260072260082%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e260078260100%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260068260072260082%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e260079260103%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e260068260072260082%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e260079260103%_ '0))
                                    (let ((_%e260080260106%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e260068260072260082%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g260108260110%_)
                                             (eq? _%g260108260110%_
                                                  _%id260067%_))
                                           _%e260080260106%_)
                                          (_%K260076260094%_)
                                          (_%else260074260090%_)))
                                    (_%else260074260090%_)))
                              (_%else260074260090%_)))))
                     (__tmp260921
                      (##structure-ref
                       _%ctx260066%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp260922 __tmp260921))))
          (if _%$e260113%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e260113%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx260057%_ _%id260058%_)
        (let ((_%$e260060%_
               (gxc#find-export-binding _%ctx260057%_ _%id260058%_)))
          (if _%$e260060%_
              ((lambda (_%bind260063%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind260063%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id260058%_)))
                 (##structure-ref _%bind260063%_ '1 gx#binding::t '#f))
               _%$e260060%_)
              (let ((__tmp260923
                     (##structure-ref
                      _%ctx260057%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp260923
                 _%id260058%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx259923%_)
        (letrec* ((_%ht259925%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template259926%_
                   (lambda (_%in260002%_ _%phi260003%_)
                     (let ((_%iphi260005%_
                            (fx+ _%phi260003%_
                                 (##direct-structure-ref
                                  _%in260002%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports260006%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in260002%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp260008%_ ((_%rest260010%_ _%imports260006%_)
                                          (_%r260011%_ '()))
                         (let* ((_%rest260012260020%_ _%rest260010%_)
                                (_%else260014260028%_ (lambda () _%r260011%_))
                                (_%K260016260045%_
                                 (lambda (_%rest260031%_ _%in260032%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in260032%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi260005%_))
                                           (_%lp260008%_
                                            _%rest260031%_
                                            (cons _%in260032%_ _%r260011%_))
                                           (_%lp260008%_
                                            _%rest260031%_
                                            _%r260011%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in260032%_
                                              'gx#module-import::t))
                                           (let ((_%iphi260036%_
                                                  (fx+ _%phi260003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in260032%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi260036%_))
                                                 (_%lp260008%_
                                                  _%rest260031%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in260032%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r260011%_))
                                                 (_%lp260008%_
                                                  _%rest260031%_
                                                  _%r260011%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in260032%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi260039%_
                                                      (fx+ _%iphi260005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in260032%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi260039%_))
                                                     (_%lp260008%_
                                                      _%rest260031%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in260032%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r260011%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi260039%_))
                                                         (_%lp260008%_
                                                          _%rest260031%_
                                                          (let ((__tmp260924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template259926%_
                          _%in260032%_
                          _%iphi260005%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r260011%_ __tmp260924)))
                 (_%lp260008%_ _%rest260031%_ _%r260011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp260008%_
                                                _%rest260031%_
                                                _%r260011%_)))))))
                           (if (pair? _%rest260012260020%_)
                               (let ((_%hd260017260048%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest260012260020%_)))
                                     (_%tl260018260050%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest260012260020%_))))
                                 (let* ((_%in260053%_ _%hd260017260048%_)
                                        (_%rest260055%_ _%tl260018260050%_))
                                   (_%K260016260045%_
                                    _%rest260055%_
                                    _%in260053%_)))
                               (_%else260014260028%_)))))))
                  (_%find-deps259927%_
                   (lambda (_%rest259935%_ _%deps259936%_)
                     (let* ((_%rest259937259945%_ _%rest259935%_)
                            (_%else259939259953%_ (lambda () _%deps259936%_))
                            (_%K259941259990%_
                             (lambda (_%rest259956%_ _%hd259957%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd259957%_
                                      'gx#module-context::t))
                                   (let ((_%id259960%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259957%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports259961%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd259957%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht259925%_
                                            _%id259960%_))
                                         (_%find-deps259927%_
                                          _%rest259956%_
                                          _%deps259936%_)
                                         (let ((_%$e259964%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd259957%_))))
                                           (if _%$e259964%_
                                               ((lambda (_%pre259967%_)
                                                  (let ((_%xdeps259969%_
                                                         (_%find-deps259927%_
                                                          (cons _%pre259967%_
                                                                _%imports259961%_)
                                                          _%deps259936%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht259925%_
                                                       _%id259960%_
                                                       _%hd259957%_))
                                                    (_%find-deps259927%_
                                                     _%rest259956%_
                                                     (cons _%hd259957%_
                                                           _%xdeps259969%_))))
                                                _%$e259964%_)
                                               (let ((_%xdeps259972%_
                                                      (_%find-deps259927%_
                                                       _%imports259961%_
                                                       _%deps259936%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht259925%_
                                                    _%id259960%_
                                                    _%hd259957%_))
                                                 (_%find-deps259927%_
                                                  _%rest259956%_
                                                  (cons _%hd259957%_
                                                        _%xdeps259972%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd259957%_
                                          'gx#prelude-context::t))
                                       (let ((_%id259975%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd259957%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht259925%_
                                                _%id259975%_))
                                             (_%find-deps259927%_
                                              _%rest259956%_
                                              _%deps259936%_)
                                             (let ((_%xdeps259979%_
                                                    (_%find-deps259927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd259957%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps259936%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht259925%_
                                                      _%id259975%_))
                                                   (_%find-deps259927%_
                                                    _%rest259956%_
                                                    _%xdeps259979%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht259925%_
                                                        _%id259975%_
                                                        _%hd259957%_))
                                                     (_%find-deps259927%_
                                                      _%rest259956%_
                                                      (cons _%hd259957%_
                                                            _%xdeps259979%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd259957%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd259957%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps259927%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259957%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259956%_)
                                                _%deps259936%_)
                                               (_%find-deps259927%_
                                                _%rest259956%_
                                                _%deps259936%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd259957%_
                                                  'gx#module-export::t))
                                               (_%find-deps259927%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd259957%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest259956%_)
                                                _%deps259936%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd259957%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd259957%_ '2 '#f '#f)))
               (_%find-deps259927%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd259957%_ '1 '#f '#f))
                      _%rest259956%_)
                _%deps259936%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd259957%_ '2 '#f '#f)))
                   (let ((_%xdeps259986%_
                          (_%import-set-template259926%_ _%hd259957%_ '0)))
                     (_%find-deps259927%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest259956%_ _%xdeps259986%_))
                      _%deps259936%_))
                   (_%find-deps259927%_ _%rest259956%_ _%deps259936%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd259957%_))))))))))
                       (if (pair? _%rest259937259945%_)
                           (let ((_%hd259942259993%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest259937259945%_)))
                                 (_%tl259943259995%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest259937259945%_))))
                             (let* ((_%hd259998%_ _%hd259942259993%_)
                                    (_%rest260000%_ _%tl259943259995%_))
                               (_%K259941259990%_
                                _%rest260000%_
                                _%hd259998%_)))
                           (_%else259939259953%_))))))
          (let ((__tmp260925
                 (filter gx#expander-context-id
                         (_%find-deps259927%_
                          (let ((_%$e259929%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx259923%_))))
                            (if _%$e259929%_
                                ((lambda (_%pre259932%_)
                                   (cons _%pre259932%_
                                         (##structure-ref
                                          _%ctx259923%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e259929%_)
                                (##structure-ref
                                 _%ctx259923%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp260925)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx259853%_)
        (let* ((_%context-id259855%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx259853%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx259853%_ '1 '#f '#f))
                    (string->symbol _%ctx259853%_)))
               (_%scm259857%_
                (let ((__tmp260926
                       (gxc#static-module-name _%context-id259855%_)))
                  (declare (not safe))
                  (##string-append __tmp260926 '".scm")))
               (_%dirs259859%_ (let () (declare (not safe)) (load-path)))
               (_%dirs259865%_
                (let ((_%user-libpath259861%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath259861%_
                      (let ((_%user-libpath259863%_
                             (path-expand '"lib" _%user-libpath259861%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath259863%_ _%dirs259859%_))
                            _%dirs259859%_
                            (cons _%user-libpath259863%_ _%dirs259859%_)))
                      _%dirs259859%_)))
               (_%dirs259875%_
                (let ((_%$e259867%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e259867%_
                      ((lambda (_%g259869259871%_)
                         (cons _%g259869259871%_ _%dirs259865%_))
                       _%$e259867%_)
                      _%dirs259865%_)))
               (_%dirs259881%_
                (let ((__tmp260927
                       (lambda (_%g259876259878%_)
                         (path-expand '"static" _%g259876259878%_))))
                  (declare (not safe))
                  (##map __tmp260927 _%dirs259875%_))))
          (let _%lp259884%_ ((_%rest259886%_ _%dirs259881%_))
            (let* ((_%rest259887259895%_ _%rest259886%_)
                   (_%else259889259903%_
                    (lambda ()
                      (let ((__tmp260928
                             (##structure-ref
                              _%ctx259853%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp260928
                         _%scm259857%_))))
                   (_%K259891259911%_
                    (lambda (_%rest259906%_ _%dir259907%_)
                      (let ((_%path259909%_
                             (path-expand _%scm259857%_ _%dir259907%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path259909%_))
                            _%path259909%_
                            (_%lp259884%_ _%rest259906%_))))))
              (if (pair? _%rest259887259895%_)
                  (let ((_%hd259892259914%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259887259895%_)))
                        (_%tl259893259916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259887259895%_))))
                    (let* ((_%dir259919%_ _%hd259892259914%_)
                           (_%rest259921%_ _%tl259893259916%_))
                      (_%K259891259911%_ _%rest259921%_ _%dir259919%_)))
                  (_%else259889259903%_)))))))
    (define gxc#file-empty?
      (lambda (_%path259851%_)
        (zero? (let ((__tmp260929 (file-info _%path259851%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp260929)))))
    (define gxc#compile-top-module
      (lambda (_%ctx259842%_)
        (let ((__tmp260930
               (lambda ()
                 (let ((__tmp260931
                        (lambda ()
                          (let ((__tmp260932
                                 (lambda ()
                                   (let ((__tmp260934
                                          (lambda ()
                                            (let ((__tmp260936
                                                   (lambda ()
                                                     (let ((__tmp260938
                                                            (lambda ()
                                                              (let ((__tmp260939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx259842%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp260939))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp260940
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx259842%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp260940))
                          '#!void)
                      (gxc#collect-bindings _%ctx259842%_)
                      (gxc#compile-runtime-code _%ctx259842%_)
                      (gxc#compile-meta-code _%ctx259842%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx259842%_)
                          '#!void)))
                   (__tmp260937
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
                __tmp260938
                gxc#current-compile-runtime-names
                __tmp260937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp260935
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp260936
                                               gxc#current-compile-runtime-sections
                                               __tmp260935))))
                                         (__tmp260933
                                          (let ((__obj260831
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj260831))
                                            __obj260831)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp260934
                                      gxc#current-compile-symbol-table
                                      __tmp260933)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp260932
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp260931
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260930
           gx#current-expander-context
           _%ctx259842%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx259840%_)
        (let ((__tmp260941
               (##structure-ref _%ctx259840%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp260941))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx259785%_)
        (letrec ((_%compile1259787%_
                  (lambda (_%ctx259829%_)
                    (let* ((_%code259831%_
                            (##structure-ref
                             _%ctx259829%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm259835%_
                            (let ((_%idstr259833%_
                                   (let ((__tmp260942
                                          (##structure-ref
                                           _%ctx259829%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp260942))))
                              (declare (not safe))
                              (##string-append _%idstr259833%_ '"~0")))
                           (_%rtc?259837%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code259831%_))))
                      (if _%rtc?259837%_
                          (let ((__tmp260943
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp260943
                             _%ctx259829%_
                             _%rtm259835%_))
                          '#!void)
                      (_%generate-runtime-code259789%_
                       _%ctx259829%_
                       _%code259831%_
                       (if _%rtc?259837%_ _%rtm259835%_ '#f)))))
                 (_%context-timestamp259788%_
                  (lambda (_%ctx259827%_)
                    (let ((__tmp260944
                           (let ((__tmp260945
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx259827%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp260945 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp260944))))
                 (_%generate-runtime-code259789%_
                  (lambda (_%ctx259796%_ _%code259797%_ _%rtm259798%_)
                    (let* ((_%runtime-code?259800%_ (if _%rtm259798%_ '#t '#f))
                           (_%lifts259802%_ (box '()))
                           (_%runtime-code259808%_
                            (if _%runtime-code?259800%_
                                (let ((__tmp260946
                                       (lambda ()
                                         (let ((__tmp260947
                                                (lambda ()
                                                  (let ((__tmp260948
                                                         (lambda ()
                                                           (let ((__tmp260950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code259797%_))))
                         (__tmp260949
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp260950
                      gxc#current-compile-marks
                      __tmp260949)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp260948
                                                     gxc#current-compile-lift
                                                     _%lifts259802%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp260947
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp260946
                                   gx#current-expander-context
                                   _%ctx259796%_))
                                '#f))
                           (_%runtime-code259810%_
                            (if _%runtime-code?259800%_
                                (if (null? (unbox _%lifts259802%_))
                                    _%runtime-code259808%_
                                    (cons 'begin
                                          (let ((__tmp260952
                                                 (cons _%runtime-code259808%_
                                                       '()))
                                                (__tmp260951
                                                 (reverse (unbox _%lifts259802%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp260952
                                             __tmp260951))))
                                '#f))
                           (_%runtime-code259812%_
                            (if _%runtime-code?259800%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp259788%_
                                                         _%ctx259796%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code259810%_ '())))
                                '#f))
                           (_%loader-code259815%_
                            (let ((__tmp260953
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code259797%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp260953
                               gx#current-expander-context
                               _%ctx259796%_)))
                           (_%loader-code259817%_
                            (cons 'begin
                                  (cons _%loader-code259815%_
                                        (cons (if _%runtime-code?259800%_
                                                  (cons 'load-module
                                                        (cons _%rtm259798%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0259819%_
                            (gxc#compile-output-file _%ctx259796%_ '0 '".scm"))
                           (_%scmrt259821%_
                            (gxc#compile-output-file
                             _%ctx259796%_
                             '#f
                             '".scm"))
                           (_%scms259823%_
                            (gxc#compile-static-output-file _%ctx259796%_)))
                      (if _%runtime-code?259800%_
                          (gxc#compile-scm-file__0
                           _%scm0259819%_
                           _%runtime-code259812%_)
                          '#!void)
                      (let ((__tmp260954
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt259821%_
                                _%loader-code259817%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp260954
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms259823%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms259823%_))
                          '#!void)
                      (if _%runtime-code?259800%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0259819%_ _%scms259823%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms259823%_ void)))))))
          (let* ((_%all-modules259791%_
                  (cons _%ctx259785%_ (gxc#lift-nested-modules _%ctx259785%_)))
                 (__tmp260955
                  (lambda (_%ctx259793%_)
                    (let ((__tmp260956
                           (lambda () (_%compile1259787%_ _%ctx259793%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp260956
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp260955 _%all-modules259791%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx259684%_)
        (letrec ((_%compile-ssi259686%_
                  (lambda (_%code259753%_)
                    (let* ((_%path259755%_
                            (gxc#compile-output-file
                             _%ctx259684%_
                             '#f
                             '".ssi"))
                           (_%prelude259767%_
                            (let* ((_%super259757%_
                                    (##structure-ref
                                     _%ctx259684%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e259759%_
                                    (##structure-ref
                                     _%super259757%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e259759%_
                                  ((lambda (_%g259761259763%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g259761259763%_)))
                                   _%$e259759%_)
                                  ':<root>)))
                           (_%ns259769%_
                            (##structure-ref
                             _%ctx259684%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr259771%_
                            (symbol->string
                             (##structure-ref
                              _%ctx259684%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg259779%_
                            (let ((_%$e259773%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr259771%_ '#\/))))
                              (if _%$e259773%_
                                  ((lambda (_%x259776%_)
                                     (let ((__tmp260957
                                            (substring
                                             _%idstr259771%_
                                             '0
                                             _%x259776%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp260957)))
                                   _%$e259773%_)
                                  '#f)))
                           (_%rt259781%_
                            (let ((__tmp260958
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp260958 _%ctx259684%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path259755%_))
                      (gxc#with-output-to-scheme-file
                       _%path259755%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude259767%_))
                         (if _%pkg259779%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg259779%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns259769%_))
                         (newline)
                         (pretty-print _%code259753%_)
                         (if _%rt259781%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt259781%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi259687%_
                  (lambda (_%part259692%_)
                    (let* ((_%part259693259706%_ _%part259692%_)
                           (_%E259695259710%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part259693259706%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K259696259722%_
                            (lambda (_%code259713%_
                                     _%n259714%_
                                     _%phi259715%_
                                     _%phi-ctx259716%_)
                              (let ((_%code259720%_
                                     (let ((__tmp260959
                                            (lambda ()
                                              (let ((__tmp260960
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code259713%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp260960
                                                 gx#current-expander-phi
                                                 _%phi259715%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp260959
                                        gx#current-expander-context
                                        _%phi-ctx259716%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx259684%_
                                  _%n259714%_
                                  '".scm")
                                 _%code259720%_
                                 '#t)))))
                      (if (pair? _%part259693259706%_)
                          (let ((_%hd259697259725%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part259693259706%_)))
                                (_%tl259698259727%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part259693259706%_))))
                            (let ((_%phi-ctx259730%_ _%hd259697259725%_))
                              (if (pair? _%tl259698259727%_)
                                  (let ((_%hd259699259732%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259698259727%_)))
                                        (_%tl259700259734%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259698259727%_))))
                                    (let ((_%phi259737%_ _%hd259699259732%_))
                                      (if (pair? _%tl259700259734%_)
                                          (let ((_%hd259701259739%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl259700259734%_)))
                                                (_%tl259702259741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl259700259734%_))))
                                            (let ((_%n259744%_
                                                   _%hd259701259739%_))
                                              (if (pair? _%tl259702259741%_)
                                                  (let ((_%hd259703259746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl259702259741%_)))
                                                        (_%tl259704259748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl259702259741%_))))
                                                    (let ((_%code259751%_
                                                           _%hd259703259746%_))
                                                      (if (null? _%tl259704259748%_)
                                                          (_%K259696259722%_
                                                           _%code259751%_
                                                           _%n259744%_
                                                           _%phi259737%_
                                                           _%phi-ctx259730%_)
                                                          (_%E259695259710%_))))
                                                  (_%E259695259710%_))))
                                          (_%E259695259710%_))))
                                  (_%E259695259710%_))))
                          (_%E259695259710%_))))))
          (let ((_g260961_ (gxc#generate-meta-code _%ctx259684%_)))
            (begin
              (let ((_g260962_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g260961_)
                           (##values-length _g260961_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g260962_ 2)))
                    (error "Context expects 2 values" _g260962_)))
              (let ((_%ssi-code259689%_
                     (let () (declare (not safe)) (##values-ref _g260961_ 0)))
                    (_%phi-code259690%_
                     (let () (declare (not safe)) (##values-ref _g260961_ 1))))
                (begin
                  (_%compile-ssi259686%_ _%ssi-code259689%_)
                  (for-each _%compile-phi259687%_ _%phi-code259690%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx259666%_)
        (let* ((_%path259668%_
                (gxc#compile-output-file _%ctx259666%_ '#f '".ssxi.ss"))
               (_%code259670%_
                (let ((__tmp260963
                       (##structure-ref
                        _%ctx259666%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp260963)))
               (_%idstr259672%_
                (symbol->string
                 (##structure-ref
                  _%ctx259666%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg259680%_
                (let ((_%$e259674%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr259672%_ '#\/))))
                  (if _%$e259674%_
                      ((lambda (_%x259677%_)
                         (let ((__tmp260964
                                (substring _%idstr259672%_ '0 _%x259677%_)))
                           (declare (not safe))
                           (##string->symbol __tmp260964)))
                       _%$e259674%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path259668%_))
          (gxc#with-output-to-scheme-file
           _%path259668%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg259680%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg259680%_))
                 '#!void)
             (newline)
             (pretty-print _%code259670%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx259659%_)
        (let* ((_%state259661%_
                (let ((__obj260832
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj260832 _%ctx259659%_))
                  __obj260832))
               (_%ssi-code259663%_
                (let ((__tmp260965
                       (##structure-ref
                        _%ctx259659%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state259661%_
                   __tmp260965))))
          (values _%ssi-code259663%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state259661%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx259651%_)
        (let* ((_%lifts259653%_ (box '()))
               (__tmp260966
                (lambda ()
                  (let ((__tmp260968
                         (lambda ()
                           (let ((_%code259657%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx259651%_))))
                             (if (null? (unbox _%lifts259653%_))
                                 _%code259657%_
                                 (cons 'begin
                                       (let ((__tmp260970
                                              (cons _%code259657%_ '()))
                                             (__tmp260969
                                              (reverse (unbox _%lifts259653%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp260970
                                          __tmp260969)))))))
                        (__tmp260967
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp260968
                     gxc#current-compile-marks
                     __tmp260967)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp260966
           gxc#current-compile-lift
           _%lifts259653%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx259647%_)
        (let ((_%modules259649%_ (box '())))
          (let ((__tmp260971
                 (##structure-ref _%ctx259647%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules259649%_ __tmp260971))
          (reverse (unbox _%modules259649%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path259627%_ _%code259628%_ _%phi?259629%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path259627%_))
        (gxc#with-output-to-scheme-file
         _%path259627%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp260972
                                           (if _%phi?259629%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp260972)))))))
           (pretty-print _%code259628%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it259633%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path259627%_ _%phi?259629%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp260973
                         (cons 'compile-file (cons _%path259627%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it259633%_ __tmp260973))
                  (_%compile-it259633%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path259638%_ _%code259639%_)
        (let ((_%phi?259641%_ '#f))
          (gxc#compile-scm-file__%
           _%path259638%_
           _%code259639%_
           _%phi?259641%_))))
    (define gxc#compile-scm-file
      (lambda _g260974_
        (let ((_g260975_ (let () (declare (not safe)) (##length _g260974_))))
          (cond ((let () (declare (not safe)) (##fx= _g260975_ 2))
                 (apply gxc#compile-scm-file__0 _g260974_))
                ((let () (declare (not safe)) (##fx= _g260975_ 3))
                 (apply gxc#compile-scm-file__% _g260974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g260974_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?259528%_)
        (let _%lp259530%_ ((_%rest259532%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts259533%_ '()))
          (let* ((_%rest259534259554%_ _%rest259532%_)
                 (_%else259538259562%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts259533%_)))
                        (reverse _%opts259533%_)))))
            (let ((_%K259548259605%_
                   (lambda (_%rest259603%_)
                     (_%lp259530%_ _%rest259603%_ _%opts259533%_)))
                  (_%K259543259587%_
                   (lambda (_%rest259585%_)
                     (_%lp259530%_ _%rest259585%_ _%opts259533%_)))
                  (_%K259540259569%_
                   (lambda (_%rest259566%_ _%opt259567%_)
                     (_%lp259530%_
                      _%rest259566%_
                      (cons _%opt259567%_ _%opts259533%_)))))
              (if (pair? _%rest259534259554%_)
                  (let ((_%tl259550259610%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259534259554%_)))
                        (_%hd259549259608%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259534259554%_))))
                    (if (equal? _%hd259549259608%_ '"-cc-options")
                        (if (pair? _%tl259550259610%_)
                            (let* ((_%tl259552259613%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl259550259610%_)))
                                   (_%rest259616%_ _%tl259552259613%_))
                              (_%K259548259605%_ _%rest259616%_))
                            (let ((_%opt259577%_ _%hd259549259608%_)
                                  (_%rest259579%_ _%tl259550259610%_))
                              (_%K259540259569%_
                               _%rest259579%_
                               _%opt259577%_)))
                        (if (equal? _%hd259549259608%_ '"-ld-options")
                            (if (pair? _%tl259550259610%_)
                                (let* ((_%tl259547259595%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl259550259610%_)))
                                       (_%rest259598%_ _%tl259547259595%_))
                                  (_%K259543259587%_ _%rest259598%_))
                                (let ((_%opt259577%_ _%hd259549259608%_)
                                      (_%rest259579%_ _%tl259550259610%_))
                                  (_%K259540259569%_
                                   _%rest259579%_
                                   _%opt259577%_)))
                            (let ((_%opt259577%_ _%hd259549259608%_)
                                  (_%rest259579%_ _%tl259550259610%_))
                              (_%K259540259569%_
                               _%rest259579%_
                               _%opt259577%_)))))
                  (_%else259538259562%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?259622%_ '#f)) (gxc#gsc-link-options__% _%phi?259622%_))))
    (define gxc#gsc-link-options
      (lambda _g260976_
        (let ((_g260977_ (let () (declare (not safe)) (##length _g260976_))))
          (cond ((let () (declare (not safe)) (##fx= _g260977_ 0))
                 (apply gxc#gsc-link-options__0 _g260976_))
                ((let () (declare (not safe)) (##fx= _g260977_ 1))
                 (apply gxc#gsc-link-options__% _g260976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g260976_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords259378%_ _%static?259374259379%_ _%phi?259380%_)
        (let ((_%static?259382%_
               (if (eq? _%static?259374259379%_ absent-value)
                   '#f
                   _%static?259374259379%_)))
          (if _%phi?259380%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp259384%_ ((_%rest259386%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts259387%_ '()))
                (let* ((_%rest259388259414%_ _%rest259386%_)
                       (_%else259393259422%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts259387%_)))
                              (reverse! _%opts259387%_)))))
                  (let ((_%K259408259485%_
                         (lambda (_%rest259482%_ _%opt259483%_)
                           (if _%static?259382%_
                               (_%lp259384%_
                                _%rest259482%_
                                (cons _%opt259483%_
                                      (cons '"-cc-options" _%opts259387%_)))
                               (_%lp259384%_ _%rest259482%_ _%opts259387%_))))
                        (_%K259403259462%_
                         (lambda (_%rest259459%_ _%opt259460%_)
                           (_%lp259384%_
                            _%rest259459%_
                            (cons _%opt259460%_
                                  (cons '"-cc-options" _%opts259387%_)))))
                        (_%K259398259442%_
                         (lambda (_%rest259440%_)
                           (_%lp259384%_ _%rest259440%_ _%opts259387%_)))
                        (_%K259395259428%_
                         (lambda (_%rest259426%_)
                           (_%lp259384%_ _%rest259426%_ _%opts259387%_))))
                    (if (pair? _%rest259388259414%_)
                        (let ((_%tl259410259490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest259388259414%_)))
                              (_%hd259409259488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest259388259414%_))))
                          (if (equal? _%hd259409259488%_ '"-cc-options")
                              (if (pair? _%tl259410259490%_)
                                  (let ((_%tl259412259495%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259410259490%_)))
                                        (_%hd259411259493%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259410259490%_))))
                                    (if (equal? _%hd259411259493%_ '"-Bstatic")
                                        (let ((_%opt259498%_
                                               _%hd259411259493%_)
                                              (_%rest259500%_
                                               _%tl259412259495%_))
                                          (_%K259408259485%_
                                           _%rest259500%_
                                           _%opt259498%_))
                                        (let ((_%opt259475%_
                                               _%hd259411259493%_)
                                              (_%rest259477%_
                                               _%tl259412259495%_))
                                          (_%K259403259462%_
                                           _%rest259477%_
                                           _%opt259475%_))))
                                  (let ((_%rest259434%_ _%tl259410259490%_))
                                    (_%K259395259428%_ _%rest259434%_)))
                              (if (equal? _%hd259409259488%_ '"-ld-options")
                                  (if (pair? _%tl259410259490%_)
                                      (let* ((_%tl259402259450%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl259410259490%_)))
                                             (_%rest259453%_
                                              _%tl259402259450%_))
                                        (_%K259398259442%_ _%rest259453%_))
                                      (let ((_%rest259434%_
                                             _%tl259410259490%_))
                                        (_%K259395259428%_ _%rest259434%_)))
                                  (let ((_%rest259434%_ _%tl259410259490%_))
                                    (_%K259395259428%_ _%rest259434%_)))))
                        (_%else259393259422%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords259505%_ _%static?259374259506%_)
        (let ((_%phi?259508%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords259505%_
           _%static?259374259506%_
           _%phi?259508%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g260978_
        (let ((_g260979_ (let () (declare (not safe)) (##length _g260978_))))
          (cond ((let () (declare (not safe)) (##fx= _g260979_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g260978_))
                ((let () (declare (not safe)) (##fx= _g260979_ 3))
                 (apply gxc#gsc-cc-options__%__% _g260978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g260978_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords259517%_ . _%args259518%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords259517%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259517%_
                  'static:
                  absent-value))
               _%args259518%_)))
    (define gxc#gsc-cc-options
      (lambda _%args259375259524%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args259375259524%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords259224%_ _%static?259220259225%_ _%phi?259226%_)
        (let ((_%static?259228%_
               (if (eq? _%static?259220259225%_ absent-value)
                   '#f
                   _%static?259220259225%_)))
          (if _%phi?259226%_
              '()
              (let _%lp259230%_ ((_%rest259232%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts259233%_ '()))
                (let* ((_%rest259234259260%_ _%rest259232%_)
                       (_%else259239259268%_
                        (lambda () (reverse! _%opts259233%_))))
                  (let ((_%K259254259331%_
                         (lambda (_%rest259328%_ _%opt259329%_)
                           (if _%static?259228%_
                               (_%lp259230%_
                                _%rest259328%_
                                (cons _%opt259329%_
                                      (cons '"-ld-options" _%opts259233%_)))
                               (_%lp259230%_ _%rest259328%_ _%opts259233%_))))
                        (_%K259249259308%_
                         (lambda (_%rest259305%_ _%opt259306%_)
                           (_%lp259230%_
                            _%rest259305%_
                            (cons _%opt259306%_
                                  (cons '"-ld-options" _%opts259233%_)))))
                        (_%K259244259288%_
                         (lambda (_%rest259286%_)
                           (_%lp259230%_ _%rest259286%_ _%opts259233%_)))
                        (_%K259241259274%_
                         (lambda (_%rest259272%_)
                           (_%lp259230%_ _%rest259272%_ _%opts259233%_))))
                    (if (pair? _%rest259234259260%_)
                        (let ((_%tl259256259336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest259234259260%_)))
                              (_%hd259255259334%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest259234259260%_))))
                          (if (equal? _%hd259255259334%_ '"-ld-options")
                              (if (pair? _%tl259256259336%_)
                                  (let ((_%tl259258259341%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl259256259336%_)))
                                        (_%hd259257259339%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl259256259336%_))))
                                    (if (equal? _%hd259257259339%_ '"-static")
                                        (let ((_%opt259344%_
                                               _%hd259257259339%_)
                                              (_%rest259346%_
                                               _%tl259258259341%_))
                                          (_%K259254259331%_
                                           _%rest259346%_
                                           _%opt259344%_))
                                        (let ((_%opt259321%_
                                               _%hd259257259339%_)
                                              (_%rest259323%_
                                               _%tl259258259341%_))
                                          (_%K259249259308%_
                                           _%rest259323%_
                                           _%opt259321%_))))
                                  (let ((_%rest259280%_ _%tl259256259336%_))
                                    (_%K259241259274%_ _%rest259280%_)))
                              (if (equal? _%hd259255259334%_ '"-cc-options")
                                  (if (pair? _%tl259256259336%_)
                                      (let* ((_%tl259248259296%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl259256259336%_)))
                                             (_%rest259299%_
                                              _%tl259248259296%_))
                                        (_%K259244259288%_ _%rest259299%_))
                                      (let ((_%rest259280%_
                                             _%tl259256259336%_))
                                        (_%K259241259274%_ _%rest259280%_)))
                                  (let ((_%rest259280%_ _%tl259256259336%_))
                                    (_%K259241259274%_ _%rest259280%_)))))
                        (_%else259239259268%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords259351%_ _%static?259220259352%_)
        (let ((_%phi?259354%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords259351%_
           _%static?259220259352%_
           _%phi?259354%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g260980_
        (let ((_g260981_ (let () (declare (not safe)) (##length _g260980_))))
          (cond ((let () (declare (not safe)) (##fx= _g260981_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g260980_))
                ((let () (declare (not safe)) (##fx= _g260981_ 3))
                 (apply gxc#gsc-ld-options__%__% _g260980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g260980_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords259363%_ . _%args259364%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords259363%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259363%_
                  'static:
                  absent-value))
               _%args259364%_)))
    (define gxc#gsc-ld-options
      (lambda _%args259221259370%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args259221259370%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir259215%_)
        (let ((_%user-staticdir259217%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir259215%_
                       '" -I "
                       _%user-staticdir259217%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp259127%_ ((_%rest259129%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts259130%_ '()))
          (let* ((_%rest259131259151%_ _%rest259129%_)
                 (_%else259135259159%_ (lambda () _%opts259130%_)))
            (let ((_%K259145259202%_
                   (lambda (_%rest259200%_)
                     (_%lp259127%_ _%rest259200%_ _%opts259130%_)))
                  (_%K259140259180%_
                   (lambda (_%rest259177%_ _%opt259178%_)
                     (_%lp259127%_
                      _%rest259177%_
                      (let ((__tmp260982
                             (let ((__tmp260983
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt259178%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp260983))))
                        (declare (not safe))
                        (##append _%opts259130%_ __tmp260982)))))
                  (_%K259137259165%_
                   (lambda (_%rest259163%_)
                     (_%lp259127%_ _%rest259163%_ _%opts259130%_))))
              (if (pair? _%rest259131259151%_)
                  (let ((_%tl259147259207%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest259131259151%_)))
                        (_%hd259146259205%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest259131259151%_))))
                    (if (equal? _%hd259146259205%_ '"-cc-options")
                        (if (pair? _%tl259147259207%_)
                            (let* ((_%tl259149259210%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl259147259207%_)))
                                   (_%rest259213%_ _%tl259149259210%_))
                              (_%K259145259202%_ _%rest259213%_))
                            (let ((_%rest259171%_ _%tl259147259207%_))
                              (_%K259137259165%_ _%rest259171%_)))
                        (if (equal? _%hd259146259205%_ '"-ld-options")
                            (if (pair? _%tl259147259207%_)
                                (let ((_%tl259144259190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl259147259207%_)))
                                      (_%hd259143259188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl259147259207%_))))
                                  (let ((_%opt259193%_ _%hd259143259188%_)
                                        (_%rest259195%_ _%tl259144259190%_))
                                    (_%K259140259180%_
                                     _%rest259195%_
                                     _%opt259193%_)))
                                (let ((_%rest259171%_ _%tl259147259207%_))
                                  (_%K259137259165%_ _%rest259171%_)))
                            (let ((_%rest259171%_ _%tl259147259207%_))
                              (_%K259137259165%_ _%rest259171%_)))))
                  (_%else259135259159%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str259124%_)
        (not (let () (declare (not safe)) (string-empty? _%str259124%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path259117%_ _%phi?259118%_)
        (let ((_%gsc-link-opts259120%_
               (gxc#gsc-link-options__% _%phi?259118%_))
              (_%gsc-cc-opts259121%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?259118%_))
              (_%gsc-ld-opts259122%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?259118%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp260984
                  (let ((__tmp260985
                         (let ((__tmp260986 (cons _%path259117%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp260986
                            _%gsc-link-opts259120%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp260985 _%gsc-ld-opts259122%_))))
             (declare (not safe))
             (foldr__0 cons __tmp260984 _%gsc-cc-opts259121%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx259083%_ _%n259084%_ _%ext259085%_)
        (letrec ((_%module-relative-path259087%_
                  (lambda (_%ctx259115%_)
                    (path-strip-directory
                     (let ((__tmp260987
                            (##structure-ref
                             _%ctx259115%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp260987)))))
                 (_%module-source-directory259088%_
                  (lambda (_%ctx259111%_)
                    (path-directory
                     (let ((_%mpath259113%_
                            (##structure-ref
                             _%ctx259111%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath259113%_)
                           _%mpath259113%_
                           (last _%mpath259113%_))))))
                 (_%section-string259089%_
                  (lambda (_%n259105%_)
                    (if (number? _%n259105%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n259105%_))
                        (if (symbol? _%n259105%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n259105%_))
                            (if (string? _%n259105%_)
                                _%n259105%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n259105%_)))))))
                 (_%file-name259090%_
                  (lambda (_%path259103%_)
                    (if _%n259084%_
                        (string-append
                         _%path259103%_
                         '"~"
                         (_%section-string259089%_ _%n259084%_)
                         _%ext259085%_)
                        (string-append _%path259103%_ _%ext259085%_))))
                 (_%file-path259091%_
                  (lambda ()
                    (let ((_%$e259097%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e259097%_
                          ((lambda (_%outdir259100%_)
                             (path-expand
                              (_%file-name259090%_
                               (let ((__tmp260988
                                      (##structure-ref
                                       _%ctx259083%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp260988)))
                              _%outdir259100%_))
                           _%$e259097%_)
                          (path-expand
                           (_%file-name259090%_
                            (_%module-relative-path259087%_ _%ctx259083%_))
                           (_%module-source-directory259088%_
                            _%ctx259083%_)))))))
          (let ((_%path259093%_ (_%file-path259091%_)))
            (let ((__tmp260989
                   (lambda ()
                     (let ((__tmp260990 (path-directory _%path259093%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp260990)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260989))
            _%path259093%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx259064%_)
        (letrec ((_%file-name259066%_
                  (lambda (_%id259081%_)
                    (let ((__tmp260991 (gxc#static-module-name _%id259081%_)))
                      (declare (not safe))
                      (##string-append __tmp260991 '".scm"))))
                 (_%file-path259067%_
                  (lambda ()
                    (let* ((_%file259073%_
                            (_%file-name259066%_
                             (##structure-ref
                              _%ctx259064%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e259075%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e259075%_
                          ((lambda (_%outdir259078%_)
                             (path-expand
                              _%file259073%_
                              (path-expand '"static" _%outdir259078%_)))
                           _%$e259075%_)
                          (path-expand _%file259073%_ '"static"))))))
          (let ((_%path259069%_ (_%file-path259067%_)))
            (let ((__tmp260992
                   (lambda ()
                     (let ((__tmp260993 (path-directory _%path259069%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp260993)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp260992))
            _%path259069%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx259057%_ _%opts259058%_)
        (let ((_%$e259060%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts259058%_))))
          (if _%$e259060%_
              _%$e259060%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx259057%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr259047%_)
        (if (string? _%idstr259047%_)
            (let* ((_%str259050%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr259047%_)))
                   (_%strs259052%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str259050%_ '#\/))))
              (declare (not safe))
              (string-join _%strs259052%_ '"__"))
            (if (symbol? _%idstr259047%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr259047%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr259047%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp260994
               (let ((__tmp260995 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp260995 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp260994))))
    (define gxc#invoke__%
      (lambda (_%@@keywords259013%_
               _%stdout-redirection259009259014%_
               _%stderr-redirection259010259015%_
               _%program259016%_
               _%args259017%_)
        (let* ((_%stdout-redirection259019%_
                (if (eq? _%stdout-redirection259009259014%_ absent-value)
                    '#f
                    _%stdout-redirection259009259014%_))
               (_%stderr-redirection259021%_
                (if (eq? _%stderr-redirection259010259015%_ absent-value)
                    '#f
                    _%stderr-redirection259010259015%_)))
          (let ((__tmp260996 (cons _%program259016%_ _%args259017%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp260996))
          (let* ((_%proc259023%_
                  (open-process
                   (cons 'path:
                         (cons _%program259016%_
                               (cons 'arguments:
                                     (cons _%args259017%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection259019%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection259021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output259028%_
                  (if (or _%stdout-redirection259019%_
                          _%stderr-redirection259021%_)
                      (read-line _%proc259023%_ '#f)
                      '#f))
                 (_%status259031%_ (process-status _%proc259023%_)))
            (let () (declare (not safe)) (##close-port _%proc259023%_))
            (if (zero? _%status259031%_)
                '#!void
                (begin
                  (display _%output259028%_)
                  (let ((__tmp260997 (cons _%program259016%_ _%args259017%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp260997
                     _%status259031%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords259036%_ . _%args259037%_)
        (apply gxc#invoke__%
               _%@@keywords259036%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259036%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords259036%_
                  'stderr-redirection:
                  absent-value))
               _%args259037%_)))
    (define gxc#invoke
      (lambda _%args259011259043%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args259011259043%_)))))
