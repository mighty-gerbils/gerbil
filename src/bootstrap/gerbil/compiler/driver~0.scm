(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1756156308)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp210829 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp210829))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp210830 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp210830))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path210686%_ _%fun210687%_)
        (with-output-to-file
         (cons 'path: (cons _%path210686%_ gxc#scheme-file-settings))
         _%fun210687%_)))
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
      (lambda (_%gerbil-libdir210681%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir210681%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path210679%_)
        (let ((__tmp210831 (object->string _%path210679%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp210831 '")"))))
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
      (lambda (_%dir210677%_) (delete-file-or-directory _%dir210677%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath210621%_ _%opts210622%_)
        (if (string? _%srcpath210621%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath210621%_)))
        (let* ((_%outdir210624%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts210622%_)))
               (_%invoke-gsc?210626%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts210622%_)))
               (_%target210631%_
                (let ((_%$e210628%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts210622%_))))
                  (if _%$e210628%_ _%$e210628%_ 'C)))
               (_%gsc-options210636%_
                (append (cons '"-target"
                              (cons (symbol->string _%target210631%_) '()))
                        (let ((_%$e210633%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts210622%_))))
                          (if _%$e210633%_ _%$e210633%_ '()))))
               (_%keep-scm?210638%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts210622%_)))
               (_%verbosity210640%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts210622%_)))
               (_%optimize210642%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts210622%_)))
               (_%debug210644%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts210622%_)))
               (_%gen-ssxi210646%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts210622%_)))
               (_%parallel?210648%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts210622%_))))
          (if _%outdir210624%_
              (let ((__tmp210832
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir210624%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp210832))
              '#!void)
          (if _%optimize210642%_
              (let ((__tmp210833
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp210833))
              '#!void)
          (let ((__tmp210834
                 (lambda ()
                   (let ((__tmp210835
                          (lambda ()
                            (let ((__tmp210836
                                   (lambda ()
                                     (let ((__tmp210837
                                            (lambda ()
                                              (let ((__tmp210838
                                                     (lambda ()
                                                       (let ((__tmp210839
                                                              (lambda ()
                                                                (let ((__tmp210840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp210841
                                        (lambda ()
                                          (let ((__tmp210842
                                                 (lambda ()
                                                   (let ((__tmp210844
                                                          (lambda ()
                                                            (let ((__tmp210846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp210847
                                    (lambda ()
                                      (let ((__tmp210848
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath210621%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp210849
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath210621%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp210849))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp210848
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp210847
                                gxc#current-compile-parallel
                                _%parallel?210648%_))))
                          (__tmp210845
                           (cons (cons 'compile-module
                                       (cons _%srcpath210621%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp210846
                       gxc#current-compile-context
                       __tmp210845))))
                 (__tmp210843 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp210844
                                                      gxc#current-compile-timestamp
                                                      __tmp210843)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp210842
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi210646%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp210841
                                    gxc#current-compile-debug
                                    _%debug210644%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp210840
                           gxc#current-compile-optimize
                           _%optimize210642%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp210839
                  gxc#current-compile-verbose
                  _%verbosity210640%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp210838
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?210638%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp210837
                                        gxc#current-compile-gsc-options
                                        _%gsc-options210636%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp210836
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?210626%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp210835
                      gx#current-compilation-target
                      _%target210631%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210834
             gxc#current-compile-output-dir
             _%outdir210624%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath210670%_)
        (let ((_%opts210672%_ '()))
          (gxc#compile-module__% _%srcpath210670%_ _%opts210672%_))))
    (define gxc#compile-module
      (lambda _g210850_
        (let ((_g210851_ (let () (declare (not safe)) (##length _g210850_))))
          (cond ((let () (declare (not safe)) (##fx= _g210851_ 1))
                 (apply gxc#compile-module__0 _g210850_))
                ((let () (declare (not safe)) (##fx= _g210851_ 2))
                 (apply gxc#compile-module__% _g210850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g210850_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath210571%_ _%opts210572%_)
        (if (string? _%srcpath210571%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath210571%_)))
        (let* ((_%outdir210574%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts210572%_)))
               (_%invoke-gsc?210576%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts210572%_)))
               (_%target210581%_
                (let ((_%$e210578%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts210572%_))))
                  (if _%$e210578%_ _%$e210578%_ 'C)))
               (_%gsc-options210586%_
                (append (cons '"-target"
                              (cons (symbol->string _%target210581%_) '()))
                        (let ((_%$e210583%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts210572%_))))
                          (if _%$e210583%_ _%$e210583%_ '()))))
               (_%keep-scm?210588%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts210572%_)))
               (_%verbosity210590%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts210572%_)))
               (_%debug210592%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts210572%_)))
               (_%parallel?210594%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts210572%_))))
          (if _%outdir210574%_
              (let ((__tmp210852
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir210574%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp210852))
              '#!void)
          (let ((__tmp210853
                 (lambda ()
                   (let ((__tmp210854
                          (lambda ()
                            (let ((__tmp210855
                                   (lambda ()
                                     (let ((__tmp210856
                                            (lambda ()
                                              (let ((__tmp210857
                                                     (lambda ()
                                                       (let ((__tmp210858
                                                              (lambda ()
                                                                (let ((__tmp210859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp210861
                                        (lambda ()
                                          (let ((__tmp210863
                                                 (lambda ()
                                                   (let ((__tmp210864
                                                          (lambda ()
                                                            (let ((__tmp210865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath210571%_))
                             (gxc#compile-executable-module
                              (let ((__tmp210866
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath210571%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp210866))
                              _%opts210572%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp210865
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp210864
                                                      gxc#current-compile-parallel
                                                      _%parallel?210594%_))))
                                                (__tmp210862
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath210571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp210863
                                             gxc#current-compile-context
                                             __tmp210862))))
                                       (__tmp210860 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp210861
                                    gxc#current-compile-timestamp
                                    __tmp210860)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp210859
                           gxc#current-compile-debug
                           _%debug210592%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp210858
                  gxc#current-compile-verbose
                  _%verbosity210590%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp210857
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?210588%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp210856
                                        gxc#current-compile-gsc-options
                                        _%gsc-options210586%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp210855
                               gx#current-compilation-target
                               _%target210581%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp210854
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?210576%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210853
             gxc#current-compile-output-dir
             _%outdir210574%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath210613%_)
        (let ((_%opts210615%_ '()))
          (gxc#compile-exe__% _%srcpath210613%_ _%opts210615%_))))
    (define gxc#compile-exe
      (lambda _g210867_
        (let ((_g210868_ (let () (declare (not safe)) (##length _g210867_))))
          (cond ((let () (declare (not safe)) (##fx= _g210868_ 1))
                 (apply gxc#compile-exe__0 _g210867_))
                ((let () (declare (not safe)) (##fx= _g210868_ 2))
                 (apply gxc#compile-exe__% _g210867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g210867_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx210567%_ _%opts210568%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts210568%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx210567%_
             _%opts210568%_)
            (gxc#compile-executable-module/separate
             _%ctx210567%_
             _%opts210568%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx210367%_ _%opts210368%_)
        (letrec ((_%generate-stub210370%_
                  (lambda (_%builtin-modules210563%_)
                    (let ((_%mod-main210565%_
                           (gxc#find-runtime-symbol _%ctx210367%_ 'main)))
                      (let ((__tmp210869
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules210563%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp210869))
                      (let ((__tmp210870
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main210565%_
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
                        (##write __tmp210870))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts210371%_
                  (lambda (_%gerbil-libdir210561%_)
                    (let ((__tmp210871
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir210561%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp210871 read))))
                 (_%replace-extension210372%_
                  (lambda (_%path210558%_ _%ext210559%_)
                    (string-append
                     (path-strip-extension _%path210558%_)
                     _%ext210559%_)))
                 (_%replace-extension-with-c210373%_
                  (lambda (_%path210556%_)
                    (_%replace-extension210372%_ _%path210556%_ '".c")))
                 (_%replace-extension-with-object210374%_
                  (lambda (_%path210554%_)
                    (_%replace-extension210372%_
                     _%path210554%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?210375%_
                  (lambda (_%ctx210552%_)
                    (if (_%exclude-module?210377%_ _%ctx210552%_)
                        '#f
                        (not (_%libgerbil-module?210376%_ _%ctx210552%_)))))
                 (_%libgerbil-module?210376%_
                  (lambda (_%ctx210545%_)
                    (let ((_%id-str210547%_
                           (symbol->string
                            (##structure-ref
                             _%ctx210545%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?210377%_ _%id-str210547%_)
                          '#f
                          (let ((_%$e210549%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str210547%_))))
                            (if _%$e210549%_
                                _%$e210549%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str210547%_))))))))
                 (_%exclude-module?210377%_
                  (lambda (_%ctx-or-str210541%_)
                    (let ((_%str210543%_
                           (if (string? _%ctx-or-str210541%_)
                               _%ctx-or-str210541%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str210541%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str210543%_))))
                 (_%not-file-empty?210378%_
                  (lambda (_%path210539%_)
                    (not (gxc#file-empty? _%path210539%_))))
                 (_%fold-libgerbil-runtime-scm210379%_
                  (lambda (_%gerbil-staticdir210532%_ _%libgerbil-scm210533%_)
                    (let ((_%gerbil-runtime-scm210537%_
                           (let ((__tmp210872
                                  (lambda (_%rtm210535%_)
                                    (path-expand
                                     (let ((__tmp210873
                                            (let ((__tmp210874
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm210535%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp210874
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp210873 '".scm"))
                                     _%gerbil-staticdir210532%_))))
                             (declare (not safe))
                             (##map __tmp210872 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates210380%_
                       (append _%gerbil-runtime-scm210537%_
                               _%libgerbil-scm210533%_)))))
                 (_%remove-duplicates210380%_
                  (lambda (_%strlst210492%_)
                    (let _%loop210494%_ ((_%rest210496%_ _%strlst210492%_)
                                         (_%result210497%_ '()))
                      (let* ((_%rest210498210506%_ _%rest210496%_)
                             (_%else210500210514%_
                              (lambda () (reverse! _%result210497%_)))
                             (_%K210502210520%_
                              (lambda (_%rest210517%_ _%path210518%_)
                                (if (member _%path210518%_ _%result210497%_)
                                    (_%loop210494%_
                                     _%rest210517%_
                                     _%result210497%_)
                                    (_%loop210494%_
                                     _%rest210517%_
                                     (cons _%path210518%_
                                           _%result210497%_))))))
                        (if (pair? _%rest210498210506%_)
                            (let ((_%hd210503210523%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest210498210506%_)))
                                  (_%tl210504210525%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest210498210506%_))))
                              (let* ((_%path210528%_ _%hd210503210523%_)
                                     (_%rest210530%_ _%tl210504210525%_))
                                (_%K210502210520%_
                                 _%rest210530%_
                                 _%path210528%_)))
                            (_%else210500210514%_))))))
                 (_%compile-stub210381%_
                  (lambda (_%output-scm210388%_ _%output-bin210389%_)
                    (let* ((_%gerbil-home210391%_
                            (let ((__tmp210875
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp210875)))
                           (_%gerbil-libdir210393%_
                            (path-expand '"lib" _%gerbil-home210391%_))
                           (_%gerbil-staticdir210395%_
                            (path-expand '"static" _%gerbil-libdir210393%_))
                           (_%deps210397%_
                            (gxc#find-runtime-module-deps _%ctx210367%_))
                           (_%libgerbil-deps210399%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?210376%_
                               _%deps210397%_)))
                           (_%libgerbil-scm210401%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps210399%_)))
                           (_%libgerbil-scm210403%_
                            (_%fold-libgerbil-runtime-scm210379%_
                             _%gerbil-staticdir210395%_
                             _%libgerbil-scm210401%_))
                           (_%libgerbil-c210405%_
                            (map _%replace-extension-with-c210373%_
                                 _%libgerbil-scm210403%_))
                           (_%libgerbil-o210407%_
                            (map _%replace-extension-with-object210374%_
                                 _%libgerbil-scm210403%_))
                           (_%src-deps210409%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?210375%_
                               _%deps210397%_)))
                           (_%src-deps-scm210411%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps210409%_)))
                           (_%src-deps-scm210413%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?210378%_
                               _%src-deps-scm210411%_)))
                           (_%src-deps-scm210415%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm210413%_)))
                           (_%src-deps-c210417%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c210373%_
                                     _%src-deps-scm210415%_)))
                           (_%src-deps-o210419%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object210374%_
                                     _%src-deps-scm210415%_)))
                           (_%src-bin-scm210421%_
                            (gxc#find-static-module-file _%ctx210367%_))
                           (_%src-bin-scm210423%_
                            (path-expand _%src-bin-scm210421%_))
                           (_%src-bin-c210425%_
                            (_%replace-extension-with-c210373%_
                             _%src-bin-scm210423%_))
                           (_%src-bin-o210427%_
                            (_%replace-extension-with-object210374%_
                             _%src-bin-scm210423%_))
                           (_%output-bin210429%_
                            (path-expand _%output-bin210389%_))
                           (_%output-scm210431%_
                            (path-expand _%output-scm210388%_))
                           (_%output-c210433%_
                            (_%replace-extension-with-c210373%_
                             _%output-scm210431%_))
                           (_%output-o210435%_
                            (_%replace-extension-with-object210374%_
                             _%output-scm210431%_))
                           (_%output_-c210437%_
                            (_%replace-extension210372%_
                             _%output-scm210431%_
                             '"_.c"))
                           (_%output_-o210439%_
                            (_%replace-extension210372%_
                             _%output-scm210431%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts210441%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts210443%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts210445%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir210395%_))
                           (_%output-ld-opts210447%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts210449%_
                            (_%get-libgerbil-ld-opts210371%_
                             _%gerbil-libdir210393%_))
                           (_%rpath210451%_
                            (gxc#gerbil-rpath _%gerbil-libdir210393%_))
                           (_%builtin-modules210455%_
                            (_%remove-duplicates210380%_
                             (let ((__tmp210876
                                    (let ((__tmp210878
                                           (lambda (_%mod210453%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod210453%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp210877
                                           (cons _%ctx210367%_
                                                 _%deps210397%_)))
                                      (declare (not safe))
                                      (##map __tmp210878 __tmp210877))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp210876)))))
                      (letrec ((_%compile-obj210458%_
                                (lambda (_%scm-path210465%_ _%c-path210466%_)
                                  (let* ((_%o-path210468%_
                                          (_%replace-extension210372%_
                                           _%c-path210466%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock210470%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path210468%_
                                             '".lock")))
                                         (_%locked210472%_ '#f)
                                         (_%unlock210475%_
                                          (lambda ()
                                            (close-port _%locked210472%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock210470%_)))))
                                    (let _%retry210478%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock210470%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry210478%_))
                                          (begin
                                            (set! _%locked210472%_
                                                  (let ((__tmp210879
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock210470%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp210879)))
                                            (if _%locked210472%_
                                                '#!void
                                                (_%retry210478%_)))))
                                    (let ((__tmp210881
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path210468%_)))
                                                     (not _%scm-path210465%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path210465%_
                                                        _%o-path210468%_)))
                                                 (let ((_%gsc-cc-opts210489%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp210882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp210883 (cons _%c-path210466%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp210883
                            _%gsc-static-opts210445%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp210882 _%gsc-cc-opts210489%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp210880
                                           (lambda () (_%unlock210475%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp210881
                                       __tmp210880))))))
                        (let ((__tmp210884
                               (lambda ()
                                 (let ((__tmp210885
                                        (path-directory _%output-bin210429%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp210885)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp210884))
                        (gxc#with-output-to-scheme-file
                         _%output-scm210431%_
                         (lambda ()
                           (_%generate-stub210370%_
                            _%builtin-modules210455%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it210463%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp210886
                                                   (let ((__tmp210887
                                                          (let ((__tmp210888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm210423%_
                               (cons _%output-scm210431%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp210888 _%src-deps-scm210415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp210887
                                                      _%libgerbil-c210405%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp210886
                                               _%gsc-link-opts210441%_))))
                                     (for-each
                                      _%compile-obj210458%_
                                      (let ((__tmp210889
                                             (cons _%src-bin-scm210423%_
                                                   (cons _%output-scm210431%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp210889
                                         _%src-deps-scm210415%_))
                                      (let ((__tmp210890
                                             (cons _%src-bin-c210425%_
                                                   (cons _%output-c210433%_
                                                         (cons _%output_-c210437%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp210890
                                         _%src-deps-c210417%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin210429%_
                                                        (let ((__tmp210891
                                                               (cons _%src-bin-o210427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o210435%_
                                   (cons _%output_-o210439%_
                                         (let ((__tmp210892
                                                (let ((__tmp210893
                                                       (let ((__tmp210895
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir210393%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts210449%_))))
                     (__tmp210894
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath210451%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp210895 __tmp210894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp210893
                                                   _%output-ld-opts210447%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp210892
                                            _%libgerbil-o210407%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp210891 _%src-deps-o210419%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp210896
                                            (cons _%output-c210433%_
                                                  (cons _%output_-c210437%_
                                                        (cons _%output-o210435%_
                                                              (cons _%output_-o210439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp210896)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it210463%_))
                                  (_%compile-it210463%_)))
                            '#!void))))))
          (let* ((_%output-bin210383%_
                  (gxc#compile-exe-output-file _%ctx210367%_ _%opts210368%_))
                 (_%output-scm210385%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin210383%_ '"__exe.scm"))))
            (_%compile-stub210381%_
             _%output-scm210385%_
             _%output-bin210383%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx210189%_ _%opts210190%_)
        (letrec ((_%reset-declare210192%_
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
                 (_%generate-stub210193%_
                  (lambda (_%deps210358%_)
                    (let ((_%mod-main210360%_
                           (gxc#find-runtime-symbol _%ctx210189%_ 'main))
                          (_%reset-decl210361%_ (_%reset-declare210192%_))
                          (_%user-decl210362%_ (_%user-declare210194%_)))
                      (for-each
                       (lambda (_%dep210364%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl210361%_))
                         (newline)
                         (if _%user-decl210362%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl210362%_))
                               (newline))
                             '#!void)
                         (let ((__tmp210897
                                (cons 'include (cons _%dep210364%_ '()))))
                           (declare (not safe))
                           (##write __tmp210897))
                         (newline))
                       _%deps210358%_)
                      (let ((__tmp210898
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main210360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp210898))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare210194%_
                  (lambda ()
                    (let* ((_%gsc-opts210263%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts210190%_)))
                           (_%gsc-prelude210265%_
                            (if _%gsc-opts210263%_
                                (member '"-prelude" _%gsc-opts210263%_)
                                '#f))
                           (_%gsc-prelude210267%_
                            (if _%gsc-prelude210265%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude210265%_)))
                                '#f)))
                      (let _%lp210270%_ ((_%rest210272%_
                                          (cons _%gsc-prelude210267%_ '()))
                                         (_%user-decls210273%_ '()))
                        (let* ((_%rest210274210282%_ _%rest210272%_)
                               (_%else210276210290%_
                                (lambda ()
                                  (if (null? _%user-decls210273%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls210273%_)))))
                               (_%K210278210346%_
                                (lambda (_%rest210293%_ _%expr210294%_)
                                  (let* ((_%expr210295210307%_ _%expr210294%_)
                                         (_%else210298210315%_
                                          (lambda ()
                                            (_%lp210270%_
                                             _%rest210293%_
                                             _%user-decls210273%_))))
                                    (let ((_%K210303210336%_
                                           (lambda (_%decls210334%_)
                                             (_%lp210270%_
                                              _%rest210293%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls210273%_
                                                 _%decls210334%_)))))
                                          (_%K210300210321%_
                                           (lambda (_%exprs210319%_)
                                             (_%lp210270%_
                                              (append _%exprs210319%_
                                                      _%rest210293%_)
                                              _%user-decls210273%_))))
                                      (if (pair? _%expr210295210307%_)
                                          (let ((_%tl210305210341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr210295210307%_)))
                                                (_%hd210304210339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr210295210307%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd210304210339%_
                                                         'declare))
                                                (let ((_%decls210344%_
                                                       _%tl210305210341%_))
                                                  (_%K210303210336%_
                                                   _%decls210344%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd210304210339%_
                                                             'begin))
                                                    (let ((_%exprs210329%_
                                                           _%tl210305210341%_))
                                                      (_%K210300210321%_
                                                       _%exprs210329%_))
                                                    (_%else210298210315%_))))
                                          (_%else210298210315%_)))))))
                          (if (pair? _%rest210274210282%_)
                              (let ((_%hd210279210349%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest210274210282%_)))
                                    (_%tl210280210351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest210274210282%_))))
                                (let* ((_%expr210354%_ _%hd210279210349%_)
                                       (_%rest210356%_ _%tl210280210351%_))
                                  (_%K210278210346%_
                                   _%rest210356%_
                                   _%expr210354%_)))
                              (_%else210276210290%_)))))))
                 (_%compile-stub210195%_
                  (lambda (_%output-scm210202%_ _%output-bin210203%_)
                    (let* ((_%gerbil-home210205%_
                            (let ((__tmp210899
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp210899)))
                           (_%gerbil-libdir210207%_
                            (path-expand '"lib" _%gerbil-home210205%_))
                           (_%runtime210209%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp210211%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home210205%_))
                           (_%include-gambit-sharp210213%_
                            (gxc#include-source _%gambit-sharp210211%_))
                           (_%bin-scm210215%_
                            (gxc#find-static-module-file _%ctx210189%_))
                           (_%deps210217%_
                            (gxc#find-runtime-module-deps _%ctx210189%_))
                           (_%deps210219%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps210217%_)))
                           (_%deps210224%_
                            (let ((__tmp210900
                                   (lambda (_%$obj210221%_)
                                     (not (gxc#file-empty? _%$obj210221%_)))))
                              (declare (not safe))
                              (##filter __tmp210900 _%deps210219%_)))
                           (_%deps210228%_
                            (let ((__tmp210901
                                   (lambda (_%f210226%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f210226%_
                                             _%runtime210209%_))))))
                              (declare (not safe))
                              (##filter __tmp210901 _%deps210224%_)))
                           (_%output-base210230%_
                            (let ((__tmp210902
                                   (path-strip-extension
                                    _%output-scm210202%_)))
                              (declare (not safe))
                              (##string-append __tmp210902)))
                           (_%output-c210232%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base210230%_ '".c")))
                           (_%output-o210234%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base210230%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_210236%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base210230%_ '"_.c")))
                           (_%output-o_210238%_
                            (let ((__tmp210903
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base210230%_
                               __tmp210903)))
                           (_%gsc-link-opts210240%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts210242%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts210244%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir210207%_)))
                           (_%output-ld-opts210246%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros210248%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp210213%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp210213%_
                                            '()))))
                           (_%gsc-link-opts210250%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts210240%_
                               _%gsc-gx-macros210248%_)))
                           (_%rpath210252%_
                            (gxc#gerbil-rpath _%gerbil-libdir210207%_))
                           (_%default-ld-options210254%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp210904
                             (lambda ()
                               (let ((__tmp210905
                                      (path-directory _%output-bin210203%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp210905)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp210904))
                      (gxc#with-output-to-scheme-file
                       _%output-scm210202%_
                       (lambda ()
                         (_%generate-stub210193%_
                          (let ((__tmp210906
                                 (let ((__tmp210907
                                        (cons _%bin-scm210215%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp210907
                                    _%deps210228%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp210906 _%runtime210209%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it210260%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_210236%_
                                                      (let ((__tmp210908
                                                             (cons _%output-scm210202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp210908 _%gsc-link-opts210250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp210909
                                                 (let ((__tmp210910
                                                        (cons _%output-c210232%_
                                                              (cons _%output-c_210236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp210910
                                                    _%gsc-static-opts210244%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp210909
                                             _%gsc-cc-opts210242%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin210203%_
                                                      (cons _%output-o210234%_
                                                            (cons _%output-o_210238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp210911
                                 (let ((__tmp210913
                                        (cons '"-L"
                                              (cons _%gerbil-libdir210207%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options210254%_))))
                                       (__tmp210912
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath210252%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp210913 __tmp210912))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp210911
                             _%output-ld-opts210246%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it210260%_))
                                (_%compile-it210260%_)))
                          '#!void)))))
          (let* ((_%output-bin210197%_
                  (gxc#compile-exe-output-file _%ctx210189%_ _%opts210190%_))
                 (_%output-scm210199%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin210197%_ '"__exe.scm"))))
            (_%compile-stub210195%_
             _%output-scm210199%_
             _%output-bin210197%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx210138%_ _%id210139%_)
        (let ((_%$e210185%_
               (let ((__tmp210915
                      (lambda (_%e210140210142%_)
                        (let* ((_%g210144210154%_ _%e210140210142%_)
                               (_%else210146210162%_ (lambda () '#f))
                               (_%K210148210166%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g210144210154%_
                                 'gx#module-export::t))
                              (let* ((_%e210149210169%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210144210154%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e210150210172%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210144210154%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e210151210175%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210144210154%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e210151210175%_ '0))
                                    (let ((_%e210152210178%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g210144210154%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g210180210182%_)
                                             (eq? _%g210180210182%_
                                                  _%id210139%_))
                                           _%e210152210178%_)
                                          (_%K210148210166%_)
                                          (_%else210146210162%_)))
                                    (_%else210146210162%_)))
                              (_%else210146210162%_)))))
                     (__tmp210914
                      (##structure-ref
                       _%ctx210138%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp210915 __tmp210914))))
          (if _%$e210185%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e210185%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx210129%_ _%id210130%_)
        (let ((_%$e210132%_
               (gxc#find-export-binding _%ctx210129%_ _%id210130%_)))
          (if _%$e210132%_
              ((lambda (_%bind210135%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind210135%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id210130%_)))
                 (##structure-ref _%bind210135%_ '1 gx#binding::t '#f))
               _%$e210132%_)
              (let ((__tmp210916
                     (##structure-ref
                      _%ctx210129%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp210916
                 _%id210130%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx209995%_)
        (letrec* ((_%ht209997%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template209998%_
                   (lambda (_%in210074%_ _%phi210075%_)
                     (let ((_%iphi210077%_
                            (fx+ _%phi210075%_
                                 (##direct-structure-ref
                                  _%in210074%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports210078%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in210074%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp210080%_ ((_%rest210082%_ _%imports210078%_)
                                          (_%r210083%_ '()))
                         (let* ((_%rest210084210092%_ _%rest210082%_)
                                (_%else210086210100%_ (lambda () _%r210083%_))
                                (_%K210088210117%_
                                 (lambda (_%rest210103%_ _%in210104%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in210104%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi210077%_))
                                           (_%lp210080%_
                                            _%rest210103%_
                                            (cons _%in210104%_ _%r210083%_))
                                           (_%lp210080%_
                                            _%rest210103%_
                                            _%r210083%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in210104%_
                                              'gx#module-import::t))
                                           (let ((_%iphi210108%_
                                                  (fx+ _%phi210075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in210104%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi210108%_))
                                                 (_%lp210080%_
                                                  _%rest210103%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in210104%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r210083%_))
                                                 (_%lp210080%_
                                                  _%rest210103%_
                                                  _%r210083%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in210104%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi210111%_
                                                      (fx+ _%iphi210077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in210104%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi210111%_))
                                                     (_%lp210080%_
                                                      _%rest210103%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in210104%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r210083%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi210111%_))
                                                         (_%lp210080%_
                                                          _%rest210103%_
                                                          (let ((__tmp210917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template209998%_
                          _%in210104%_
                          _%iphi210077%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r210083%_ __tmp210917)))
                 (_%lp210080%_ _%rest210103%_ _%r210083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp210080%_
                                                _%rest210103%_
                                                _%r210083%_)))))))
                           (if (pair? _%rest210084210092%_)
                               (let ((_%hd210089210120%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest210084210092%_)))
                                     (_%tl210090210122%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest210084210092%_))))
                                 (let* ((_%in210125%_ _%hd210089210120%_)
                                        (_%rest210127%_ _%tl210090210122%_))
                                   (_%K210088210117%_
                                    _%rest210127%_
                                    _%in210125%_)))
                               (_%else210086210100%_)))))))
                  (_%find-deps209999%_
                   (lambda (_%rest210007%_ _%deps210008%_)
                     (let* ((_%rest210009210017%_ _%rest210007%_)
                            (_%else210011210025%_ (lambda () _%deps210008%_))
                            (_%K210013210062%_
                             (lambda (_%rest210028%_ _%hd210029%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd210029%_
                                      'gx#module-context::t))
                                   (let ((_%id210032%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd210029%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports210033%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd210029%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht209997%_
                                            _%id210032%_))
                                         (_%find-deps209999%_
                                          _%rest210028%_
                                          _%deps210008%_)
                                         (let ((_%$e210036%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd210029%_))))
                                           (if _%$e210036%_
                                               ((lambda (_%pre210039%_)
                                                  (let ((_%xdeps210041%_
                                                         (_%find-deps209999%_
                                                          (cons _%pre210039%_
                                                                _%imports210033%_)
                                                          _%deps210008%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht209997%_
                                                       _%id210032%_
                                                       _%hd210029%_))
                                                    (_%find-deps209999%_
                                                     _%rest210028%_
                                                     (cons _%hd210029%_
                                                           _%xdeps210041%_))))
                                                _%$e210036%_)
                                               (let ((_%xdeps210044%_
                                                      (_%find-deps209999%_
                                                       _%imports210033%_
                                                       _%deps210008%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht209997%_
                                                    _%id210032%_
                                                    _%hd210029%_))
                                                 (_%find-deps209999%_
                                                  _%rest210028%_
                                                  (cons _%hd210029%_
                                                        _%xdeps210044%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd210029%_
                                          'gx#prelude-context::t))
                                       (let ((_%id210047%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd210029%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht209997%_
                                                _%id210047%_))
                                             (_%find-deps209999%_
                                              _%rest210028%_
                                              _%deps210008%_)
                                             (let ((_%xdeps210051%_
                                                    (_%find-deps209999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd210029%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps210008%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht209997%_
                                                      _%id210047%_))
                                                   (_%find-deps209999%_
                                                    _%rest210028%_
                                                    _%xdeps210051%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht209997%_
                                                        _%id210047%_
                                                        _%hd210029%_))
                                                     (_%find-deps209999%_
                                                      _%rest210028%_
                                                      (cons _%hd210029%_
                                                            _%xdeps210051%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd210029%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd210029%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps209999%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd210029%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest210028%_)
                                                _%deps210008%_)
                                               (_%find-deps209999%_
                                                _%rest210028%_
                                                _%deps210008%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd210029%_
                                                  'gx#module-export::t))
                                               (_%find-deps209999%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd210029%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest210028%_)
                                                _%deps210008%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd210029%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd210029%_ '2 '#f '#f)))
               (_%find-deps209999%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd210029%_ '1 '#f '#f))
                      _%rest210028%_)
                _%deps210008%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd210029%_ '2 '#f '#f)))
                   (let ((_%xdeps210058%_
                          (_%import-set-template209998%_ _%hd210029%_ '0)))
                     (_%find-deps209999%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest210028%_ _%xdeps210058%_))
                      _%deps210008%_))
                   (_%find-deps209999%_ _%rest210028%_ _%deps210008%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd210029%_))))))))))
                       (if (pair? _%rest210009210017%_)
                           (let ((_%hd210014210065%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest210009210017%_)))
                                 (_%tl210015210067%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest210009210017%_))))
                             (let* ((_%hd210070%_ _%hd210014210065%_)
                                    (_%rest210072%_ _%tl210015210067%_))
                               (_%K210013210062%_
                                _%rest210072%_
                                _%hd210070%_)))
                           (_%else210011210025%_))))))
          (let ((__tmp210918
                 (filter gx#expander-context-id
                         (_%find-deps209999%_
                          (let ((_%$e210001%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx209995%_))))
                            (if _%$e210001%_
                                ((lambda (_%pre210004%_)
                                   (cons _%pre210004%_
                                         (##structure-ref
                                          _%ctx209995%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e210001%_)
                                (##structure-ref
                                 _%ctx209995%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp210918)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx209925%_)
        (let* ((_%context-id209927%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx209925%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx209925%_ '1 '#f '#f))
                    (string->symbol _%ctx209925%_)))
               (_%scm209929%_
                (let ((__tmp210919
                       (gxc#static-module-name _%context-id209927%_)))
                  (declare (not safe))
                  (##string-append __tmp210919 '".scm")))
               (_%dirs209931%_ (let () (declare (not safe)) (load-path)))
               (_%dirs209937%_
                (let ((_%user-libpath209933%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath209933%_
                      (let ((_%user-libpath209935%_
                             (path-expand '"lib" _%user-libpath209933%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath209935%_ _%dirs209931%_))
                            _%dirs209931%_
                            (cons _%user-libpath209935%_ _%dirs209931%_)))
                      _%dirs209931%_)))
               (_%dirs209947%_
                (let ((_%$e209939%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e209939%_
                      ((lambda (_%g209941209943%_)
                         (cons _%g209941209943%_ _%dirs209937%_))
                       _%$e209939%_)
                      _%dirs209937%_)))
               (_%dirs209953%_
                (let ((__tmp210920
                       (lambda (_%g209948209950%_)
                         (path-expand '"static" _%g209948209950%_))))
                  (declare (not safe))
                  (##map __tmp210920 _%dirs209947%_))))
          (let _%lp209956%_ ((_%rest209958%_ _%dirs209953%_))
            (let* ((_%rest209959209967%_ _%rest209958%_)
                   (_%else209961209975%_
                    (lambda ()
                      (let ((__tmp210921
                             (##structure-ref
                              _%ctx209925%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp210921
                         _%scm209929%_))))
                   (_%K209963209983%_
                    (lambda (_%rest209978%_ _%dir209979%_)
                      (let ((_%path209981%_
                             (path-expand _%scm209929%_ _%dir209979%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path209981%_))
                            _%path209981%_
                            (_%lp209956%_ _%rest209978%_))))))
              (if (pair? _%rest209959209967%_)
                  (let ((_%hd209964209986%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209959209967%_)))
                        (_%tl209965209988%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209959209967%_))))
                    (let* ((_%dir209991%_ _%hd209964209986%_)
                           (_%rest209993%_ _%tl209965209988%_))
                      (_%K209963209983%_ _%rest209993%_ _%dir209991%_)))
                  (_%else209961209975%_)))))))
    (define gxc#file-empty?
      (lambda (_%path209923%_)
        (zero? (let ((__tmp210922 (file-info _%path209923%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp210922)))))
    (define gxc#compile-top-module
      (lambda (_%ctx209914%_)
        (let ((__tmp210923
               (lambda ()
                 (let ((__tmp210924
                        (lambda ()
                          (let ((__tmp210925
                                 (lambda ()
                                   (let ((__tmp210927
                                          (lambda ()
                                            (let ((__tmp210929
                                                   (lambda ()
                                                     (let ((__tmp210931
                                                            (lambda ()
                                                              (let ((__tmp210932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx209914%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp210932))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp210933
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx209914%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp210933))
                          '#!void)
                      (gxc#collect-bindings _%ctx209914%_)
                      (gxc#compile-runtime-code _%ctx209914%_)
                      (gxc#compile-meta-code _%ctx209914%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx209914%_)
                          '#!void)))
                   (__tmp210930
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
                __tmp210931
                gxc#current-compile-runtime-names
                __tmp210930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp210928
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp210929
                                               gxc#current-compile-runtime-sections
                                               __tmp210928))))
                                         (__tmp210926
                                          (let ((__obj210827
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj210827))
                                            __obj210827)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp210927
                                      gxc#current-compile-symbol-table
                                      __tmp210926)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp210925
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp210924
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210923
           gx#current-expander-context
           _%ctx209914%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx209912%_)
        (let ((__tmp210934
               (##structure-ref _%ctx209912%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp210934))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx209856%_)
        (letrec ((_%compile1209858%_
                  (lambda (_%ctx209901%_)
                    (let* ((_%code209903%_
                            (##structure-ref
                             _%ctx209901%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm209907%_
                            (let ((_%idstr209905%_
                                   (let ((__tmp210935
                                          (##structure-ref
                                           _%ctx209901%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp210935))))
                              (declare (not safe))
                              (##string-append _%idstr209905%_ '"~0")))
                           (_%rtc?209909%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code209903%_))))
                      (if _%rtc?209909%_
                          (let ((__tmp210936
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp210936
                             _%ctx209901%_
                             _%rtm209907%_))
                          '#!void)
                      (_%generate-runtime-code209860%_
                       _%ctx209901%_
                       _%code209903%_
                       (if _%rtc?209909%_ _%rtm209907%_ '#f)))))
                 (_%context-timestamp209859%_
                  (lambda (_%ctx209899%_)
                    (let ((__tmp210937
                           (let ((__tmp210938
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx209899%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp210938 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp210937))))
                 (_%generate-runtime-code209860%_
                  (lambda (_%ctx209867%_ _%code209868%_ _%rtm209869%_)
                    (let* ((_%runtime-code?209871%_ (if _%rtm209869%_ '#t '#f))
                           (_%lifts209873%_ (box '()))
                           (_%runtime-code209880%_
                            (if _%runtime-code?209871%_
                                (let ((__tmp210939
                                       (lambda ()
                                         (let ((__tmp210940
                                                (lambda ()
                                                  (let ((__tmp210941
                                                         (lambda ()
                                                           (let ((__tmp210943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp210945
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code209868%_))))
                                  (__tmp210944
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp210945
                               gxc#current-compile-identifiers
                               __tmp210944))))
                         (__tmp210942
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp210943
                      gxc#current-compile-marks
                      __tmp210942)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp210941
                                                     gxc#current-compile-lift
                                                     _%lifts209873%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp210940
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp210939
                                   gx#current-expander-context
                                   _%ctx209867%_))
                                '#f))
                           (_%runtime-code209882%_
                            (if _%runtime-code?209871%_
                                (if (null? (unbox _%lifts209873%_))
                                    _%runtime-code209880%_
                                    (cons 'begin
                                          (let ((__tmp210947
                                                 (cons _%runtime-code209880%_
                                                       '()))
                                                (__tmp210946
                                                 (reverse (unbox _%lifts209873%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp210947
                                             __tmp210946))))
                                '#f))
                           (_%runtime-code209884%_
                            (if _%runtime-code?209871%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp209859%_
                                                         _%ctx209867%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code209882%_ '())))
                                '#f))
                           (_%loader-code209887%_
                            (let ((__tmp210948
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code209868%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp210948
                               gx#current-expander-context
                               _%ctx209867%_)))
                           (_%loader-code209889%_
                            (cons 'begin
                                  (cons _%loader-code209887%_
                                        (cons (if _%runtime-code?209871%_
                                                  (cons 'load-module
                                                        (cons _%rtm209869%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0209891%_
                            (gxc#compile-output-file _%ctx209867%_ '0 '".scm"))
                           (_%scmrt209893%_
                            (gxc#compile-output-file
                             _%ctx209867%_
                             '#f
                             '".scm"))
                           (_%scms209895%_
                            (gxc#compile-static-output-file _%ctx209867%_)))
                      (if _%runtime-code?209871%_
                          (gxc#compile-scm-file__0
                           _%scm0209891%_
                           _%runtime-code209884%_)
                          '#!void)
                      (let ((__tmp210949
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt209893%_
                                _%loader-code209889%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp210949
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms209895%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms209895%_))
                          '#!void)
                      (if _%runtime-code?209871%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0209891%_ _%scms209895%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms209895%_ void)))))))
          (let* ((_%all-modules209862%_
                  (cons _%ctx209856%_ (gxc#lift-nested-modules _%ctx209856%_)))
                 (__tmp210950
                  (lambda (_%ctx209864%_)
                    (let ((__tmp210951
                           (lambda () (_%compile1209858%_ _%ctx209864%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp210951
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp210950 _%all-modules209862%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx209755%_)
        (letrec ((_%compile-ssi209757%_
                  (lambda (_%code209824%_)
                    (let* ((_%path209826%_
                            (gxc#compile-output-file
                             _%ctx209755%_
                             '#f
                             '".ssi"))
                           (_%prelude209838%_
                            (let* ((_%super209828%_
                                    (##structure-ref
                                     _%ctx209755%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e209830%_
                                    (##structure-ref
                                     _%super209828%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e209830%_
                                  ((lambda (_%g209832209834%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g209832209834%_)))
                                   _%$e209830%_)
                                  ':<root>)))
                           (_%ns209840%_
                            (##structure-ref
                             _%ctx209755%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr209842%_
                            (symbol->string
                             (##structure-ref
                              _%ctx209755%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg209850%_
                            (let ((_%$e209844%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr209842%_ '#\/))))
                              (if _%$e209844%_
                                  ((lambda (_%x209847%_)
                                     (let ((__tmp210952
                                            (substring
                                             _%idstr209842%_
                                             '0
                                             _%x209847%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp210952)))
                                   _%$e209844%_)
                                  '#f)))
                           (_%rt209852%_
                            (let ((__tmp210953
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp210953 _%ctx209755%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path209826%_))
                      (gxc#with-output-to-scheme-file
                       _%path209826%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude209838%_))
                         (if _%pkg209850%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg209850%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns209840%_))
                         (newline)
                         (pretty-print _%code209824%_)
                         (if _%rt209852%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt209852%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi209758%_
                  (lambda (_%part209763%_)
                    (let* ((_%part209764209777%_ _%part209763%_)
                           (_%E209766209781%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part209764209777%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K209767209793%_
                            (lambda (_%code209784%_
                                     _%n209785%_
                                     _%phi209786%_
                                     _%phi-ctx209787%_)
                              (let ((_%code209791%_
                                     (let ((__tmp210954
                                            (lambda ()
                                              (let ((__tmp210955
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code209784%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp210955
                                                 gx#current-expander-phi
                                                 _%phi209786%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp210954
                                        gx#current-expander-context
                                        _%phi-ctx209787%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx209755%_
                                  _%n209785%_
                                  '".scm")
                                 _%code209791%_
                                 '#t)))))
                      (if (pair? _%part209764209777%_)
                          (let ((_%hd209768209796%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part209764209777%_)))
                                (_%tl209769209798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part209764209777%_))))
                            (let ((_%phi-ctx209801%_ _%hd209768209796%_))
                              (if (pair? _%tl209769209798%_)
                                  (let ((_%hd209770209803%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209769209798%_)))
                                        (_%tl209771209805%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209769209798%_))))
                                    (let ((_%phi209808%_ _%hd209770209803%_))
                                      (if (pair? _%tl209771209805%_)
                                          (let ((_%hd209772209810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl209771209805%_)))
                                                (_%tl209773209812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl209771209805%_))))
                                            (let ((_%n209815%_
                                                   _%hd209772209810%_))
                                              (if (pair? _%tl209773209812%_)
                                                  (let ((_%hd209774209817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl209773209812%_)))
                                                        (_%tl209775209819%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl209773209812%_))))
                                                    (let ((_%code209822%_
                                                           _%hd209774209817%_))
                                                      (if (null? _%tl209775209819%_)
                                                          (_%K209767209793%_
                                                           _%code209822%_
                                                           _%n209815%_
                                                           _%phi209808%_
                                                           _%phi-ctx209801%_)
                                                          (_%E209766209781%_))))
                                                  (_%E209766209781%_))))
                                          (_%E209766209781%_))))
                                  (_%E209766209781%_))))
                          (_%E209766209781%_))))))
          (let ((_g210956_ (gxc#generate-meta-code _%ctx209755%_)))
            (begin
              (let ((_g210957_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g210956_)
                           (##values-length _g210956_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g210957_ 2)))
                    (error "Context expects 2 values" _g210957_)))
              (let ((_%ssi-code209760%_
                     (let () (declare (not safe)) (##values-ref _g210956_ 0)))
                    (_%phi-code209761%_
                     (let () (declare (not safe)) (##values-ref _g210956_ 1))))
                (begin
                  (_%compile-ssi209757%_ _%ssi-code209760%_)
                  (for-each _%compile-phi209758%_ _%phi-code209761%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx209737%_)
        (let* ((_%path209739%_
                (gxc#compile-output-file _%ctx209737%_ '#f '".ssxi.ss"))
               (_%code209741%_
                (let ((__tmp210958
                       (##structure-ref
                        _%ctx209737%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp210958)))
               (_%idstr209743%_
                (symbol->string
                 (##structure-ref
                  _%ctx209737%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg209751%_
                (let ((_%$e209745%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr209743%_ '#\/))))
                  (if _%$e209745%_
                      ((lambda (_%x209748%_)
                         (let ((__tmp210959
                                (substring _%idstr209743%_ '0 _%x209748%_)))
                           (declare (not safe))
                           (##string->symbol __tmp210959)))
                       _%$e209745%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path209739%_))
          (gxc#with-output-to-scheme-file
           _%path209739%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg209751%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg209751%_))
                 '#!void)
             (newline)
             (pretty-print _%code209741%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx209730%_)
        (let* ((_%state209732%_
                (let ((__obj210828
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj210828 _%ctx209730%_))
                  __obj210828))
               (_%ssi-code209734%_
                (let ((__tmp210960
                       (##structure-ref
                        _%ctx209730%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state209732%_
                   __tmp210960))))
          (values _%ssi-code209734%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state209732%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx209721%_)
        (let* ((_%lifts209723%_ (box '()))
               (__tmp210961
                (lambda ()
                  (let ((__tmp210963
                         (lambda ()
                           (let ((__tmp210965
                                  (lambda ()
                                    (let ((_%code209728%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx209721%_))))
                                      (if (null? (unbox _%lifts209723%_))
                                          _%code209728%_
                                          (cons 'begin
                                                (let ((__tmp210967
                                                       (cons _%code209728%_
                                                             '()))
                                                      (__tmp210966
                                                       (reverse (unbox _%lifts209723%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp210967
                                                   __tmp210966)))))))
                                 (__tmp210964
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp210965
                              gxc#current-compile-identifiers
                              __tmp210964))))
                        (__tmp210962
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp210963
                     gxc#current-compile-marks
                     __tmp210962)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210961
           gxc#current-compile-lift
           _%lifts209723%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx209717%_)
        (let ((_%modules209719%_ (box '())))
          (let ((__tmp210968
                 (##structure-ref _%ctx209717%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules209719%_ __tmp210968))
          (reverse (unbox _%modules209719%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path209697%_ _%code209698%_ _%phi?209699%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path209697%_))
        (gxc#with-output-to-scheme-file
         _%path209697%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp210969
                                           (if _%phi?209699%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp210969)))))))
           (pretty-print _%code209698%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it209703%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path209697%_ _%phi?209699%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp210970
                         (cons 'compile-file (cons _%path209697%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it209703%_ __tmp210970))
                  (_%compile-it209703%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path209708%_ _%code209709%_)
        (let ((_%phi?209711%_ '#f))
          (gxc#compile-scm-file__%
           _%path209708%_
           _%code209709%_
           _%phi?209711%_))))
    (define gxc#compile-scm-file
      (lambda _g210971_
        (let ((_g210972_ (let () (declare (not safe)) (##length _g210971_))))
          (cond ((let () (declare (not safe)) (##fx= _g210972_ 2))
                 (apply gxc#compile-scm-file__0 _g210971_))
                ((let () (declare (not safe)) (##fx= _g210972_ 3))
                 (apply gxc#compile-scm-file__% _g210971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g210971_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?209598%_)
        (let _%lp209600%_ ((_%rest209602%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts209603%_ '()))
          (let* ((_%rest209604209624%_ _%rest209602%_)
                 (_%else209608209632%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts209603%_)))
                        (reverse _%opts209603%_)))))
            (let ((_%K209618209675%_
                   (lambda (_%rest209673%_)
                     (_%lp209600%_ _%rest209673%_ _%opts209603%_)))
                  (_%K209613209657%_
                   (lambda (_%rest209655%_)
                     (_%lp209600%_ _%rest209655%_ _%opts209603%_)))
                  (_%K209610209639%_
                   (lambda (_%rest209636%_ _%opt209637%_)
                     (_%lp209600%_
                      _%rest209636%_
                      (cons _%opt209637%_ _%opts209603%_)))))
              (if (pair? _%rest209604209624%_)
                  (let ((_%tl209620209680%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209604209624%_)))
                        (_%hd209619209678%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209604209624%_))))
                    (if (equal? _%hd209619209678%_ '"-cc-options")
                        (if (pair? _%tl209620209680%_)
                            (let* ((_%tl209622209683%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl209620209680%_)))
                                   (_%rest209686%_ _%tl209622209683%_))
                              (_%K209618209675%_ _%rest209686%_))
                            (let ((_%opt209647%_ _%hd209619209678%_)
                                  (_%rest209649%_ _%tl209620209680%_))
                              (_%K209610209639%_
                               _%rest209649%_
                               _%opt209647%_)))
                        (if (equal? _%hd209619209678%_ '"-ld-options")
                            (if (pair? _%tl209620209680%_)
                                (let* ((_%tl209617209665%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl209620209680%_)))
                                       (_%rest209668%_ _%tl209617209665%_))
                                  (_%K209613209657%_ _%rest209668%_))
                                (let ((_%opt209647%_ _%hd209619209678%_)
                                      (_%rest209649%_ _%tl209620209680%_))
                                  (_%K209610209639%_
                                   _%rest209649%_
                                   _%opt209647%_)))
                            (let ((_%opt209647%_ _%hd209619209678%_)
                                  (_%rest209649%_ _%tl209620209680%_))
                              (_%K209610209639%_
                               _%rest209649%_
                               _%opt209647%_)))))
                  (_%else209608209632%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?209692%_ '#f)) (gxc#gsc-link-options__% _%phi?209692%_))))
    (define gxc#gsc-link-options
      (lambda _g210973_
        (let ((_g210974_ (let () (declare (not safe)) (##length _g210973_))))
          (cond ((let () (declare (not safe)) (##fx= _g210974_ 0))
                 (apply gxc#gsc-link-options__0 _g210973_))
                ((let () (declare (not safe)) (##fx= _g210974_ 1))
                 (apply gxc#gsc-link-options__% _g210973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g210973_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords209447%_ _%static?209443209448%_ _%phi?209450%_)
        (let ((_%static?209452%_
               (if (eq? _%static?209443209448%_ absent-value)
                   '#f
                   _%static?209443209448%_)))
          (if _%phi?209450%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp209454%_ ((_%rest209456%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts209457%_ '()))
                (let* ((_%rest209458209484%_ _%rest209456%_)
                       (_%else209463209492%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts209457%_)))
                              (reverse! _%opts209457%_)))))
                  (let ((_%K209478209555%_
                         (lambda (_%rest209552%_ _%opt209553%_)
                           (if _%static?209452%_
                               (_%lp209454%_
                                _%rest209552%_
                                (cons _%opt209553%_
                                      (cons '"-cc-options" _%opts209457%_)))
                               (_%lp209454%_ _%rest209552%_ _%opts209457%_))))
                        (_%K209473209532%_
                         (lambda (_%rest209529%_ _%opt209530%_)
                           (_%lp209454%_
                            _%rest209529%_
                            (cons _%opt209530%_
                                  (cons '"-cc-options" _%opts209457%_)))))
                        (_%K209468209512%_
                         (lambda (_%rest209510%_)
                           (_%lp209454%_ _%rest209510%_ _%opts209457%_)))
                        (_%K209465209498%_
                         (lambda (_%rest209496%_)
                           (_%lp209454%_ _%rest209496%_ _%opts209457%_))))
                    (if (pair? _%rest209458209484%_)
                        (let ((_%tl209480209560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209458209484%_)))
                              (_%hd209479209558%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209458209484%_))))
                          (if (equal? _%hd209479209558%_ '"-cc-options")
                              (if (pair? _%tl209480209560%_)
                                  (let ((_%tl209482209565%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209480209560%_)))
                                        (_%hd209481209563%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209480209560%_))))
                                    (if (equal? _%hd209481209563%_ '"-Bstatic")
                                        (let ((_%opt209568%_
                                               _%hd209481209563%_)
                                              (_%rest209570%_
                                               _%tl209482209565%_))
                                          (_%K209478209555%_
                                           _%rest209570%_
                                           _%opt209568%_))
                                        (let ((_%opt209545%_
                                               _%hd209481209563%_)
                                              (_%rest209547%_
                                               _%tl209482209565%_))
                                          (_%K209473209532%_
                                           _%rest209547%_
                                           _%opt209545%_))))
                                  (let ((_%rest209504%_ _%tl209480209560%_))
                                    (_%K209465209498%_ _%rest209504%_)))
                              (if (equal? _%hd209479209558%_ '"-ld-options")
                                  (if (pair? _%tl209480209560%_)
                                      (let* ((_%tl209472209520%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl209480209560%_)))
                                             (_%rest209523%_
                                              _%tl209472209520%_))
                                        (_%K209468209512%_ _%rest209523%_))
                                      (let ((_%rest209504%_
                                             _%tl209480209560%_))
                                        (_%K209465209498%_ _%rest209504%_)))
                                  (let ((_%rest209504%_ _%tl209480209560%_))
                                    (_%K209465209498%_ _%rest209504%_)))))
                        (_%else209463209492%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords209575%_ _%static?209443209576%_)
        (let ((_%phi?209578%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords209575%_
           _%static?209443209576%_
           _%phi?209578%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g210975_
        (let ((_g210976_ (let () (declare (not safe)) (##length _g210975_))))
          (cond ((let () (declare (not safe)) (##fx= _g210976_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g210975_))
                ((let () (declare (not safe)) (##fx= _g210976_ 3))
                 (apply gxc#gsc-cc-options__%__% _g210975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g210975_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords209587%_ . _%args209588%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords209587%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209587%_
                  'static:
                  absent-value))
               _%args209588%_)))
    (define gxc#gsc-cc-options
      (lambda _%args209444209594%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args209444209594%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords209292%_ _%static?209288209293%_ _%phi?209295%_)
        (let ((_%static?209297%_
               (if (eq? _%static?209288209293%_ absent-value)
                   '#f
                   _%static?209288209293%_)))
          (if _%phi?209295%_
              '()
              (let _%lp209299%_ ((_%rest209301%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts209302%_ '()))
                (let* ((_%rest209303209329%_ _%rest209301%_)
                       (_%else209308209337%_
                        (lambda () (reverse! _%opts209302%_))))
                  (let ((_%K209323209400%_
                         (lambda (_%rest209397%_ _%opt209398%_)
                           (if _%static?209297%_
                               (_%lp209299%_
                                _%rest209397%_
                                (cons _%opt209398%_
                                      (cons '"-ld-options" _%opts209302%_)))
                               (_%lp209299%_ _%rest209397%_ _%opts209302%_))))
                        (_%K209318209377%_
                         (lambda (_%rest209374%_ _%opt209375%_)
                           (_%lp209299%_
                            _%rest209374%_
                            (cons _%opt209375%_
                                  (cons '"-ld-options" _%opts209302%_)))))
                        (_%K209313209357%_
                         (lambda (_%rest209355%_)
                           (_%lp209299%_ _%rest209355%_ _%opts209302%_)))
                        (_%K209310209343%_
                         (lambda (_%rest209341%_)
                           (_%lp209299%_ _%rest209341%_ _%opts209302%_))))
                    (if (pair? _%rest209303209329%_)
                        (let ((_%tl209325209405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209303209329%_)))
                              (_%hd209324209403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209303209329%_))))
                          (if (equal? _%hd209324209403%_ '"-ld-options")
                              (if (pair? _%tl209325209405%_)
                                  (let ((_%tl209327209410%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209325209405%_)))
                                        (_%hd209326209408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209325209405%_))))
                                    (if (equal? _%hd209326209408%_ '"-static")
                                        (let ((_%opt209413%_
                                               _%hd209326209408%_)
                                              (_%rest209415%_
                                               _%tl209327209410%_))
                                          (_%K209323209400%_
                                           _%rest209415%_
                                           _%opt209413%_))
                                        (let ((_%opt209390%_
                                               _%hd209326209408%_)
                                              (_%rest209392%_
                                               _%tl209327209410%_))
                                          (_%K209318209377%_
                                           _%rest209392%_
                                           _%opt209390%_))))
                                  (let ((_%rest209349%_ _%tl209325209405%_))
                                    (_%K209310209343%_ _%rest209349%_)))
                              (if (equal? _%hd209324209403%_ '"-cc-options")
                                  (if (pair? _%tl209325209405%_)
                                      (let* ((_%tl209317209365%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl209325209405%_)))
                                             (_%rest209368%_
                                              _%tl209317209365%_))
                                        (_%K209313209357%_ _%rest209368%_))
                                      (let ((_%rest209349%_
                                             _%tl209325209405%_))
                                        (_%K209310209343%_ _%rest209349%_)))
                                  (let ((_%rest209349%_ _%tl209325209405%_))
                                    (_%K209310209343%_ _%rest209349%_)))))
                        (_%else209308209337%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords209420%_ _%static?209288209421%_)
        (let ((_%phi?209423%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords209420%_
           _%static?209288209421%_
           _%phi?209423%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g210977_
        (let ((_g210978_ (let () (declare (not safe)) (##length _g210977_))))
          (cond ((let () (declare (not safe)) (##fx= _g210978_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g210977_))
                ((let () (declare (not safe)) (##fx= _g210978_ 3))
                 (apply gxc#gsc-ld-options__%__% _g210977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g210977_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords209432%_ . _%args209433%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords209432%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209432%_
                  'static:
                  absent-value))
               _%args209433%_)))
    (define gxc#gsc-ld-options
      (lambda _%args209289209439%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args209289209439%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir209283%_)
        (let ((_%user-staticdir209285%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir209283%_
                       '" -I "
                       _%user-staticdir209285%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp209195%_ ((_%rest209197%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts209198%_ '()))
          (let* ((_%rest209199209219%_ _%rest209197%_)
                 (_%else209203209227%_ (lambda () _%opts209198%_)))
            (let ((_%K209213209270%_
                   (lambda (_%rest209268%_)
                     (_%lp209195%_ _%rest209268%_ _%opts209198%_)))
                  (_%K209208209248%_
                   (lambda (_%rest209245%_ _%opt209246%_)
                     (_%lp209195%_
                      _%rest209245%_
                      (let ((__tmp210979
                             (let ((__tmp210980
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt209246%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp210980))))
                        (declare (not safe))
                        (##append _%opts209198%_ __tmp210979)))))
                  (_%K209205209233%_
                   (lambda (_%rest209231%_)
                     (_%lp209195%_ _%rest209231%_ _%opts209198%_))))
              (if (pair? _%rest209199209219%_)
                  (let ((_%tl209215209275%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209199209219%_)))
                        (_%hd209214209273%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209199209219%_))))
                    (if (equal? _%hd209214209273%_ '"-cc-options")
                        (if (pair? _%tl209215209275%_)
                            (let* ((_%tl209217209278%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl209215209275%_)))
                                   (_%rest209281%_ _%tl209217209278%_))
                              (_%K209213209270%_ _%rest209281%_))
                            (let ((_%rest209239%_ _%tl209215209275%_))
                              (_%K209205209233%_ _%rest209239%_)))
                        (if (equal? _%hd209214209273%_ '"-ld-options")
                            (if (pair? _%tl209215209275%_)
                                (let ((_%tl209212209258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl209215209275%_)))
                                      (_%hd209211209256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl209215209275%_))))
                                  (let ((_%opt209261%_ _%hd209211209256%_)
                                        (_%rest209263%_ _%tl209212209258%_))
                                    (_%K209208209248%_
                                     _%rest209263%_
                                     _%opt209261%_)))
                                (let ((_%rest209239%_ _%tl209215209275%_))
                                  (_%K209205209233%_ _%rest209239%_)))
                            (let ((_%rest209239%_ _%tl209215209275%_))
                              (_%K209205209233%_ _%rest209239%_)))))
                  (_%else209203209227%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str209192%_)
        (not (let () (declare (not safe)) (string-empty? _%str209192%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path209185%_ _%phi?209186%_)
        (let ((_%gsc-link-opts209188%_
               (gxc#gsc-link-options__% _%phi?209186%_))
              (_%gsc-cc-opts209189%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?209186%_))
              (_%gsc-ld-opts209190%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?209186%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp210981
                  (let ((__tmp210982
                         (let ((__tmp210983 (cons _%path209185%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp210983
                            _%gsc-link-opts209188%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp210982 _%gsc-ld-opts209190%_))))
             (declare (not safe))
             (__foldr1 cons __tmp210981 _%gsc-cc-opts209189%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx209151%_ _%n209152%_ _%ext209153%_)
        (letrec ((_%module-relative-path209155%_
                  (lambda (_%ctx209183%_)
                    (path-strip-directory
                     (let ((__tmp210984
                            (##structure-ref
                             _%ctx209183%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp210984)))))
                 (_%module-source-directory209156%_
                  (lambda (_%ctx209179%_)
                    (path-directory
                     (let ((_%mpath209181%_
                            (##structure-ref
                             _%ctx209179%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath209181%_)
                           _%mpath209181%_
                           (last _%mpath209181%_))))))
                 (_%section-string209157%_
                  (lambda (_%n209173%_)
                    (if (number? _%n209173%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n209173%_))
                        (if (symbol? _%n209173%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n209173%_))
                            (if (string? _%n209173%_)
                                _%n209173%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n209173%_)))))))
                 (_%file-name209158%_
                  (lambda (_%path209171%_)
                    (if _%n209152%_
                        (string-append
                         _%path209171%_
                         '"~"
                         (_%section-string209157%_ _%n209152%_)
                         _%ext209153%_)
                        (string-append _%path209171%_ _%ext209153%_))))
                 (_%file-path209159%_
                  (lambda ()
                    (let ((_%$e209165%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e209165%_
                          ((lambda (_%outdir209168%_)
                             (path-expand
                              (_%file-name209158%_
                               (let ((__tmp210985
                                      (##structure-ref
                                       _%ctx209151%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp210985)))
                              _%outdir209168%_))
                           _%$e209165%_)
                          (path-expand
                           (_%file-name209158%_
                            (_%module-relative-path209155%_ _%ctx209151%_))
                           (_%module-source-directory209156%_
                            _%ctx209151%_)))))))
          (let ((_%path209161%_ (_%file-path209159%_)))
            (let ((__tmp210986
                   (lambda ()
                     (let ((__tmp210987 (path-directory _%path209161%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp210987)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp210986))
            _%path209161%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx209132%_)
        (letrec ((_%file-name209134%_
                  (lambda (_%id209149%_)
                    (let ((__tmp210988 (gxc#static-module-name _%id209149%_)))
                      (declare (not safe))
                      (##string-append __tmp210988 '".scm"))))
                 (_%file-path209135%_
                  (lambda ()
                    (let* ((_%file209141%_
                            (_%file-name209134%_
                             (##structure-ref
                              _%ctx209132%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e209143%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e209143%_
                          ((lambda (_%outdir209146%_)
                             (path-expand
                              _%file209141%_
                              (path-expand '"static" _%outdir209146%_)))
                           _%$e209143%_)
                          (path-expand _%file209141%_ '"static"))))))
          (let ((_%path209137%_ (_%file-path209135%_)))
            (let ((__tmp210989
                   (lambda ()
                     (let ((__tmp210990 (path-directory _%path209137%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp210990)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp210989))
            _%path209137%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx209125%_ _%opts209126%_)
        (let ((_%$e209128%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts209126%_))))
          (if _%$e209128%_
              _%$e209128%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx209125%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr209115%_)
        (if (string? _%idstr209115%_)
            (let* ((_%str209118%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr209115%_)))
                   (_%strs209120%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str209118%_ '#\/))))
              (declare (not safe))
              (string-join _%strs209120%_ '"__"))
            (if (symbol? _%idstr209115%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr209115%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr209115%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp210991
               (let ((__tmp210992 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp210992 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp210991))))
    (define gxc#invoke__%
      (lambda (_%@@keywords209079%_
               _%stdout-redirection209075209080%_
               _%stderr-redirection209076209082%_
               _%program209084%_
               _%args209085%_)
        (let* ((_%stdout-redirection209087%_
                (if (eq? _%stdout-redirection209075209080%_ absent-value)
                    '#f
                    _%stdout-redirection209075209080%_))
               (_%stderr-redirection209089%_
                (if (eq? _%stderr-redirection209076209082%_ absent-value)
                    '#f
                    _%stderr-redirection209076209082%_)))
          (let ((__tmp210993 (cons _%program209084%_ _%args209085%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp210993))
          (let* ((_%proc209091%_
                  (open-process
                   (cons 'path:
                         (cons _%program209084%_
                               (cons 'arguments:
                                     (cons _%args209085%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection209087%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection209089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output209096%_
                  (if (or _%stdout-redirection209087%_
                          _%stderr-redirection209089%_)
                      (read-line _%proc209091%_ '#f)
                      '#f))
                 (_%status209099%_ (process-status _%proc209091%_)))
            (let () (declare (not safe)) (##close-port _%proc209091%_))
            (if (zero? _%status209099%_)
                '#!void
                (begin
                  (display _%output209096%_)
                  (let ((__tmp210994 (cons _%program209084%_ _%args209085%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp210994
                     _%status209099%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords209104%_ . _%args209105%_)
        (apply gxc#invoke__%
               _%@@keywords209104%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209104%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209104%_
                  'stderr-redirection:
                  absent-value))
               _%args209105%_)))
    (define gxc#invoke
      (lambda _%args209077209111%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args209077209111%_)))))
