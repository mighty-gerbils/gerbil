(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1756224523)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp210832 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp210832))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp210833 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp210833))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path210689%_ _%fun210690%_)
        (with-output-to-file
         (cons 'path: (cons _%path210689%_ gxc#scheme-file-settings))
         _%fun210690%_)))
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
      (lambda (_%gerbil-libdir210684%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir210684%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path210682%_)
        (let ((__tmp210834 (object->string _%path210682%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp210834 '")"))))
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
      (lambda (_%dir210680%_) (delete-file-or-directory _%dir210680%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath210624%_ _%opts210625%_)
        (if (string? _%srcpath210624%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath210624%_)))
        (let* ((_%outdir210627%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts210625%_)))
               (_%invoke-gsc?210629%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts210625%_)))
               (_%target210634%_
                (let ((_%$e210631%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts210625%_))))
                  (if _%$e210631%_ _%$e210631%_ 'C)))
               (_%gsc-options210639%_
                (append (cons '"-target"
                              (cons (symbol->string _%target210634%_) '()))
                        (let ((_%$e210636%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts210625%_))))
                          (if _%$e210636%_ _%$e210636%_ '()))))
               (_%keep-scm?210641%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts210625%_)))
               (_%verbosity210643%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts210625%_)))
               (_%optimize210645%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts210625%_)))
               (_%debug210647%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts210625%_)))
               (_%gen-ssxi210649%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts210625%_)))
               (_%parallel?210651%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts210625%_))))
          (if _%outdir210627%_
              (let ((__tmp210835
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir210627%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp210835))
              '#!void)
          (if _%optimize210645%_
              (let ((__tmp210836
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp210836))
              '#!void)
          (let ((__tmp210837
                 (lambda ()
                   (let ((__tmp210838
                          (lambda ()
                            (let ((__tmp210839
                                   (lambda ()
                                     (let ((__tmp210840
                                            (lambda ()
                                              (let ((__tmp210841
                                                     (lambda ()
                                                       (let ((__tmp210842
                                                              (lambda ()
                                                                (let ((__tmp210843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp210844
                                        (lambda ()
                                          (let ((__tmp210845
                                                 (lambda ()
                                                   (let ((__tmp210847
                                                          (lambda ()
                                                            (let ((__tmp210849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp210850
                                    (lambda ()
                                      (let ((__tmp210851
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath210624%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp210852
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath210624%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp210852))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp210851
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp210850
                                gxc#current-compile-parallel
                                _%parallel?210651%_))))
                          (__tmp210848
                           (cons (cons 'compile-module
                                       (cons _%srcpath210624%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp210849
                       gxc#current-compile-context
                       __tmp210848))))
                 (__tmp210846 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp210847
                                                      gxc#current-compile-timestamp
                                                      __tmp210846)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp210845
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi210649%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp210844
                                    gxc#current-compile-debug
                                    _%debug210647%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp210843
                           gxc#current-compile-optimize
                           _%optimize210645%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp210842
                  gxc#current-compile-verbose
                  _%verbosity210643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp210841
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?210641%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp210840
                                        gxc#current-compile-gsc-options
                                        _%gsc-options210639%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp210839
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?210629%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp210838
                      gx#current-compilation-target
                      _%target210634%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210837
             gxc#current-compile-output-dir
             _%outdir210627%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath210673%_)
        (let ((_%opts210675%_ '()))
          (gxc#compile-module__% _%srcpath210673%_ _%opts210675%_))))
    (define gxc#compile-module
      (lambda _g210853_
        (let ((_g210854_ (let () (declare (not safe)) (##length _g210853_))))
          (cond ((let () (declare (not safe)) (##fx= _g210854_ 1))
                 (apply gxc#compile-module__0 _g210853_))
                ((let () (declare (not safe)) (##fx= _g210854_ 2))
                 (apply gxc#compile-module__% _g210853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g210853_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath210574%_ _%opts210575%_)
        (if (string? _%srcpath210574%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath210574%_)))
        (let* ((_%outdir210577%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts210575%_)))
               (_%invoke-gsc?210579%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts210575%_)))
               (_%target210584%_
                (let ((_%$e210581%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts210575%_))))
                  (if _%$e210581%_ _%$e210581%_ 'C)))
               (_%gsc-options210589%_
                (append (cons '"-target"
                              (cons (symbol->string _%target210584%_) '()))
                        (let ((_%$e210586%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts210575%_))))
                          (if _%$e210586%_ _%$e210586%_ '()))))
               (_%keep-scm?210591%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts210575%_)))
               (_%verbosity210593%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts210575%_)))
               (_%debug210595%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts210575%_)))
               (_%parallel?210597%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts210575%_))))
          (if _%outdir210577%_
              (let ((__tmp210855
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir210577%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp210855))
              '#!void)
          (let ((__tmp210856
                 (lambda ()
                   (let ((__tmp210857
                          (lambda ()
                            (let ((__tmp210858
                                   (lambda ()
                                     (let ((__tmp210859
                                            (lambda ()
                                              (let ((__tmp210860
                                                     (lambda ()
                                                       (let ((__tmp210861
                                                              (lambda ()
                                                                (let ((__tmp210862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp210864
                                        (lambda ()
                                          (let ((__tmp210866
                                                 (lambda ()
                                                   (let ((__tmp210867
                                                          (lambda ()
                                                            (let ((__tmp210868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath210574%_))
                             (gxc#compile-executable-module
                              (let ((__tmp210869
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath210574%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp210869))
                              _%opts210575%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp210868
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp210867
                                                      gxc#current-compile-parallel
                                                      _%parallel?210597%_))))
                                                (__tmp210865
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath210574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp210866
                                             gxc#current-compile-context
                                             __tmp210865))))
                                       (__tmp210863 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp210864
                                    gxc#current-compile-timestamp
                                    __tmp210863)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp210862
                           gxc#current-compile-debug
                           _%debug210595%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp210861
                  gxc#current-compile-verbose
                  _%verbosity210593%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp210860
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?210591%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp210859
                                        gxc#current-compile-gsc-options
                                        _%gsc-options210589%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp210858
                               gx#current-compilation-target
                               _%target210584%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp210857
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?210579%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp210856
             gxc#current-compile-output-dir
             _%outdir210577%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath210616%_)
        (let ((_%opts210618%_ '()))
          (gxc#compile-exe__% _%srcpath210616%_ _%opts210618%_))))
    (define gxc#compile-exe
      (lambda _g210870_
        (let ((_g210871_ (let () (declare (not safe)) (##length _g210870_))))
          (cond ((let () (declare (not safe)) (##fx= _g210871_ 1))
                 (apply gxc#compile-exe__0 _g210870_))
                ((let () (declare (not safe)) (##fx= _g210871_ 2))
                 (apply gxc#compile-exe__% _g210870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g210870_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx210570%_ _%opts210571%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts210571%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx210570%_
             _%opts210571%_)
            (gxc#compile-executable-module/separate
             _%ctx210570%_
             _%opts210571%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx210370%_ _%opts210371%_)
        (letrec ((_%generate-stub210373%_
                  (lambda (_%builtin-modules210566%_)
                    (let ((_%mod-main210568%_
                           (gxc#find-runtime-symbol _%ctx210370%_ 'main)))
                      (let ((__tmp210872
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules210566%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp210872))
                      (let ((__tmp210873
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main210568%_
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
                        (##write __tmp210873))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts210374%_
                  (lambda (_%gerbil-libdir210564%_)
                    (let ((__tmp210874
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir210564%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp210874 read))))
                 (_%replace-extension210375%_
                  (lambda (_%path210561%_ _%ext210562%_)
                    (string-append
                     (path-strip-extension _%path210561%_)
                     _%ext210562%_)))
                 (_%replace-extension-with-c210376%_
                  (lambda (_%path210559%_)
                    (_%replace-extension210375%_ _%path210559%_ '".c")))
                 (_%replace-extension-with-object210377%_
                  (lambda (_%path210557%_)
                    (_%replace-extension210375%_
                     _%path210557%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?210378%_
                  (lambda (_%ctx210555%_)
                    (if (_%exclude-module?210380%_ _%ctx210555%_)
                        '#f
                        (not (_%libgerbil-module?210379%_ _%ctx210555%_)))))
                 (_%libgerbil-module?210379%_
                  (lambda (_%ctx210548%_)
                    (let ((_%id-str210550%_
                           (symbol->string
                            (##structure-ref
                             _%ctx210548%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?210380%_ _%id-str210550%_)
                          '#f
                          (let ((_%$e210552%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str210550%_))))
                            (if _%$e210552%_
                                _%$e210552%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str210550%_))))))))
                 (_%exclude-module?210380%_
                  (lambda (_%ctx-or-str210544%_)
                    (let ((_%str210546%_
                           (if (string? _%ctx-or-str210544%_)
                               _%ctx-or-str210544%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str210544%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str210546%_))))
                 (_%not-file-empty?210381%_
                  (lambda (_%path210542%_)
                    (not (gxc#file-empty? _%path210542%_))))
                 (_%fold-libgerbil-runtime-scm210382%_
                  (lambda (_%gerbil-staticdir210535%_ _%libgerbil-scm210536%_)
                    (let ((_%gerbil-runtime-scm210540%_
                           (let ((__tmp210875
                                  (lambda (_%rtm210538%_)
                                    (path-expand
                                     (let ((__tmp210876
                                            (let ((__tmp210877
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm210538%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp210877
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp210876 '".scm"))
                                     _%gerbil-staticdir210535%_))))
                             (declare (not safe))
                             (##map __tmp210875 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates210383%_
                       (append _%gerbil-runtime-scm210540%_
                               _%libgerbil-scm210536%_)))))
                 (_%remove-duplicates210383%_
                  (lambda (_%strlst210495%_)
                    (let _%loop210497%_ ((_%rest210499%_ _%strlst210495%_)
                                         (_%result210500%_ '()))
                      (let* ((_%rest210501210509%_ _%rest210499%_)
                             (_%else210503210517%_
                              (lambda () (reverse! _%result210500%_)))
                             (_%K210505210523%_
                              (lambda (_%rest210520%_ _%path210521%_)
                                (if (member _%path210521%_ _%result210500%_)
                                    (_%loop210497%_
                                     _%rest210520%_
                                     _%result210500%_)
                                    (_%loop210497%_
                                     _%rest210520%_
                                     (cons _%path210521%_
                                           _%result210500%_))))))
                        (if (pair? _%rest210501210509%_)
                            (let ((_%hd210506210526%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest210501210509%_)))
                                  (_%tl210507210528%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest210501210509%_))))
                              (let* ((_%path210531%_ _%hd210506210526%_)
                                     (_%rest210533%_ _%tl210507210528%_))
                                (_%K210505210523%_
                                 _%rest210533%_
                                 _%path210531%_)))
                            (_%else210503210517%_))))))
                 (_%compile-stub210384%_
                  (lambda (_%output-scm210391%_ _%output-bin210392%_)
                    (let* ((_%gerbil-home210394%_
                            (let ((__tmp210878
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp210878)))
                           (_%gerbil-libdir210396%_
                            (path-expand '"lib" _%gerbil-home210394%_))
                           (_%gerbil-staticdir210398%_
                            (path-expand '"static" _%gerbil-libdir210396%_))
                           (_%deps210400%_
                            (gxc#find-runtime-module-deps _%ctx210370%_))
                           (_%libgerbil-deps210402%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?210379%_
                               _%deps210400%_)))
                           (_%libgerbil-scm210404%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps210402%_)))
                           (_%libgerbil-scm210406%_
                            (_%fold-libgerbil-runtime-scm210382%_
                             _%gerbil-staticdir210398%_
                             _%libgerbil-scm210404%_))
                           (_%libgerbil-c210408%_
                            (map _%replace-extension-with-c210376%_
                                 _%libgerbil-scm210406%_))
                           (_%libgerbil-o210410%_
                            (map _%replace-extension-with-object210377%_
                                 _%libgerbil-scm210406%_))
                           (_%src-deps210412%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?210378%_
                               _%deps210400%_)))
                           (_%src-deps-scm210414%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps210412%_)))
                           (_%src-deps-scm210416%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?210381%_
                               _%src-deps-scm210414%_)))
                           (_%src-deps-scm210418%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm210416%_)))
                           (_%src-deps-c210420%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c210376%_
                                     _%src-deps-scm210418%_)))
                           (_%src-deps-o210422%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object210377%_
                                     _%src-deps-scm210418%_)))
                           (_%src-bin-scm210424%_
                            (gxc#find-static-module-file _%ctx210370%_))
                           (_%src-bin-scm210426%_
                            (path-expand _%src-bin-scm210424%_))
                           (_%src-bin-c210428%_
                            (_%replace-extension-with-c210376%_
                             _%src-bin-scm210426%_))
                           (_%src-bin-o210430%_
                            (_%replace-extension-with-object210377%_
                             _%src-bin-scm210426%_))
                           (_%output-bin210432%_
                            (path-expand _%output-bin210392%_))
                           (_%output-scm210434%_
                            (path-expand _%output-scm210391%_))
                           (_%output-c210436%_
                            (_%replace-extension-with-c210376%_
                             _%output-scm210434%_))
                           (_%output-o210438%_
                            (_%replace-extension-with-object210377%_
                             _%output-scm210434%_))
                           (_%output_-c210440%_
                            (_%replace-extension210375%_
                             _%output-scm210434%_
                             '"_.c"))
                           (_%output_-o210442%_
                            (_%replace-extension210375%_
                             _%output-scm210434%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts210444%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts210446%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts210448%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir210398%_))
                           (_%output-ld-opts210450%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts210452%_
                            (_%get-libgerbil-ld-opts210374%_
                             _%gerbil-libdir210396%_))
                           (_%rpath210454%_
                            (gxc#gerbil-rpath _%gerbil-libdir210396%_))
                           (_%builtin-modules210458%_
                            (_%remove-duplicates210383%_
                             (let ((__tmp210879
                                    (let ((__tmp210881
                                           (lambda (_%mod210456%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod210456%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp210880
                                           (cons _%ctx210370%_
                                                 _%deps210400%_)))
                                      (declare (not safe))
                                      (##map __tmp210881 __tmp210880))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp210879)))))
                      (letrec ((_%compile-obj210461%_
                                (lambda (_%scm-path210468%_ _%c-path210469%_)
                                  (let* ((_%o-path210471%_
                                          (_%replace-extension210375%_
                                           _%c-path210469%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock210473%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path210471%_
                                             '".lock")))
                                         (_%locked210475%_ '#f)
                                         (_%unlock210478%_
                                          (lambda ()
                                            (close-port _%locked210475%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock210473%_)))))
                                    (let _%retry210481%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock210473%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry210481%_))
                                          (begin
                                            (set! _%locked210475%_
                                                  (let ((__tmp210882
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock210473%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp210882)))
                                            (if _%locked210475%_
                                                '#!void
                                                (_%retry210481%_)))))
                                    (let ((__tmp210884
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path210471%_)))
                                                     (not _%scm-path210468%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path210468%_
                                                        _%o-path210471%_)))
                                                 (let ((_%gsc-cc-opts210492%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp210885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp210886 (cons _%c-path210469%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp210886
                            _%gsc-static-opts210448%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp210885 _%gsc-cc-opts210492%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp210883
                                           (lambda () (_%unlock210478%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp210884
                                       __tmp210883))))))
                        (let ((__tmp210887
                               (lambda ()
                                 (let ((__tmp210888
                                        (path-directory _%output-bin210432%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp210888)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp210887))
                        (gxc#with-output-to-scheme-file
                         _%output-scm210434%_
                         (lambda ()
                           (_%generate-stub210373%_
                            _%builtin-modules210458%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it210466%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp210889
                                                   (let ((__tmp210890
                                                          (let ((__tmp210891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm210426%_
                               (cons _%output-scm210434%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp210891 _%src-deps-scm210418%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp210890
                                                      _%libgerbil-c210408%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp210889
                                               _%gsc-link-opts210444%_))))
                                     (for-each
                                      _%compile-obj210461%_
                                      (let ((__tmp210892
                                             (cons _%src-bin-scm210426%_
                                                   (cons _%output-scm210434%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp210892
                                         _%src-deps-scm210418%_))
                                      (let ((__tmp210893
                                             (cons _%src-bin-c210428%_
                                                   (cons _%output-c210436%_
                                                         (cons _%output_-c210440%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp210893
                                         _%src-deps-c210420%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin210432%_
                                                        (let ((__tmp210894
                                                               (cons _%src-bin-o210430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o210438%_
                                   (cons _%output_-o210442%_
                                         (let ((__tmp210895
                                                (let ((__tmp210896
                                                       (let ((__tmp210898
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir210396%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts210452%_))))
                     (__tmp210897
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath210454%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp210898 __tmp210897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp210896
                                                   _%output-ld-opts210450%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp210895
                                            _%libgerbil-o210410%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp210894 _%src-deps-o210422%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp210899
                                            (cons _%output-c210436%_
                                                  (cons _%output_-c210440%_
                                                        (cons _%output-o210438%_
                                                              (cons _%output_-o210442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp210899)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it210466%_))
                                  (_%compile-it210466%_)))
                            '#!void))))))
          (let* ((_%output-bin210386%_
                  (gxc#compile-exe-output-file _%ctx210370%_ _%opts210371%_))
                 (_%output-scm210388%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin210386%_ '"__exe.scm"))))
            (_%compile-stub210384%_
             _%output-scm210388%_
             _%output-bin210386%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx210192%_ _%opts210193%_)
        (letrec ((_%reset-declare210195%_
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
                 (_%generate-stub210196%_
                  (lambda (_%deps210361%_)
                    (let ((_%mod-main210363%_
                           (gxc#find-runtime-symbol _%ctx210192%_ 'main))
                          (_%reset-decl210364%_ (_%reset-declare210195%_))
                          (_%user-decl210365%_ (_%user-declare210197%_)))
                      (for-each
                       (lambda (_%dep210367%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl210364%_))
                         (newline)
                         (if _%user-decl210365%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl210365%_))
                               (newline))
                             '#!void)
                         (let ((__tmp210900
                                (cons 'include (cons _%dep210367%_ '()))))
                           (declare (not safe))
                           (##write __tmp210900))
                         (newline))
                       _%deps210361%_)
                      (let ((__tmp210901
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main210363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp210901))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare210197%_
                  (lambda ()
                    (let* ((_%gsc-opts210266%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts210193%_)))
                           (_%gsc-prelude210268%_
                            (if _%gsc-opts210266%_
                                (member '"-prelude" _%gsc-opts210266%_)
                                '#f))
                           (_%gsc-prelude210270%_
                            (if _%gsc-prelude210268%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude210268%_)))
                                '#f)))
                      (let _%lp210273%_ ((_%rest210275%_
                                          (cons _%gsc-prelude210270%_ '()))
                                         (_%user-decls210276%_ '()))
                        (let* ((_%rest210277210285%_ _%rest210275%_)
                               (_%else210279210293%_
                                (lambda ()
                                  (if (null? _%user-decls210276%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls210276%_)))))
                               (_%K210281210349%_
                                (lambda (_%rest210296%_ _%expr210297%_)
                                  (let* ((_%expr210298210310%_ _%expr210297%_)
                                         (_%else210301210318%_
                                          (lambda ()
                                            (_%lp210273%_
                                             _%rest210296%_
                                             _%user-decls210276%_))))
                                    (let ((_%K210306210339%_
                                           (lambda (_%decls210337%_)
                                             (_%lp210273%_
                                              _%rest210296%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls210276%_
                                                 _%decls210337%_)))))
                                          (_%K210303210324%_
                                           (lambda (_%exprs210322%_)
                                             (_%lp210273%_
                                              (append _%exprs210322%_
                                                      _%rest210296%_)
                                              _%user-decls210276%_))))
                                      (if (pair? _%expr210298210310%_)
                                          (let ((_%tl210308210344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr210298210310%_)))
                                                (_%hd210307210342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr210298210310%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd210307210342%_
                                                         'declare))
                                                (let ((_%decls210347%_
                                                       _%tl210308210344%_))
                                                  (_%K210306210339%_
                                                   _%decls210347%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd210307210342%_
                                                             'begin))
                                                    (let ((_%exprs210332%_
                                                           _%tl210308210344%_))
                                                      (_%K210303210324%_
                                                       _%exprs210332%_))
                                                    (_%else210301210318%_))))
                                          (_%else210301210318%_)))))))
                          (if (pair? _%rest210277210285%_)
                              (let ((_%hd210282210352%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest210277210285%_)))
                                    (_%tl210283210354%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest210277210285%_))))
                                (let* ((_%expr210357%_ _%hd210282210352%_)
                                       (_%rest210359%_ _%tl210283210354%_))
                                  (_%K210281210349%_
                                   _%rest210359%_
                                   _%expr210357%_)))
                              (_%else210279210293%_)))))))
                 (_%compile-stub210198%_
                  (lambda (_%output-scm210205%_ _%output-bin210206%_)
                    (let* ((_%gerbil-home210208%_
                            (let ((__tmp210902
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp210902)))
                           (_%gerbil-libdir210210%_
                            (path-expand '"lib" _%gerbil-home210208%_))
                           (_%runtime210212%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp210214%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home210208%_))
                           (_%include-gambit-sharp210216%_
                            (gxc#include-source _%gambit-sharp210214%_))
                           (_%bin-scm210218%_
                            (gxc#find-static-module-file _%ctx210192%_))
                           (_%deps210220%_
                            (gxc#find-runtime-module-deps _%ctx210192%_))
                           (_%deps210222%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps210220%_)))
                           (_%deps210227%_
                            (let ((__tmp210903
                                   (lambda (_%$obj210224%_)
                                     (not (gxc#file-empty? _%$obj210224%_)))))
                              (declare (not safe))
                              (##filter __tmp210903 _%deps210222%_)))
                           (_%deps210231%_
                            (let ((__tmp210904
                                   (lambda (_%f210229%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f210229%_
                                             _%runtime210212%_))))))
                              (declare (not safe))
                              (##filter __tmp210904 _%deps210227%_)))
                           (_%output-base210233%_
                            (let ((__tmp210905
                                   (path-strip-extension
                                    _%output-scm210205%_)))
                              (declare (not safe))
                              (##string-append __tmp210905)))
                           (_%output-c210235%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base210233%_ '".c")))
                           (_%output-o210237%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base210233%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_210239%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base210233%_ '"_.c")))
                           (_%output-o_210241%_
                            (let ((__tmp210906
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base210233%_
                               __tmp210906)))
                           (_%gsc-link-opts210243%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts210245%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts210247%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir210210%_)))
                           (_%output-ld-opts210249%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros210251%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp210216%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp210216%_
                                            '()))))
                           (_%gsc-link-opts210253%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts210243%_
                               _%gsc-gx-macros210251%_)))
                           (_%rpath210255%_
                            (gxc#gerbil-rpath _%gerbil-libdir210210%_))
                           (_%default-ld-options210257%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp210907
                             (lambda ()
                               (let ((__tmp210908
                                      (path-directory _%output-bin210206%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp210908)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp210907))
                      (gxc#with-output-to-scheme-file
                       _%output-scm210205%_
                       (lambda ()
                         (_%generate-stub210196%_
                          (let ((__tmp210909
                                 (let ((__tmp210910
                                        (cons _%bin-scm210218%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp210910
                                    _%deps210231%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp210909 _%runtime210212%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it210263%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_210239%_
                                                      (let ((__tmp210911
                                                             (cons _%output-scm210205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp210911 _%gsc-link-opts210253%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp210912
                                                 (let ((__tmp210913
                                                        (cons _%output-c210235%_
                                                              (cons _%output-c_210239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp210913
                                                    _%gsc-static-opts210247%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp210912
                                             _%gsc-cc-opts210245%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin210206%_
                                                      (cons _%output-o210237%_
                                                            (cons _%output-o_210241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp210914
                                 (let ((__tmp210916
                                        (cons '"-L"
                                              (cons _%gerbil-libdir210210%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options210257%_))))
                                       (__tmp210915
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath210255%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp210916 __tmp210915))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp210914
                             _%output-ld-opts210249%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it210263%_))
                                (_%compile-it210263%_)))
                          '#!void)))))
          (let* ((_%output-bin210200%_
                  (gxc#compile-exe-output-file _%ctx210192%_ _%opts210193%_))
                 (_%output-scm210202%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin210200%_ '"__exe.scm"))))
            (_%compile-stub210198%_
             _%output-scm210202%_
             _%output-bin210200%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx210141%_ _%id210142%_)
        (let ((_%$e210188%_
               (let ((__tmp210918
                      (lambda (_%e210143210145%_)
                        (let* ((_%g210147210157%_ _%e210143210145%_)
                               (_%else210149210165%_ (lambda () '#f))
                               (_%K210151210169%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g210147210157%_
                                 'gx#module-export::t))
                              (let* ((_%e210152210172%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210147210157%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e210153210175%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210147210157%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e210154210178%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g210147210157%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e210154210178%_ '0))
                                    (let ((_%e210155210181%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g210147210157%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g210183210185%_)
                                             (eq? _%g210183210185%_
                                                  _%id210142%_))
                                           _%e210155210181%_)
                                          (_%K210151210169%_)
                                          (_%else210149210165%_)))
                                    (_%else210149210165%_)))
                              (_%else210149210165%_)))))
                     (__tmp210917
                      (##structure-ref
                       _%ctx210141%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp210918 __tmp210917))))
          (if _%$e210188%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e210188%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx210132%_ _%id210133%_)
        (let ((_%$e210135%_
               (gxc#find-export-binding _%ctx210132%_ _%id210133%_)))
          (if _%$e210135%_
              ((lambda (_%bind210138%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind210138%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id210133%_)))
                 (##structure-ref _%bind210138%_ '1 gx#binding::t '#f))
               _%$e210135%_)
              (let ((__tmp210919
                     (##structure-ref
                      _%ctx210132%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp210919
                 _%id210133%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx209998%_)
        (letrec* ((_%ht210000%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template210001%_
                   (lambda (_%in210077%_ _%phi210078%_)
                     (let ((_%iphi210080%_
                            (fx+ _%phi210078%_
                                 (##direct-structure-ref
                                  _%in210077%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports210081%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in210077%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp210083%_ ((_%rest210085%_ _%imports210081%_)
                                          (_%r210086%_ '()))
                         (let* ((_%rest210087210095%_ _%rest210085%_)
                                (_%else210089210103%_ (lambda () _%r210086%_))
                                (_%K210091210120%_
                                 (lambda (_%rest210106%_ _%in210107%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in210107%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi210080%_))
                                           (_%lp210083%_
                                            _%rest210106%_
                                            (cons _%in210107%_ _%r210086%_))
                                           (_%lp210083%_
                                            _%rest210106%_
                                            _%r210086%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in210107%_
                                              'gx#module-import::t))
                                           (let ((_%iphi210111%_
                                                  (fx+ _%phi210078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in210107%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi210111%_))
                                                 (_%lp210083%_
                                                  _%rest210106%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in210107%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r210086%_))
                                                 (_%lp210083%_
                                                  _%rest210106%_
                                                  _%r210086%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in210107%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi210114%_
                                                      (fx+ _%iphi210080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in210107%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi210114%_))
                                                     (_%lp210083%_
                                                      _%rest210106%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in210107%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r210086%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi210114%_))
                                                         (_%lp210083%_
                                                          _%rest210106%_
                                                          (let ((__tmp210920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template210001%_
                          _%in210107%_
                          _%iphi210080%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r210086%_ __tmp210920)))
                 (_%lp210083%_ _%rest210106%_ _%r210086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp210083%_
                                                _%rest210106%_
                                                _%r210086%_)))))))
                           (if (pair? _%rest210087210095%_)
                               (let ((_%hd210092210123%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest210087210095%_)))
                                     (_%tl210093210125%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest210087210095%_))))
                                 (let* ((_%in210128%_ _%hd210092210123%_)
                                        (_%rest210130%_ _%tl210093210125%_))
                                   (_%K210091210120%_
                                    _%rest210130%_
                                    _%in210128%_)))
                               (_%else210089210103%_)))))))
                  (_%find-deps210002%_
                   (lambda (_%rest210010%_ _%deps210011%_)
                     (let* ((_%rest210012210020%_ _%rest210010%_)
                            (_%else210014210028%_ (lambda () _%deps210011%_))
                            (_%K210016210065%_
                             (lambda (_%rest210031%_ _%hd210032%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd210032%_
                                      'gx#module-context::t))
                                   (let ((_%id210035%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd210032%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports210036%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd210032%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht210000%_
                                            _%id210035%_))
                                         (_%find-deps210002%_
                                          _%rest210031%_
                                          _%deps210011%_)
                                         (let ((_%$e210039%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd210032%_))))
                                           (if _%$e210039%_
                                               ((lambda (_%pre210042%_)
                                                  (let ((_%xdeps210044%_
                                                         (_%find-deps210002%_
                                                          (cons _%pre210042%_
                                                                _%imports210036%_)
                                                          _%deps210011%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht210000%_
                                                       _%id210035%_
                                                       _%hd210032%_))
                                                    (_%find-deps210002%_
                                                     _%rest210031%_
                                                     (cons _%hd210032%_
                                                           _%xdeps210044%_))))
                                                _%$e210039%_)
                                               (let ((_%xdeps210047%_
                                                      (_%find-deps210002%_
                                                       _%imports210036%_
                                                       _%deps210011%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht210000%_
                                                    _%id210035%_
                                                    _%hd210032%_))
                                                 (_%find-deps210002%_
                                                  _%rest210031%_
                                                  (cons _%hd210032%_
                                                        _%xdeps210047%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd210032%_
                                          'gx#prelude-context::t))
                                       (let ((_%id210050%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd210032%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht210000%_
                                                _%id210050%_))
                                             (_%find-deps210002%_
                                              _%rest210031%_
                                              _%deps210011%_)
                                             (let ((_%xdeps210054%_
                                                    (_%find-deps210002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd210032%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps210011%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht210000%_
                                                      _%id210050%_))
                                                   (_%find-deps210002%_
                                                    _%rest210031%_
                                                    _%xdeps210054%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht210000%_
                                                        _%id210050%_
                                                        _%hd210032%_))
                                                     (_%find-deps210002%_
                                                      _%rest210031%_
                                                      (cons _%hd210032%_
                                                            _%xdeps210054%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd210032%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd210032%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps210002%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd210032%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest210031%_)
                                                _%deps210011%_)
                                               (_%find-deps210002%_
                                                _%rest210031%_
                                                _%deps210011%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd210032%_
                                                  'gx#module-export::t))
                                               (_%find-deps210002%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd210032%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest210031%_)
                                                _%deps210011%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd210032%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd210032%_ '2 '#f '#f)))
               (_%find-deps210002%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd210032%_ '1 '#f '#f))
                      _%rest210031%_)
                _%deps210011%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd210032%_ '2 '#f '#f)))
                   (let ((_%xdeps210061%_
                          (_%import-set-template210001%_ _%hd210032%_ '0)))
                     (_%find-deps210002%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest210031%_ _%xdeps210061%_))
                      _%deps210011%_))
                   (_%find-deps210002%_ _%rest210031%_ _%deps210011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd210032%_))))))))))
                       (if (pair? _%rest210012210020%_)
                           (let ((_%hd210017210068%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest210012210020%_)))
                                 (_%tl210018210070%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest210012210020%_))))
                             (let* ((_%hd210073%_ _%hd210017210068%_)
                                    (_%rest210075%_ _%tl210018210070%_))
                               (_%K210016210065%_
                                _%rest210075%_
                                _%hd210073%_)))
                           (_%else210014210028%_))))))
          (let ((__tmp210921
                 (filter gx#expander-context-id
                         (_%find-deps210002%_
                          (let ((_%$e210004%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx209998%_))))
                            (if _%$e210004%_
                                ((lambda (_%pre210007%_)
                                   (cons _%pre210007%_
                                         (##structure-ref
                                          _%ctx209998%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e210004%_)
                                (##structure-ref
                                 _%ctx209998%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp210921)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx209928%_)
        (let* ((_%context-id209930%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx209928%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx209928%_ '1 '#f '#f))
                    (string->symbol _%ctx209928%_)))
               (_%scm209932%_
                (let ((__tmp210922
                       (gxc#static-module-name _%context-id209930%_)))
                  (declare (not safe))
                  (##string-append __tmp210922 '".scm")))
               (_%dirs209934%_ (let () (declare (not safe)) (load-path)))
               (_%dirs209940%_
                (let ((_%user-libpath209936%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath209936%_
                      (let ((_%user-libpath209938%_
                             (path-expand '"lib" _%user-libpath209936%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath209938%_ _%dirs209934%_))
                            _%dirs209934%_
                            (cons _%user-libpath209938%_ _%dirs209934%_)))
                      _%dirs209934%_)))
               (_%dirs209950%_
                (let ((_%$e209942%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e209942%_
                      ((lambda (_%g209944209946%_)
                         (cons _%g209944209946%_ _%dirs209940%_))
                       _%$e209942%_)
                      _%dirs209940%_)))
               (_%dirs209956%_
                (let ((__tmp210923
                       (lambda (_%g209951209953%_)
                         (path-expand '"static" _%g209951209953%_))))
                  (declare (not safe))
                  (##map __tmp210923 _%dirs209950%_))))
          (let _%lp209959%_ ((_%rest209961%_ _%dirs209956%_))
            (let* ((_%rest209962209970%_ _%rest209961%_)
                   (_%else209964209978%_
                    (lambda ()
                      (let ((__tmp210924
                             (##structure-ref
                              _%ctx209928%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp210924
                         _%scm209932%_))))
                   (_%K209966209986%_
                    (lambda (_%rest209981%_ _%dir209982%_)
                      (let ((_%path209984%_
                             (path-expand _%scm209932%_ _%dir209982%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path209984%_))
                            _%path209984%_
                            (_%lp209959%_ _%rest209981%_))))))
              (if (pair? _%rest209962209970%_)
                  (let ((_%hd209967209989%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209962209970%_)))
                        (_%tl209968209991%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209962209970%_))))
                    (let* ((_%dir209994%_ _%hd209967209989%_)
                           (_%rest209996%_ _%tl209968209991%_))
                      (_%K209966209986%_ _%rest209996%_ _%dir209994%_)))
                  (_%else209964209978%_)))))))
    (define gxc#file-empty?
      (lambda (_%path209926%_)
        (zero? (let ((__tmp210925 (file-info _%path209926%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp210925)))))
    (define gxc#compile-top-module
      (lambda (_%ctx209917%_)
        (let ((__tmp210926
               (lambda ()
                 (let ((__tmp210927
                        (lambda ()
                          (let ((__tmp210928
                                 (lambda ()
                                   (let ((__tmp210930
                                          (lambda ()
                                            (let ((__tmp210932
                                                   (lambda ()
                                                     (let ((__tmp210934
                                                            (lambda ()
                                                              (let ((__tmp210935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx209917%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp210935))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp210936
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx209917%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp210936))
                          '#!void)
                      (gxc#collect-bindings _%ctx209917%_)
                      (gxc#compile-runtime-code _%ctx209917%_)
                      (gxc#compile-meta-code _%ctx209917%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx209917%_)
                          '#!void)))
                   (__tmp210933
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
                __tmp210934
                gxc#current-compile-runtime-names
                __tmp210933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp210931
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp210932
                                               gxc#current-compile-runtime-sections
                                               __tmp210931))))
                                         (__tmp210929
                                          (let ((__obj210830
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj210830))
                                            __obj210830)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp210930
                                      gxc#current-compile-symbol-table
                                      __tmp210929)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp210928
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp210927
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210926
           gx#current-expander-context
           _%ctx209917%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx209915%_)
        (let ((__tmp210937
               (##structure-ref _%ctx209915%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp210937))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx209859%_)
        (letrec ((_%compile1209861%_
                  (lambda (_%ctx209904%_)
                    (let* ((_%code209906%_
                            (##structure-ref
                             _%ctx209904%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm209910%_
                            (let ((_%idstr209908%_
                                   (let ((__tmp210938
                                          (##structure-ref
                                           _%ctx209904%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp210938))))
                              (declare (not safe))
                              (##string-append _%idstr209908%_ '"~0")))
                           (_%rtc?209912%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code209906%_))))
                      (if _%rtc?209912%_
                          (let ((__tmp210939
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp210939
                             _%ctx209904%_
                             _%rtm209910%_))
                          '#!void)
                      (_%generate-runtime-code209863%_
                       _%ctx209904%_
                       _%code209906%_
                       (if _%rtc?209912%_ _%rtm209910%_ '#f)))))
                 (_%context-timestamp209862%_
                  (lambda (_%ctx209902%_)
                    (let ((__tmp210940
                           (let ((__tmp210941
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx209902%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp210941 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp210940))))
                 (_%generate-runtime-code209863%_
                  (lambda (_%ctx209870%_ _%code209871%_ _%rtm209872%_)
                    (let* ((_%runtime-code?209874%_ (if _%rtm209872%_ '#t '#f))
                           (_%lifts209876%_ (box '()))
                           (_%runtime-code209883%_
                            (if _%runtime-code?209874%_
                                (let ((__tmp210942
                                       (lambda ()
                                         (let ((__tmp210943
                                                (lambda ()
                                                  (let ((__tmp210944
                                                         (lambda ()
                                                           (let ((__tmp210946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp210948
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code209871%_))))
                                  (__tmp210947
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp210948
                               gxc#current-compile-identifiers
                               __tmp210947))))
                         (__tmp210945
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp210946
                      gxc#current-compile-marks
                      __tmp210945)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp210944
                                                     gxc#current-compile-lift
                                                     _%lifts209876%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp210943
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp210942
                                   gx#current-expander-context
                                   _%ctx209870%_))
                                '#f))
                           (_%runtime-code209885%_
                            (if _%runtime-code?209874%_
                                (if (null? (unbox _%lifts209876%_))
                                    _%runtime-code209883%_
                                    (cons 'begin
                                          (let ((__tmp210950
                                                 (cons _%runtime-code209883%_
                                                       '()))
                                                (__tmp210949
                                                 (reverse (unbox _%lifts209876%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp210950
                                             __tmp210949))))
                                '#f))
                           (_%runtime-code209887%_
                            (if _%runtime-code?209874%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp209862%_
                                                         _%ctx209870%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code209885%_ '())))
                                '#f))
                           (_%loader-code209890%_
                            (let ((__tmp210951
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code209871%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp210951
                               gx#current-expander-context
                               _%ctx209870%_)))
                           (_%loader-code209892%_
                            (cons 'begin
                                  (cons _%loader-code209890%_
                                        (cons (if _%runtime-code?209874%_
                                                  (cons 'load-module
                                                        (cons _%rtm209872%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0209894%_
                            (gxc#compile-output-file _%ctx209870%_ '0 '".scm"))
                           (_%scmrt209896%_
                            (gxc#compile-output-file
                             _%ctx209870%_
                             '#f
                             '".scm"))
                           (_%scms209898%_
                            (gxc#compile-static-output-file _%ctx209870%_)))
                      (if _%runtime-code?209874%_
                          (gxc#compile-scm-file__0
                           _%scm0209894%_
                           _%runtime-code209887%_)
                          '#!void)
                      (let ((__tmp210952
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt209896%_
                                _%loader-code209892%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp210952
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms209898%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms209898%_))
                          '#!void)
                      (if _%runtime-code?209874%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0209894%_ _%scms209898%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms209898%_ void)))))))
          (let* ((_%all-modules209865%_
                  (cons _%ctx209859%_ (gxc#lift-nested-modules _%ctx209859%_)))
                 (__tmp210953
                  (lambda (_%ctx209867%_)
                    (let ((__tmp210954
                           (lambda () (_%compile1209861%_ _%ctx209867%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp210954
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp210953 _%all-modules209865%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx209758%_)
        (letrec ((_%compile-ssi209760%_
                  (lambda (_%code209827%_)
                    (let* ((_%path209829%_
                            (gxc#compile-output-file
                             _%ctx209758%_
                             '#f
                             '".ssi"))
                           (_%prelude209841%_
                            (let* ((_%super209831%_
                                    (##structure-ref
                                     _%ctx209758%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e209833%_
                                    (##structure-ref
                                     _%super209831%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e209833%_
                                  ((lambda (_%g209835209837%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g209835209837%_)))
                                   _%$e209833%_)
                                  ':<root>)))
                           (_%ns209843%_
                            (##structure-ref
                             _%ctx209758%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr209845%_
                            (symbol->string
                             (##structure-ref
                              _%ctx209758%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg209853%_
                            (let ((_%$e209847%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr209845%_ '#\/))))
                              (if _%$e209847%_
                                  ((lambda (_%x209850%_)
                                     (let ((__tmp210955
                                            (substring
                                             _%idstr209845%_
                                             '0
                                             _%x209850%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp210955)))
                                   _%$e209847%_)
                                  '#f)))
                           (_%rt209855%_
                            (let ((__tmp210956
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp210956 _%ctx209758%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path209829%_))
                      (gxc#with-output-to-scheme-file
                       _%path209829%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude209841%_))
                         (if _%pkg209853%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg209853%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns209843%_))
                         (newline)
                         (pretty-print _%code209827%_)
                         (if _%rt209855%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt209855%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi209761%_
                  (lambda (_%part209766%_)
                    (let* ((_%part209767209780%_ _%part209766%_)
                           (_%E209769209784%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part209767209780%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K209770209796%_
                            (lambda (_%code209787%_
                                     _%n209788%_
                                     _%phi209789%_
                                     _%phi-ctx209790%_)
                              (let ((_%code209794%_
                                     (let ((__tmp210957
                                            (lambda ()
                                              (let ((__tmp210958
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code209787%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp210958
                                                 gx#current-expander-phi
                                                 _%phi209789%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp210957
                                        gx#current-expander-context
                                        _%phi-ctx209790%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx209758%_
                                  _%n209788%_
                                  '".scm")
                                 _%code209794%_
                                 '#t)))))
                      (if (pair? _%part209767209780%_)
                          (let ((_%hd209771209799%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part209767209780%_)))
                                (_%tl209772209801%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part209767209780%_))))
                            (let ((_%phi-ctx209804%_ _%hd209771209799%_))
                              (if (pair? _%tl209772209801%_)
                                  (let ((_%hd209773209806%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209772209801%_)))
                                        (_%tl209774209808%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209772209801%_))))
                                    (let ((_%phi209811%_ _%hd209773209806%_))
                                      (if (pair? _%tl209774209808%_)
                                          (let ((_%hd209775209813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl209774209808%_)))
                                                (_%tl209776209815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl209774209808%_))))
                                            (let ((_%n209818%_
                                                   _%hd209775209813%_))
                                              (if (pair? _%tl209776209815%_)
                                                  (let ((_%hd209777209820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl209776209815%_)))
                                                        (_%tl209778209822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl209776209815%_))))
                                                    (let ((_%code209825%_
                                                           _%hd209777209820%_))
                                                      (if (null? _%tl209778209822%_)
                                                          (_%K209770209796%_
                                                           _%code209825%_
                                                           _%n209818%_
                                                           _%phi209811%_
                                                           _%phi-ctx209804%_)
                                                          (_%E209769209784%_))))
                                                  (_%E209769209784%_))))
                                          (_%E209769209784%_))))
                                  (_%E209769209784%_))))
                          (_%E209769209784%_))))))
          (let ((_g210959_ (gxc#generate-meta-code _%ctx209758%_)))
            (begin
              (let ((_g210960_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g210959_)
                           (##values-length _g210959_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g210960_ 2)))
                    (error "Context expects 2 values" _g210960_)))
              (let ((_%ssi-code209763%_
                     (let () (declare (not safe)) (##values-ref _g210959_ 0)))
                    (_%phi-code209764%_
                     (let () (declare (not safe)) (##values-ref _g210959_ 1))))
                (begin
                  (_%compile-ssi209760%_ _%ssi-code209763%_)
                  (for-each _%compile-phi209761%_ _%phi-code209764%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx209740%_)
        (let* ((_%path209742%_
                (gxc#compile-output-file _%ctx209740%_ '#f '".ssxi.ss"))
               (_%code209744%_
                (let ((__tmp210961
                       (##structure-ref
                        _%ctx209740%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp210961)))
               (_%idstr209746%_
                (symbol->string
                 (##structure-ref
                  _%ctx209740%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg209754%_
                (let ((_%$e209748%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr209746%_ '#\/))))
                  (if _%$e209748%_
                      ((lambda (_%x209751%_)
                         (let ((__tmp210962
                                (substring _%idstr209746%_ '0 _%x209751%_)))
                           (declare (not safe))
                           (##string->symbol __tmp210962)))
                       _%$e209748%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path209742%_))
          (gxc#with-output-to-scheme-file
           _%path209742%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg209754%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg209754%_))
                 '#!void)
             (newline)
             (pretty-print _%code209744%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx209733%_)
        (let* ((_%state209735%_
                (let ((__obj210831
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj210831 _%ctx209733%_))
                  __obj210831))
               (_%ssi-code209737%_
                (let ((__tmp210963
                       (##structure-ref
                        _%ctx209733%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state209735%_
                   __tmp210963))))
          (values _%ssi-code209737%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state209735%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx209724%_)
        (let* ((_%lifts209726%_ (box '()))
               (__tmp210964
                (lambda ()
                  (let ((__tmp210966
                         (lambda ()
                           (let ((__tmp210968
                                  (lambda ()
                                    (let ((_%code209731%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx209724%_))))
                                      (if (null? (unbox _%lifts209726%_))
                                          _%code209731%_
                                          (cons 'begin
                                                (let ((__tmp210970
                                                       (cons _%code209731%_
                                                             '()))
                                                      (__tmp210969
                                                       (reverse (unbox _%lifts209726%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp210970
                                                   __tmp210969)))))))
                                 (__tmp210967
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp210968
                              gxc#current-compile-identifiers
                              __tmp210967))))
                        (__tmp210965
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp210966
                     gxc#current-compile-marks
                     __tmp210965)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp210964
           gxc#current-compile-lift
           _%lifts209726%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx209720%_)
        (let ((_%modules209722%_ (box '())))
          (let ((__tmp210971
                 (##structure-ref _%ctx209720%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules209722%_ __tmp210971))
          (reverse (unbox _%modules209722%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path209700%_ _%code209701%_ _%phi?209702%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path209700%_))
        (gxc#with-output-to-scheme-file
         _%path209700%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp210972
                                           (if _%phi?209702%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp210972)))))))
           (pretty-print _%code209701%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it209706%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path209700%_ _%phi?209702%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp210973
                         (cons 'compile-file (cons _%path209700%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it209706%_ __tmp210973))
                  (_%compile-it209706%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path209711%_ _%code209712%_)
        (let ((_%phi?209714%_ '#f))
          (gxc#compile-scm-file__%
           _%path209711%_
           _%code209712%_
           _%phi?209714%_))))
    (define gxc#compile-scm-file
      (lambda _g210974_
        (let ((_g210975_ (let () (declare (not safe)) (##length _g210974_))))
          (cond ((let () (declare (not safe)) (##fx= _g210975_ 2))
                 (apply gxc#compile-scm-file__0 _g210974_))
                ((let () (declare (not safe)) (##fx= _g210975_ 3))
                 (apply gxc#compile-scm-file__% _g210974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g210974_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?209601%_)
        (let _%lp209603%_ ((_%rest209605%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts209606%_ '()))
          (let* ((_%rest209607209627%_ _%rest209605%_)
                 (_%else209611209635%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts209606%_)))
                        (reverse _%opts209606%_)))))
            (let ((_%K209621209678%_
                   (lambda (_%rest209676%_)
                     (_%lp209603%_ _%rest209676%_ _%opts209606%_)))
                  (_%K209616209660%_
                   (lambda (_%rest209658%_)
                     (_%lp209603%_ _%rest209658%_ _%opts209606%_)))
                  (_%K209613209642%_
                   (lambda (_%rest209639%_ _%opt209640%_)
                     (_%lp209603%_
                      _%rest209639%_
                      (cons _%opt209640%_ _%opts209606%_)))))
              (if (pair? _%rest209607209627%_)
                  (let ((_%tl209623209683%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209607209627%_)))
                        (_%hd209622209681%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209607209627%_))))
                    (if (equal? _%hd209622209681%_ '"-cc-options")
                        (if (pair? _%tl209623209683%_)
                            (let* ((_%tl209625209686%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl209623209683%_)))
                                   (_%rest209689%_ _%tl209625209686%_))
                              (_%K209621209678%_ _%rest209689%_))
                            (let ((_%opt209650%_ _%hd209622209681%_)
                                  (_%rest209652%_ _%tl209623209683%_))
                              (_%K209613209642%_
                               _%rest209652%_
                               _%opt209650%_)))
                        (if (equal? _%hd209622209681%_ '"-ld-options")
                            (if (pair? _%tl209623209683%_)
                                (let* ((_%tl209620209668%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl209623209683%_)))
                                       (_%rest209671%_ _%tl209620209668%_))
                                  (_%K209616209660%_ _%rest209671%_))
                                (let ((_%opt209650%_ _%hd209622209681%_)
                                      (_%rest209652%_ _%tl209623209683%_))
                                  (_%K209613209642%_
                                   _%rest209652%_
                                   _%opt209650%_)))
                            (let ((_%opt209650%_ _%hd209622209681%_)
                                  (_%rest209652%_ _%tl209623209683%_))
                              (_%K209613209642%_
                               _%rest209652%_
                               _%opt209650%_)))))
                  (_%else209611209635%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?209695%_ '#f)) (gxc#gsc-link-options__% _%phi?209695%_))))
    (define gxc#gsc-link-options
      (lambda _g210976_
        (let ((_g210977_ (let () (declare (not safe)) (##length _g210976_))))
          (cond ((let () (declare (not safe)) (##fx= _g210977_ 0))
                 (apply gxc#gsc-link-options__0 _g210976_))
                ((let () (declare (not safe)) (##fx= _g210977_ 1))
                 (apply gxc#gsc-link-options__% _g210976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g210976_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords209450%_ _%static?209446209451%_ _%phi?209453%_)
        (let ((_%static?209455%_
               (if (eq? _%static?209446209451%_ absent-value)
                   '#f
                   _%static?209446209451%_)))
          (if _%phi?209453%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp209457%_ ((_%rest209459%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts209460%_ '()))
                (let* ((_%rest209461209487%_ _%rest209459%_)
                       (_%else209466209495%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts209460%_)))
                              (reverse! _%opts209460%_)))))
                  (let ((_%K209481209558%_
                         (lambda (_%rest209555%_ _%opt209556%_)
                           (if _%static?209455%_
                               (_%lp209457%_
                                _%rest209555%_
                                (cons _%opt209556%_
                                      (cons '"-cc-options" _%opts209460%_)))
                               (_%lp209457%_ _%rest209555%_ _%opts209460%_))))
                        (_%K209476209535%_
                         (lambda (_%rest209532%_ _%opt209533%_)
                           (_%lp209457%_
                            _%rest209532%_
                            (cons _%opt209533%_
                                  (cons '"-cc-options" _%opts209460%_)))))
                        (_%K209471209515%_
                         (lambda (_%rest209513%_)
                           (_%lp209457%_ _%rest209513%_ _%opts209460%_)))
                        (_%K209468209501%_
                         (lambda (_%rest209499%_)
                           (_%lp209457%_ _%rest209499%_ _%opts209460%_))))
                    (if (pair? _%rest209461209487%_)
                        (let ((_%tl209483209563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209461209487%_)))
                              (_%hd209482209561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209461209487%_))))
                          (if (equal? _%hd209482209561%_ '"-cc-options")
                              (if (pair? _%tl209483209563%_)
                                  (let ((_%tl209485209568%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209483209563%_)))
                                        (_%hd209484209566%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209483209563%_))))
                                    (if (equal? _%hd209484209566%_ '"-Bstatic")
                                        (let ((_%opt209571%_
                                               _%hd209484209566%_)
                                              (_%rest209573%_
                                               _%tl209485209568%_))
                                          (_%K209481209558%_
                                           _%rest209573%_
                                           _%opt209571%_))
                                        (let ((_%opt209548%_
                                               _%hd209484209566%_)
                                              (_%rest209550%_
                                               _%tl209485209568%_))
                                          (_%K209476209535%_
                                           _%rest209550%_
                                           _%opt209548%_))))
                                  (let ((_%rest209507%_ _%tl209483209563%_))
                                    (_%K209468209501%_ _%rest209507%_)))
                              (if (equal? _%hd209482209561%_ '"-ld-options")
                                  (if (pair? _%tl209483209563%_)
                                      (let* ((_%tl209475209523%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl209483209563%_)))
                                             (_%rest209526%_
                                              _%tl209475209523%_))
                                        (_%K209471209515%_ _%rest209526%_))
                                      (let ((_%rest209507%_
                                             _%tl209483209563%_))
                                        (_%K209468209501%_ _%rest209507%_)))
                                  (let ((_%rest209507%_ _%tl209483209563%_))
                                    (_%K209468209501%_ _%rest209507%_)))))
                        (_%else209466209495%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords209578%_ _%static?209446209579%_)
        (let ((_%phi?209581%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords209578%_
           _%static?209446209579%_
           _%phi?209581%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g210978_
        (let ((_g210979_ (let () (declare (not safe)) (##length _g210978_))))
          (cond ((let () (declare (not safe)) (##fx= _g210979_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g210978_))
                ((let () (declare (not safe)) (##fx= _g210979_ 3))
                 (apply gxc#gsc-cc-options__%__% _g210978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g210978_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords209590%_ . _%args209591%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords209590%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209590%_
                  'static:
                  absent-value))
               _%args209591%_)))
    (define gxc#gsc-cc-options
      (lambda _%args209447209597%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args209447209597%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords209295%_ _%static?209291209296%_ _%phi?209298%_)
        (let ((_%static?209300%_
               (if (eq? _%static?209291209296%_ absent-value)
                   '#f
                   _%static?209291209296%_)))
          (if _%phi?209298%_
              '()
              (let _%lp209302%_ ((_%rest209304%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts209305%_ '()))
                (let* ((_%rest209306209332%_ _%rest209304%_)
                       (_%else209311209340%_
                        (lambda () (reverse! _%opts209305%_))))
                  (let ((_%K209326209403%_
                         (lambda (_%rest209400%_ _%opt209401%_)
                           (if _%static?209300%_
                               (_%lp209302%_
                                _%rest209400%_
                                (cons _%opt209401%_
                                      (cons '"-ld-options" _%opts209305%_)))
                               (_%lp209302%_ _%rest209400%_ _%opts209305%_))))
                        (_%K209321209380%_
                         (lambda (_%rest209377%_ _%opt209378%_)
                           (_%lp209302%_
                            _%rest209377%_
                            (cons _%opt209378%_
                                  (cons '"-ld-options" _%opts209305%_)))))
                        (_%K209316209360%_
                         (lambda (_%rest209358%_)
                           (_%lp209302%_ _%rest209358%_ _%opts209305%_)))
                        (_%K209313209346%_
                         (lambda (_%rest209344%_)
                           (_%lp209302%_ _%rest209344%_ _%opts209305%_))))
                    (if (pair? _%rest209306209332%_)
                        (let ((_%tl209328209408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209306209332%_)))
                              (_%hd209327209406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209306209332%_))))
                          (if (equal? _%hd209327209406%_ '"-ld-options")
                              (if (pair? _%tl209328209408%_)
                                  (let ((_%tl209330209413%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl209328209408%_)))
                                        (_%hd209329209411%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl209328209408%_))))
                                    (if (equal? _%hd209329209411%_ '"-static")
                                        (let ((_%opt209416%_
                                               _%hd209329209411%_)
                                              (_%rest209418%_
                                               _%tl209330209413%_))
                                          (_%K209326209403%_
                                           _%rest209418%_
                                           _%opt209416%_))
                                        (let ((_%opt209393%_
                                               _%hd209329209411%_)
                                              (_%rest209395%_
                                               _%tl209330209413%_))
                                          (_%K209321209380%_
                                           _%rest209395%_
                                           _%opt209393%_))))
                                  (let ((_%rest209352%_ _%tl209328209408%_))
                                    (_%K209313209346%_ _%rest209352%_)))
                              (if (equal? _%hd209327209406%_ '"-cc-options")
                                  (if (pair? _%tl209328209408%_)
                                      (let* ((_%tl209320209368%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl209328209408%_)))
                                             (_%rest209371%_
                                              _%tl209320209368%_))
                                        (_%K209316209360%_ _%rest209371%_))
                                      (let ((_%rest209352%_
                                             _%tl209328209408%_))
                                        (_%K209313209346%_ _%rest209352%_)))
                                  (let ((_%rest209352%_ _%tl209328209408%_))
                                    (_%K209313209346%_ _%rest209352%_)))))
                        (_%else209311209340%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords209423%_ _%static?209291209424%_)
        (let ((_%phi?209426%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords209423%_
           _%static?209291209424%_
           _%phi?209426%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g210980_
        (let ((_g210981_ (let () (declare (not safe)) (##length _g210980_))))
          (cond ((let () (declare (not safe)) (##fx= _g210981_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g210980_))
                ((let () (declare (not safe)) (##fx= _g210981_ 3))
                 (apply gxc#gsc-ld-options__%__% _g210980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g210980_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords209435%_ . _%args209436%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords209435%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209435%_
                  'static:
                  absent-value))
               _%args209436%_)))
    (define gxc#gsc-ld-options
      (lambda _%args209292209442%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args209292209442%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir209286%_)
        (let ((_%user-staticdir209288%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir209286%_
                       '" -I "
                       _%user-staticdir209288%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp209198%_ ((_%rest209200%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts209201%_ '()))
          (let* ((_%rest209202209222%_ _%rest209200%_)
                 (_%else209206209230%_ (lambda () _%opts209201%_)))
            (let ((_%K209216209273%_
                   (lambda (_%rest209271%_)
                     (_%lp209198%_ _%rest209271%_ _%opts209201%_)))
                  (_%K209211209251%_
                   (lambda (_%rest209248%_ _%opt209249%_)
                     (_%lp209198%_
                      _%rest209248%_
                      (let ((__tmp210982
                             (let ((__tmp210983
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt209249%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp210983))))
                        (declare (not safe))
                        (##append _%opts209201%_ __tmp210982)))))
                  (_%K209208209236%_
                   (lambda (_%rest209234%_)
                     (_%lp209198%_ _%rest209234%_ _%opts209201%_))))
              (if (pair? _%rest209202209222%_)
                  (let ((_%tl209218209278%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209202209222%_)))
                        (_%hd209217209276%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209202209222%_))))
                    (if (equal? _%hd209217209276%_ '"-cc-options")
                        (if (pair? _%tl209218209278%_)
                            (let* ((_%tl209220209281%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl209218209278%_)))
                                   (_%rest209284%_ _%tl209220209281%_))
                              (_%K209216209273%_ _%rest209284%_))
                            (let ((_%rest209242%_ _%tl209218209278%_))
                              (_%K209208209236%_ _%rest209242%_)))
                        (if (equal? _%hd209217209276%_ '"-ld-options")
                            (if (pair? _%tl209218209278%_)
                                (let ((_%tl209215209261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl209218209278%_)))
                                      (_%hd209214209259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl209218209278%_))))
                                  (let ((_%opt209264%_ _%hd209214209259%_)
                                        (_%rest209266%_ _%tl209215209261%_))
                                    (_%K209211209251%_
                                     _%rest209266%_
                                     _%opt209264%_)))
                                (let ((_%rest209242%_ _%tl209218209278%_))
                                  (_%K209208209236%_ _%rest209242%_)))
                            (let ((_%rest209242%_ _%tl209218209278%_))
                              (_%K209208209236%_ _%rest209242%_)))))
                  (_%else209206209230%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str209195%_)
        (not (let () (declare (not safe)) (string-empty? _%str209195%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path209188%_ _%phi?209189%_)
        (let ((_%gsc-link-opts209191%_
               (gxc#gsc-link-options__% _%phi?209189%_))
              (_%gsc-cc-opts209192%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?209189%_))
              (_%gsc-ld-opts209193%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?209189%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp210984
                  (let ((__tmp210985
                         (let ((__tmp210986 (cons _%path209188%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp210986
                            _%gsc-link-opts209191%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp210985 _%gsc-ld-opts209193%_))))
             (declare (not safe))
             (__foldr1 cons __tmp210984 _%gsc-cc-opts209192%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx209154%_ _%n209155%_ _%ext209156%_)
        (letrec ((_%module-relative-path209158%_
                  (lambda (_%ctx209186%_)
                    (path-strip-directory
                     (let ((__tmp210987
                            (##structure-ref
                             _%ctx209186%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp210987)))))
                 (_%module-source-directory209159%_
                  (lambda (_%ctx209182%_)
                    (path-directory
                     (let ((_%mpath209184%_
                            (##structure-ref
                             _%ctx209182%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath209184%_)
                           _%mpath209184%_
                           (last _%mpath209184%_))))))
                 (_%section-string209160%_
                  (lambda (_%n209176%_)
                    (if (number? _%n209176%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n209176%_))
                        (if (symbol? _%n209176%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n209176%_))
                            (if (string? _%n209176%_)
                                _%n209176%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n209176%_)))))))
                 (_%file-name209161%_
                  (lambda (_%path209174%_)
                    (if _%n209155%_
                        (string-append
                         _%path209174%_
                         '"~"
                         (_%section-string209160%_ _%n209155%_)
                         _%ext209156%_)
                        (string-append _%path209174%_ _%ext209156%_))))
                 (_%file-path209162%_
                  (lambda ()
                    (let ((_%$e209168%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e209168%_
                          ((lambda (_%outdir209171%_)
                             (path-expand
                              (_%file-name209161%_
                               (let ((__tmp210988
                                      (##structure-ref
                                       _%ctx209154%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp210988)))
                              _%outdir209171%_))
                           _%$e209168%_)
                          (path-expand
                           (_%file-name209161%_
                            (_%module-relative-path209158%_ _%ctx209154%_))
                           (_%module-source-directory209159%_
                            _%ctx209154%_)))))))
          (let ((_%path209164%_ (_%file-path209162%_)))
            (let ((__tmp210989
                   (lambda ()
                     (let ((__tmp210990 (path-directory _%path209164%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp210990)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp210989))
            _%path209164%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx209135%_)
        (letrec ((_%file-name209137%_
                  (lambda (_%id209152%_)
                    (let ((__tmp210991 (gxc#static-module-name _%id209152%_)))
                      (declare (not safe))
                      (##string-append __tmp210991 '".scm"))))
                 (_%file-path209138%_
                  (lambda ()
                    (let* ((_%file209144%_
                            (_%file-name209137%_
                             (##structure-ref
                              _%ctx209135%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e209146%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e209146%_
                          ((lambda (_%outdir209149%_)
                             (path-expand
                              _%file209144%_
                              (path-expand '"static" _%outdir209149%_)))
                           _%$e209146%_)
                          (path-expand _%file209144%_ '"static"))))))
          (let ((_%path209140%_ (_%file-path209138%_)))
            (let ((__tmp210992
                   (lambda ()
                     (let ((__tmp210993 (path-directory _%path209140%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp210993)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp210992))
            _%path209140%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx209128%_ _%opts209129%_)
        (let ((_%$e209131%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts209129%_))))
          (if _%$e209131%_
              _%$e209131%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx209128%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr209118%_)
        (if (string? _%idstr209118%_)
            (let* ((_%str209121%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr209118%_)))
                   (_%strs209123%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str209121%_ '#\/))))
              (declare (not safe))
              (string-join _%strs209123%_ '"__"))
            (if (symbol? _%idstr209118%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr209118%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr209118%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp210994
               (let ((__tmp210995 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp210995 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp210994))))
    (define gxc#invoke__%
      (lambda (_%@@keywords209082%_
               _%stdout-redirection209078209083%_
               _%stderr-redirection209079209085%_
               _%program209087%_
               _%args209088%_)
        (let* ((_%stdout-redirection209090%_
                (if (eq? _%stdout-redirection209078209083%_ absent-value)
                    '#f
                    _%stdout-redirection209078209083%_))
               (_%stderr-redirection209092%_
                (if (eq? _%stderr-redirection209079209085%_ absent-value)
                    '#f
                    _%stderr-redirection209079209085%_)))
          (let ((__tmp210996 (cons _%program209087%_ _%args209088%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp210996))
          (let* ((_%proc209094%_
                  (open-process
                   (cons 'path:
                         (cons _%program209087%_
                               (cons 'arguments:
                                     (cons _%args209088%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection209090%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection209092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output209099%_
                  (if (or _%stdout-redirection209090%_
                          _%stderr-redirection209092%_)
                      (read-line _%proc209094%_ '#f)
                      '#f))
                 (_%status209102%_ (process-status _%proc209094%_)))
            (let () (declare (not safe)) (##close-port _%proc209094%_))
            (if (zero? _%status209102%_)
                '#!void
                (begin
                  (display _%output209099%_)
                  (let ((__tmp210997 (cons _%program209087%_ _%args209088%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp210997
                     _%status209102%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords209107%_ . _%args209108%_)
        (apply gxc#invoke__%
               _%@@keywords209107%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209107%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209107%_
                  'stderr-redirection:
                  absent-value))
               _%args209108%_)))
    (define gxc#invoke
      (lambda _%args209080209114%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args209080209114%_)))))
