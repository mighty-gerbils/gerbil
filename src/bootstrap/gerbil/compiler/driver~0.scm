(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712784672)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196731 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196731))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196732 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196732))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path196588%_ _%fun196589%_)
        (with-output-to-file
         (cons 'path: (cons _%path196588%_ gxc#scheme-file-settings))
         _%fun196589%_)))
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
      (lambda (_%gerbil-libdir196583%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir196583%_)))
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
      (lambda (_%dir196581%_) (delete-file-or-directory _%dir196581%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath196554%_ _%opts196555%_)
        (if (string? _%srcpath196554%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath196554%_)))
        (let ((_%outdir196557%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts196555%_)))
              (_%invoke-gsc?196558%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts196555%_)))
              (_%gsc-options196559%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts196555%_)))
              (_%keep-scm?196560%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts196555%_)))
              (_%verbosity196561%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts196555%_)))
              (_%optimize196562%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts196555%_)))
              (_%debug196563%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts196555%_)))
              (_%gen-ssxi196564%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts196555%_)))
              (_%parallel?196565%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts196555%_))))
          (if _%outdir196557%_
              (let ((__tmp196733
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir196557%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196733))
              '#!void)
          (if _%optimize196562%_
              (let ((__tmp196734
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196734))
              '#!void)
          (let ((__tmp196737
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath196554%_))
                   (gxc#compile-top-module
                    (let ((__tmp196738
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath196554%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp196738)))))
                (__tmp196736 (gxc#compile-timestamp))
                (__tmp196735
                 (cons 'compile-module (cons _%srcpath196554%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196737
             gxc#current-compile-output-dir
             _%outdir196557%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?196558%_
             gxc#current-compile-gsc-options
             _%gsc-options196559%_
             gxc#current-compile-keep-scm
             _%keep-scm?196560%_
             gxc#current-compile-verbose
             _%verbosity196561%_
             gxc#current-compile-optimize
             _%optimize196562%_
             gxc#current-compile-debug
             _%debug196563%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi196564%_
             gxc#current-compile-timestamp
             __tmp196736
             gxc#current-compile-context
             __tmp196735
             gxc#current-compile-parallel
             _%parallel?196565%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath196574%_)
        (let ((_%opts196576%_ '()))
          (gxc#compile-module__% _%srcpath196574%_ _%opts196576%_))))
    (define gxc#compile-module
      (lambda _g196740_
        (let ((_g196739_ (let () (declare (not safe)) (##length _g196740_))))
          (cond ((let () (declare (not safe)) (##fx= _g196739_ 1))
                 (apply gxc#compile-module__0 _g196740_))
                ((let () (declare (not safe)) (##fx= _g196739_ 2))
                 (apply gxc#compile-module__% _g196740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196740_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath196529%_ _%opts196530%_)
        (if (string? _%srcpath196529%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath196529%_)))
        (let ((_%outdir196532%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts196530%_)))
              (_%invoke-gsc?196533%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts196530%_)))
              (_%gsc-options196534%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts196530%_)))
              (_%keep-scm?196535%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts196530%_)))
              (_%verbosity196536%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts196530%_)))
              (_%debug196537%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts196530%_)))
              (_%parallel?196538%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts196530%_))))
          (if _%outdir196532%_
              (let ((__tmp196741
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir196532%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196741))
              '#!void)
          (let ((__tmp196744
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath196529%_))
                   (gxc#compile-executable-module
                    (let ((__tmp196745
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath196529%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp196745))
                    _%opts196530%_)))
                (__tmp196743 (gxc#compile-timestamp))
                (__tmp196742 (cons 'compile-exe (cons _%srcpath196529%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196744
             gxc#current-compile-output-dir
             _%outdir196532%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?196533%_
             gxc#current-compile-gsc-options
             _%gsc-options196534%_
             gxc#current-compile-keep-scm
             _%keep-scm?196535%_
             gxc#current-compile-verbose
             _%verbosity196536%_
             gxc#current-compile-debug
             _%debug196537%_
             gxc#current-compile-timestamp
             __tmp196743
             gxc#current-compile-context
             __tmp196742
             gxc#current-compile-parallel
             _%parallel?196538%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath196546%_)
        (let ((_%opts196548%_ '()))
          (gxc#compile-exe__% _%srcpath196546%_ _%opts196548%_))))
    (define gxc#compile-exe
      (lambda _g196747_
        (let ((_g196746_ (let () (declare (not safe)) (##length _g196747_))))
          (cond ((let () (declare (not safe)) (##fx= _g196746_ 1))
                 (apply gxc#compile-exe__0 _g196747_))
                ((let () (declare (not safe)) (##fx= _g196746_ 2))
                 (apply gxc#compile-exe__% _g196747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196747_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx196525%_ _%opts196526%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts196526%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx196525%_
             _%opts196526%_)
            (gxc#compile-executable-module/separate
             _%ctx196525%_
             _%opts196526%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx196315%_ _%opts196316%_)
        (letrec ((_%generate-stub196318%_
                  (lambda (_%builtin-modules196521%_)
                    (let ((_%mod-main196523%_
                           (gxc#find-runtime-symbol _%ctx196315%_ 'main)))
                      (let ((__tmp196748
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules196521%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196748))
                      (let ((__tmp196749
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main196523%_
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
                        (##write __tmp196749))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts196319%_
                  (lambda (_%gerbil-libdir196519%_)
                    (let ((__tmp196750
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir196519%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp196750 read))))
                 (_%replace-extension196320%_
                  (lambda (_%path196516%_ _%ext196517%_)
                    (string-append
                     (path-strip-extension _%path196516%_)
                     _%ext196517%_)))
                 (_%userlib-module?196321%_
                  (lambda (_%ctx196514%_)
                    (if (not (_%exclude-module?196323%_ _%ctx196514%_))
                        (not (_%libgerbil-module?196322%_ _%ctx196514%_))
                        '#f)))
                 (_%libgerbil-module?196322%_
                  (lambda (_%ctx196507%_)
                    (let ((_%id-str196509%_
                           (symbol->string
                            (##structure-ref
                             _%ctx196507%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?196323%_ _%id-str196509%_))
                          (let ((_%$e196511%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str196509%_))))
                            (if _%$e196511%_
                                _%$e196511%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str196509%_))))
                          '#f))))
                 (_%exclude-module?196323%_
                  (lambda (_%ctx-or-str196503%_)
                    (let ((_%str196505%_
                           (if (string? _%ctx-or-str196503%_)
                               _%ctx-or-str196503%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str196503%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str196505%_))))
                 (_%not-file-empty?196324%_
                  (lambda (_%path196501%_)
                    (not (gxc#file-empty? _%path196501%_))))
                 (_%fold-libgerbil-runtime-scm196325%_
                  (lambda (_%gerbil-staticdir196494%_ _%libgerbil-scm196495%_)
                    (let ((_%gerbil-runtime-scm196499%_
                           (let ((__tmp196751
                                  (lambda (_%rtm196497%_)
                                    (path-expand
                                     (let ((__tmp196752
                                            (let ((__tmp196753
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm196497%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp196753
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp196752 '".scm"))
                                     _%gerbil-staticdir196494%_))))
                             (declare (not safe))
                             (##map __tmp196751 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates196326%_
                       (append _%gerbil-runtime-scm196499%_
                               _%libgerbil-scm196495%_)))))
                 (_%remove-duplicates196326%_
                  (lambda (_%strlst196454%_)
                    (let _%loop196456%_ ((_%rest196458%_ _%strlst196454%_)
                                         (_%result196459%_ '()))
                      (let* ((_%rest196460196468%_ _%rest196458%_)
                             (_%else196462196476%_
                              (lambda () (reverse! _%result196459%_)))
                             (_%K196464196482%_
                              (lambda (_%rest196479%_ _%path196480%_)
                                (if (member _%path196480%_ _%result196459%_)
                                    (_%loop196456%_
                                     _%rest196479%_
                                     _%result196459%_)
                                    (_%loop196456%_
                                     _%rest196479%_
                                     (cons _%path196480%_
                                           _%result196459%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest196460196468%_))
                            (let ((_%hd196465196485%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest196460196468%_)))
                                  (_%tl196466196487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest196460196468%_))))
                              (let* ((_%path196490%_ _%hd196465196485%_)
                                     (_%rest196492%_ _%tl196466196487%_))
                                (_%K196464196482%_
                                 _%rest196492%_
                                 _%path196490%_)))
                            (_%else196462196476%_))))))
                 (_%compile-stub196327%_
                  (lambda (_%output-scm196334%_ _%output-bin196335%_)
                    (let* ((_%gerbil-home196337%_
                            (let ((__tmp196754
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196754)))
                           (_%gerbil-libdir196339%_
                            (path-expand '"lib" _%gerbil-home196337%_))
                           (_%gerbil-staticdir196341%_
                            (path-expand '"static" _%gerbil-libdir196339%_))
                           (_%deps196343%_
                            (gxc#find-runtime-module-deps _%ctx196315%_))
                           (_%libgerbil-deps196345%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?196322%_
                               _%deps196343%_)))
                           (_%libgerbil-scm196347%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps196345%_)))
                           (_%libgerbil-scm196349%_
                            (_%fold-libgerbil-runtime-scm196325%_
                             _%gerbil-staticdir196341%_
                             _%libgerbil-scm196347%_))
                           (_%libgerbil-c196355%_
                            (map (lambda (_%g196350196352%_)
                                   (_%replace-extension196320%_
                                    _%g196350196352%_
                                    '".c"))
                                 _%libgerbil-scm196349%_))
                           (_%libgerbil-o196361%_
                            (map (lambda (_%g196356196358%_)
                                   (_%replace-extension196320%_
                                    _%g196356196358%_
                                    '".o"))
                                 _%libgerbil-scm196349%_))
                           (_%src-deps196363%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?196321%_
                               _%deps196343%_)))
                           (_%src-deps-scm196365%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps196363%_)))
                           (_%src-deps-scm196367%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?196324%_
                               _%src-deps-scm196365%_)))
                           (_%src-deps-scm196369%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm196367%_)))
                           (_%src-deps-c196375%_
                            (let ((__tmp196755
                                   (lambda (_%g196370196372%_)
                                     (_%replace-extension196320%_
                                      _%g196370196372%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp196755 _%src-deps-scm196369%_)))
                           (_%src-deps-o196381%_
                            (let ((__tmp196756
                                   (lambda (_%g196376196378%_)
                                     (_%replace-extension196320%_
                                      _%g196376196378%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp196756 _%src-deps-scm196369%_)))
                           (_%src-bin-scm196383%_
                            (gxc#find-static-module-file _%ctx196315%_))
                           (_%src-bin-scm196385%_
                            (path-expand _%src-bin-scm196383%_))
                           (_%src-bin-c196387%_
                            (_%replace-extension196320%_
                             _%src-bin-scm196385%_
                             '".c"))
                           (_%src-bin-o196389%_
                            (_%replace-extension196320%_
                             _%src-bin-scm196385%_
                             '".o"))
                           (_%output-bin196391%_
                            (path-expand _%output-bin196335%_))
                           (_%output-scm196393%_
                            (path-expand _%output-scm196334%_))
                           (_%output-c196395%_
                            (_%replace-extension196320%_
                             _%output-scm196393%_
                             '".c"))
                           (_%output-o196397%_
                            (_%replace-extension196320%_
                             _%output-scm196393%_
                             '".o"))
                           (_%output_-c196399%_
                            (_%replace-extension196320%_
                             _%output-scm196393%_
                             '"_.c"))
                           (_%output_-o196401%_
                            (_%replace-extension196320%_
                             _%output-scm196393%_
                             '"_.o"))
                           (_%gsc-link-opts196403%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts196405%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts196407%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir196341%_))
                           (_%output-ld-opts196409%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts196411%_
                            (_%get-libgerbil-ld-opts196319%_
                             _%gerbil-libdir196339%_))
                           (_%rpath196413%_
                            (gxc#gerbil-rpath _%gerbil-libdir196339%_))
                           (_%builtin-modules196417%_
                            (_%remove-duplicates196326%_
                             (let ((__tmp196757
                                    (let ((__tmp196759
                                           (lambda (_%mod196415%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod196415%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp196758
                                           (cons _%ctx196315%_
                                                 _%deps196343%_)))
                                      (declare (not safe))
                                      (##map __tmp196759 __tmp196758))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp196757)))))
                      (letrec ((_%compile-obj196420%_
                                (lambda (_%scm-path196427%_ _%c-path196428%_)
                                  (let* ((_%o-path196430%_
                                          (_%replace-extension196320%_
                                           _%c-path196428%_
                                           '".o"))
                                         (_%lock196432%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path196430%_
                                             '".lock")))
                                         (_%locked196434%_ '#f)
                                         (_%unlock196437%_
                                          (lambda ()
                                            (close-port _%locked196434%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock196432%_)))))
                                    (let _%retry196440%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock196432%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry196440%_))
                                          (begin
                                            (set! _%locked196434%_
                                                  (let ((__tmp196760
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock196432%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp196760)))
                                            (if _%locked196434%_
                                                '#!void
                                                (_%retry196440%_)))))
                                    (let ((__tmp196762
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path196430%_)))
                                                     (not _%scm-path196427%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path196427%_
                                                        _%o-path196430%_)))
                                                 (let ((_%gsc-cc-opts196451%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp196763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp196764 (cons _%c-path196428%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp196764
                            _%gsc-static-opts196407%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp196763 _%gsc-cc-opts196451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp196761
                                           (lambda () (_%unlock196437%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp196762
                                       __tmp196761))))))
                        (let ((__tmp196765
                               (lambda ()
                                 (let ((__tmp196766
                                        (path-directory _%output-bin196391%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp196766)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp196765))
                        (gxc#with-output-to-scheme-file
                         _%output-scm196393%_
                         (lambda ()
                           (_%generate-stub196318%_
                            _%builtin-modules196417%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it196425%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp196767
                                                   (let ((__tmp196768
                                                          (let ((__tmp196769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm196385%_
                               (cons _%output-scm196393%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp196769 _%src-deps-scm196369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp196768
                                                      _%libgerbil-c196355%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp196767
                                               _%gsc-link-opts196403%_))))
                                     (for-each
                                      _%compile-obj196420%_
                                      (let ((__tmp196770
                                             (cons _%src-bin-scm196385%_
                                                   (cons _%output-scm196393%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196770
                                         _%src-deps-scm196369%_))
                                      (let ((__tmp196771
                                             (cons _%src-bin-c196387%_
                                                   (cons _%output-c196395%_
                                                         (cons _%output_-c196399%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196771
                                         _%src-deps-c196375%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin196391%_
                                                        (let ((__tmp196772
                                                               (cons _%src-bin-o196389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o196397%_
                                   (cons _%output_-o196401%_
                                         (let ((__tmp196773
                                                (let ((__tmp196774
                                                       (let ((__tmp196776
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir196339%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts196411%_))))
                     (__tmp196775
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath196413%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp196776 __tmp196775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196774
                                                   _%output-ld-opts196409%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196773
                                            _%libgerbil-o196361%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp196772 _%src-deps-o196381%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp196777
                                            (cons _%output-c196395%_
                                                  (cons _%output_-c196399%_
                                                        (cons _%output-o196397%_
                                                              (cons _%output_-o196401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp196777)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it196425%_))
                                  (_%compile-it196425%_)))
                            '#!void))))))
          (let* ((_%output-bin196329%_
                  (gxc#compile-exe-output-file _%ctx196315%_ _%opts196316%_))
                 (_%output-scm196331%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin196329%_ '"__exe.scm"))))
            (_%compile-stub196327%_
             _%output-scm196331%_
             _%output-bin196329%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx196137%_ _%opts196138%_)
        (letrec ((_%reset-declare196140%_
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
                 (_%generate-stub196141%_
                  (lambda (_%deps196306%_)
                    (let ((_%mod-main196308%_
                           (gxc#find-runtime-symbol _%ctx196137%_ 'main))
                          (_%reset-decl196309%_ (_%reset-declare196140%_))
                          (_%user-decl196310%_ (_%user-declare196142%_)))
                      (for-each
                       (lambda (_%dep196312%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl196309%_))
                         (newline)
                         (if _%user-decl196310%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl196310%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196778
                                (cons 'include (cons _%dep196312%_ '()))))
                           (declare (not safe))
                           (##write __tmp196778))
                         (newline))
                       _%deps196306%_)
                      (let ((__tmp196779
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main196308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196779))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare196142%_
                  (lambda ()
                    (let* ((_%gsc-opts196211%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts196138%_)))
                           (_%gsc-prelude196213%_
                            (if _%gsc-opts196211%_
                                (member '"-prelude" _%gsc-opts196211%_)
                                '#f))
                           (_%gsc-prelude196215%_
                            (if _%gsc-prelude196213%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude196213%_)))
                                '#f)))
                      (let _%lp196218%_ ((_%rest196220%_
                                          (cons _%gsc-prelude196215%_ '()))
                                         (_%user-decls196221%_ '()))
                        (let* ((_%rest196222196230%_ _%rest196220%_)
                               (_%else196224196238%_
                                (lambda ()
                                  (if (null? _%user-decls196221%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls196221%_)))))
                               (_%K196226196294%_
                                (lambda (_%rest196241%_ _%expr196242%_)
                                  (let* ((_%expr196243196255%_ _%expr196242%_)
                                         (_%else196246196263%_
                                          (lambda ()
                                            (_%lp196218%_
                                             _%rest196241%_
                                             _%user-decls196221%_))))
                                    (let ((_%K196251196284%_
                                           (lambda (_%decls196282%_)
                                             (_%lp196218%_
                                              _%rest196241%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls196221%_
                                                 _%decls196282%_)))))
                                          (_%K196248196269%_
                                           (lambda (_%exprs196267%_)
                                             (_%lp196218%_
                                              (append _%exprs196267%_
                                                      _%rest196241%_)
                                              _%user-decls196221%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr196243196255%_))
                                          (let ((_%tl196253196289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr196243196255%_)))
                                                (_%hd196252196287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr196243196255%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd196252196287%_
                                                         'declare))
                                                (let ((_%decls196292%_
                                                       _%tl196253196289%_))
                                                  (_%K196251196284%_
                                                   _%decls196292%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd196252196287%_
                                                             'begin))
                                                    (let ((_%exprs196277%_
                                                           _%tl196253196289%_))
                                                      (_%K196248196269%_
                                                       _%exprs196277%_))
                                                    (_%else196246196263%_))))
                                          (_%else196246196263%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest196222196230%_))
                              (let ((_%hd196227196297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest196222196230%_)))
                                    (_%tl196228196299%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest196222196230%_))))
                                (let* ((_%expr196302%_ _%hd196227196297%_)
                                       (_%rest196304%_ _%tl196228196299%_))
                                  (_%K196226196294%_
                                   _%rest196304%_
                                   _%expr196302%_)))
                              (_%else196224196238%_)))))))
                 (_%compile-stub196143%_
                  (lambda (_%output-scm196150%_ _%output-bin196151%_)
                    (let* ((_%gerbil-home196153%_
                            (let ((__tmp196780
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196780)))
                           (_%gerbil-libdir196155%_
                            (path-expand '"lib" _%gerbil-home196153%_))
                           (_%runtime196157%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp196159%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home196153%_))
                           (_%include-gambit-sharp196161%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp196159%_
                               '"\")")))
                           (_%bin-scm196163%_
                            (gxc#find-static-module-file _%ctx196137%_))
                           (_%deps196165%_
                            (gxc#find-runtime-module-deps _%ctx196137%_))
                           (_%deps196167%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps196165%_)))
                           (_%deps196172%_
                            (let ((__tmp196781
                                   (lambda (_%$obj196169%_)
                                     (not (gxc#file-empty? _%$obj196169%_)))))
                              (declare (not safe))
                              (##filter __tmp196781 _%deps196167%_)))
                           (_%deps196176%_
                            (let ((__tmp196782
                                   (lambda (_%f196174%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f196174%_
                                             _%runtime196157%_))))))
                              (declare (not safe))
                              (##filter __tmp196782 _%deps196172%_)))
                           (_%output-base196178%_
                            (let ((__tmp196783
                                   (path-strip-extension
                                    _%output-scm196150%_)))
                              (declare (not safe))
                              (##string-append __tmp196783)))
                           (_%output-c196180%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196178%_ '".c")))
                           (_%output-o196182%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196178%_ '".o")))
                           (_%output-c_196184%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196178%_ '"_.c")))
                           (_%output-o_196186%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base196178%_ '"_.o")))
                           (_%gsc-link-opts196188%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts196190%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts196192%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir196155%_)))
                           (_%output-ld-opts196194%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros196196%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp196161%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp196161%_
                                            '()))))
                           (_%gsc-link-opts196198%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts196188%_
                               _%gsc-gx-macros196196%_)))
                           (_%rpath196200%_
                            (gxc#gerbil-rpath _%gerbil-libdir196155%_))
                           (_%default-ld-options196202%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196784
                             (lambda ()
                               (let ((__tmp196785
                                      (path-directory _%output-bin196151%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196785)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196784))
                      (gxc#with-output-to-scheme-file
                       _%output-scm196150%_
                       (lambda ()
                         (_%generate-stub196141%_
                          (let ((__tmp196786
                                 (let ((__tmp196787
                                        (cons _%bin-scm196163%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp196787
                                    _%deps196176%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp196786 _%runtime196157%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it196208%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_196184%_
                                                      (let ((__tmp196788
                                                             (cons _%output-scm196150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp196788 _%gsc-link-opts196198%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp196789
                                                 (let ((__tmp196790
                                                        (cons _%output-c196180%_
                                                              (cons _%output-c_196184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp196790
                                                    _%gsc-static-opts196192%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp196789
                                             _%gsc-cc-opts196190%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin196151%_
                                                      (cons _%output-o196182%_
                                                            (cons _%output-o_196186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp196791
                                 (let ((__tmp196793
                                        (cons '"-L"
                                              (cons _%gerbil-libdir196155%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options196202%_))))
                                       (__tmp196792
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath196200%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp196793 __tmp196792))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp196791
                             _%output-ld-opts196194%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it196208%_))
                                (_%compile-it196208%_)))
                          '#!void)))))
          (let* ((_%output-bin196145%_
                  (gxc#compile-exe-output-file _%ctx196137%_ _%opts196138%_))
                 (_%output-scm196147%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin196145%_ '"__exe.scm"))))
            (_%compile-stub196143%_
             _%output-scm196147%_
             _%output-bin196145%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx196086%_ _%id196087%_)
        (let ((_%$e196133%_
               (let ((__tmp196795
                      (lambda (_%e196088196090%_)
                        (let* ((_%g196092196102%_ _%e196088196090%_)
                               (_%else196094196110%_ (lambda () '#f))
                               (_%K196096196114%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g196092196102%_
                                 'gx#module-export::t))
                              (let* ((_%e196097196117%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196092196102%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e196098196120%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196092196102%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e196099196123%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g196092196102%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e196099196123%_ '0))
                                    (let ((_%e196100196126%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g196092196102%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g196128196130%_)
                                             (eq? _%g196128196130%_
                                                  _%id196087%_))
                                           _%e196100196126%_)
                                          (_%K196096196114%_)
                                          (_%else196094196110%_)))
                                    (_%else196094196110%_)))
                              (_%else196094196110%_)))))
                     (__tmp196794
                      (##structure-ref
                       _%ctx196086%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196795 __tmp196794))))
          (if _%$e196133%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e196133%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx196077%_ _%id196078%_)
        (let ((_%$e196080%_
               (gxc#find-export-binding _%ctx196077%_ _%id196078%_)))
          (if _%$e196080%_
              ((lambda (_%bind196083%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind196083%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id196078%_)))
                 (##structure-ref _%bind196083%_ '1 gx#binding::t '#f))
               _%$e196080%_)
              (let ((__tmp196796
                     (##structure-ref
                      _%ctx196077%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196796
                 _%id196078%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195943%_)
        (letrec* ((_%ht195945%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195946%_
                   (lambda (_%in196022%_ _%phi196023%_)
                     (let ((_%iphi196025%_
                            (fx+ _%phi196023%_
                                 (##direct-structure-ref
                                  _%in196022%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports196026%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in196022%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp196028%_ ((_%rest196030%_ _%imports196026%_)
                                          (_%r196031%_ '()))
                         (let* ((_%rest196032196040%_ _%rest196030%_)
                                (_%else196034196048%_ (lambda () _%r196031%_))
                                (_%K196036196065%_
                                 (lambda (_%rest196051%_ _%in196052%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in196052%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi196025%_))
                                           (_%lp196028%_
                                            _%rest196051%_
                                            (cons _%in196052%_ _%r196031%_))
                                           (_%lp196028%_
                                            _%rest196051%_
                                            _%r196031%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in196052%_
                                              'gx#module-import::t))
                                           (let ((_%iphi196056%_
                                                  (fx+ _%phi196023%_
                                                       (##direct-structure-ref
                                                        _%in196052%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi196056%_))
                                                 (_%lp196028%_
                                                  _%rest196051%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in196052%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r196031%_))
                                                 (_%lp196028%_
                                                  _%rest196051%_
                                                  _%r196031%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in196052%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi196059%_
                                                      (fx+ _%iphi196025%_
                                                           (##direct-structure-ref
                                                            _%in196052%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi196059%_))
                                                     (_%lp196028%_
                                                      _%rest196051%_
                                                      (cons (##direct-structure-ref
                                                             _%in196052%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r196031%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi196059%_))
                                                         (_%lp196028%_
                                                          _%rest196051%_
                                                          (let ((__tmp196797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template195946%_
                          _%in196052%_
                          _%iphi196025%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r196031%_ __tmp196797)))
                 (_%lp196028%_ _%rest196051%_ _%r196031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp196028%_
                                                _%rest196051%_
                                                _%r196031%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest196032196040%_))
                               (let ((_%hd196037196068%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest196032196040%_)))
                                     (_%tl196038196070%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest196032196040%_))))
                                 (let* ((_%in196073%_ _%hd196037196068%_)
                                        (_%rest196075%_ _%tl196038196070%_))
                                   (_%K196036196065%_
                                    _%rest196075%_
                                    _%in196073%_)))
                               (_%else196034196048%_)))))))
                  (_%find-deps195947%_
                   (lambda (_%rest195955%_ _%deps195956%_)
                     (let* ((_%rest195957195965%_ _%rest195955%_)
                            (_%else195959195973%_ (lambda () _%deps195956%_))
                            (_%K195961196010%_
                             (lambda (_%rest195976%_ _%hd195977%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195977%_
                                      'gx#module-context::t))
                                   (let ((_%id195980%_
                                          (##structure-ref
                                           _%hd195977%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195981%_
                                          (##structure-ref
                                           _%hd195977%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195945%_
                                            _%id195980%_))
                                         (_%find-deps195947%_
                                          _%rest195976%_
                                          _%deps195956%_)
                                         (let ((_%$e195984%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195977%_))))
                                           (if _%$e195984%_
                                               ((lambda (_%pre195987%_)
                                                  (let ((_%xdeps195989%_
                                                         (_%find-deps195947%_
                                                          (cons _%pre195987%_
                                                                _%imports195981%_)
                                                          _%deps195956%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195945%_
                                                       _%id195980%_
                                                       _%hd195977%_))
                                                    (_%find-deps195947%_
                                                     _%rest195976%_
                                                     (cons _%hd195977%_
                                                           _%xdeps195989%_))))
                                                _%$e195984%_)
                                               (let ((_%xdeps195992%_
                                                      (_%find-deps195947%_
                                                       _%imports195981%_
                                                       _%deps195956%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195945%_
                                                    _%id195980%_
                                                    _%hd195977%_))
                                                 (_%find-deps195947%_
                                                  _%rest195976%_
                                                  (cons _%hd195977%_
                                                        _%xdeps195992%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195977%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195995%_
                                              (##structure-ref
                                               _%hd195977%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195945%_
                                                _%id195995%_))
                                             (_%find-deps195947%_
                                              _%rest195976%_
                                              _%deps195956%_)
                                             (let ((_%xdeps195999%_
                                                    (_%find-deps195947%_
                                                     (##structure-ref
                                                      _%hd195977%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps195956%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195945%_
                                                      _%id195995%_))
                                                   (_%find-deps195947%_
                                                    _%rest195976%_
                                                    _%xdeps195999%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195945%_
                                                        _%id195995%_
                                                        _%hd195977%_))
                                                     (_%find-deps195947%_
                                                      _%rest195976%_
                                                      (cons _%hd195977%_
                                                            _%xdeps195999%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195977%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd195977%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps195947%_
                                                (cons (##direct-structure-ref
                                                       _%hd195977%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest195976%_)
                                                _%deps195956%_)
                                               (_%find-deps195947%_
                                                _%rest195976%_
                                                _%deps195956%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195977%_
                                                  'gx#module-export::t))
                                               (_%find-deps195947%_
                                                (cons (##direct-structure-ref
                                                       _%hd195977%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest195976%_)
                                                _%deps195956%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195977%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd195977%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps195947%_
                (cons (##direct-structure-ref
                       _%hd195977%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest195976%_)
                _%deps195956%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd195977%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps196006%_
                          (_%import-set-template195946%_ _%hd195977%_ '0)))
                     (_%find-deps195947%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest195976%_ _%xdeps196006%_))
                      _%deps195956%_))
                   (_%find-deps195947%_ _%rest195976%_ _%deps195956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195977%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195957195965%_))
                           (let ((_%hd195962196013%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195957195965%_)))
                                 (_%tl195963196015%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195957195965%_))))
                             (let* ((_%hd196018%_ _%hd195962196013%_)
                                    (_%rest196020%_ _%tl195963196015%_))
                               (_%K195961196010%_
                                _%rest196020%_
                                _%hd196018%_)))
                           (_%else195959195973%_))))))
          (let ((__tmp196798
                 (filter gx#expander-context-id
                         (_%find-deps195947%_
                          (let ((_%$e195949%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx195943%_))))
                            (if _%$e195949%_
                                ((lambda (_%pre195952%_)
                                   (cons _%pre195952%_
                                         (##structure-ref
                                          _%ctx195943%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e195949%_)
                                (##structure-ref
                                 _%ctx195943%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp196798)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195873%_)
        (let* ((_%context-id195875%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195873%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195873%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195873%_)))
               (_%scm195877%_
                (let ((__tmp196799
                       (gxc#static-module-name _%context-id195875%_)))
                  (declare (not safe))
                  (##string-append __tmp196799 '".scm")))
               (_%dirs195879%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195885%_
                (let ((_%user-libpath195881%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195881%_
                      (let ((_%user-libpath195883%_
                             (path-expand '"lib" _%user-libpath195881%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195883%_ _%dirs195879%_))
                            _%dirs195879%_
                            (cons _%user-libpath195883%_ _%dirs195879%_)))
                      _%dirs195879%_)))
               (_%dirs195895%_
                (let ((_%$e195887%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195887%_
                      ((lambda (_%g195889195891%_)
                         (cons _%g195889195891%_ _%dirs195885%_))
                       _%$e195887%_)
                      _%dirs195885%_)))
               (_%dirs195901%_
                (let ((__tmp196800
                       (lambda (_%g195896195898%_)
                         (path-expand '"static" _%g195896195898%_))))
                  (declare (not safe))
                  (##map __tmp196800 _%dirs195895%_))))
          (let _%lp195904%_ ((_%rest195906%_ _%dirs195901%_))
            (let* ((_%rest195907195915%_ _%rest195906%_)
                   (_%else195909195923%_
                    (lambda ()
                      (let ((__tmp196801
                             (##structure-ref
                              _%ctx195873%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196801
                         _%scm195877%_))))
                   (_%K195911195931%_
                    (lambda (_%rest195926%_ _%dir195927%_)
                      (let ((_%path195929%_
                             (path-expand _%scm195877%_ _%dir195927%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195929%_))
                            _%path195929%_
                            (_%lp195904%_ _%rest195926%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest195907195915%_))
                  (let ((_%hd195912195934%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195907195915%_)))
                        (_%tl195913195936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195907195915%_))))
                    (let* ((_%dir195939%_ _%hd195912195934%_)
                           (_%rest195941%_ _%tl195913195936%_))
                      (_%K195911195931%_ _%rest195941%_ _%dir195939%_)))
                  (_%else195909195923%_)))))))
    (define gxc#file-empty?
      (lambda (_%path195871%_)
        (zero? (let ((__tmp196802 (file-info _%path195871%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196802)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195867%_)
        (let ((__tmp196806
               (lambda ()
                 (let ((__tmp196807
                        (##structure-ref
                         _%ctx195867%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196807))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196808
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195867%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196808))
                     '#!void)
                 (gxc#collect-bindings _%ctx195867%_)
                 (gxc#compile-runtime-code _%ctx195867%_)
                 (gxc#compile-meta-code _%ctx195867%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx195867%_)
                     '#!void)))
              (__tmp196805
               (let ((__obj196729
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196729)
                 __obj196729))
              (__tmp196804 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196803
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
          (__call-with-parameters
           __tmp196806
           gx#current-expander-context
           _%ctx195867%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196805
           gxc#current-compile-runtime-sections
           __tmp196804
           gxc#current-compile-runtime-names
           __tmp196803))))
    (define gxc#collect-bindings
      (lambda (_%ctx195865%_)
        (let ((__tmp196809
               (##structure-ref _%ctx195865%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196809))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195813%_)
        (letrec ((_%compile1195815%_
                  (lambda (_%ctx195854%_)
                    (let* ((_%code195856%_
                            (##structure-ref
                             _%ctx195854%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm195860%_
                            (let ((_%idstr195858%_
                                   (let ((__tmp196810
                                          (##structure-ref
                                           _%ctx195854%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp196810))))
                              (declare (not safe))
                              (##string-append _%idstr195858%_ '"~0")))
                           (_%rtc?195862%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code195856%_))))
                      (if _%rtc?195862%_
                          (let ((__tmp196811
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp196811
                             _%ctx195854%_
                             _%rtm195860%_))
                          '#!void)
                      (_%generate-runtime-code195817%_
                       _%ctx195854%_
                       _%code195856%_
                       (if _%rtc?195862%_ _%rtm195860%_ '#f)))))
                 (_%context-timestamp195816%_
                  (lambda (_%ctx195852%_)
                    (let ((__tmp196812
                           (let ((__tmp196813
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195852%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196813 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196812))))
                 (_%generate-runtime-code195817%_
                  (lambda (_%ctx195824%_ _%code195825%_ _%rtm195826%_)
                    (let* ((_%runtime-code?195828%_ (if _%rtm195826%_ '#t '#f))
                           (_%lifts195830%_ (box '()))
                           (_%runtime-code195833%_
                            (if _%runtime-code?195828%_
                                (let ((__tmp196816
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code195825%_))))
                                      (__tmp196815
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp196814
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp196816
                                   gx#current-expander-context
                                   _%ctx195824%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts195830%_
                                   gxc#current-compile-marks
                                   __tmp196815
                                   gxc#current-compile-identifiers
                                   __tmp196814))
                                '#f))
                           (_%runtime-code195835%_
                            (if _%runtime-code?195828%_
                                (if (null? (unbox _%lifts195830%_))
                                    _%runtime-code195833%_
                                    (cons 'begin
                                          (let ((__tmp196818
                                                 (cons _%runtime-code195833%_
                                                       '()))
                                                (__tmp196817
                                                 (reverse (unbox _%lifts195830%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp196818
                                             __tmp196817))))
                                '#f))
                           (_%runtime-code195837%_
                            (if _%runtime-code?195828%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp195816%_
                                                         _%ctx195824%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code195835%_ '())))
                                '#f))
                           (_%loader-code195840%_
                            (let ((__tmp196819
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195825%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196819
                               gx#current-expander-context
                               _%ctx195824%_)))
                           (_%loader-code195842%_
                            (cons 'begin
                                  (cons _%loader-code195840%_
                                        (cons (if _%runtime-code?195828%_
                                                  (cons 'load-module
                                                        (cons _%rtm195826%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0195844%_
                            (gxc#compile-output-file _%ctx195824%_ '0 '".scm"))
                           (_%scmrt195846%_
                            (gxc#compile-output-file
                             _%ctx195824%_
                             '#f
                             '".scm"))
                           (_%scms195848%_
                            (gxc#compile-static-output-file _%ctx195824%_)))
                      (if _%runtime-code?195828%_
                          (gxc#compile-scm-file__0
                           _%scm0195844%_
                           _%runtime-code195837%_)
                          '#!void)
                      (let ((__tmp196820
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt195846%_
                                _%loader-code195842%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196820
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms195848%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms195848%_))
                          '#!void)
                      (if _%runtime-code?195828%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0195844%_ _%scms195848%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms195848%_ void)))))))
          (let* ((_%all-modules195819%_
                  (cons _%ctx195813%_ (gxc#lift-nested-modules _%ctx195813%_)))
                 (__tmp196821
                  (lambda (_%ctx195821%_)
                    (let ((__tmp196822
                           (lambda () (_%compile1195815%_ _%ctx195821%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196822
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196821 _%all-modules195819%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195713%_)
        (letrec ((_%compile-ssi195715%_
                  (lambda (_%code195781%_)
                    (let* ((_%path195783%_
                            (gxc#compile-output-file
                             _%ctx195713%_
                             '#f
                             '".ssi"))
                           (_%prelude195795%_
                            (let* ((_%super195785%_
                                    (##structure-ref
                                     _%ctx195713%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195787%_
                                    (##structure-ref
                                     _%super195785%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195787%_
                                  ((lambda (_%g195789195791%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195789195791%_)))
                                   _%$e195787%_)
                                  ':<root>)))
                           (_%ns195797%_
                            (##structure-ref
                             _%ctx195713%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195799%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195713%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195807%_
                            (let ((_%$e195801%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195799%_ '#\/))))
                              (if _%$e195801%_
                                  ((lambda (_%x195804%_)
                                     (let ((__tmp196823
                                            (substring
                                             _%idstr195799%_
                                             '0
                                             _%x195804%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196823)))
                                   _%$e195801%_)
                                  '#f)))
                           (_%rt195809%_
                            (let ((__tmp196824
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196824 _%ctx195713%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195783%_))
                      (gxc#with-output-to-scheme-file
                       _%path195783%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude195795%_))
                         (if _%pkg195807%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg195807%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns195797%_))
                         (newline)
                         (pretty-print _%code195781%_)
                         (if _%rt195809%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt195809%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi195716%_
                  (lambda (_%part195721%_)
                    (let* ((_%part195722195735%_ _%part195721%_)
                           (_%E195724195739%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195722195735%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195725195750%_
                            (lambda (_%code195742%_
                                     _%n195743%_
                                     _%phi195744%_
                                     _%phi-ctx195745%_)
                              (let ((_%code195748%_
                                     (let ((__tmp196825
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code195742%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp196825
                                        gx#current-expander-context
                                        _%phi-ctx195745%_
                                        gx#current-expander-phi
                                        _%phi195744%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx195713%_
                                  _%n195743%_
                                  '".scm")
                                 _%code195748%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195722195735%_))
                          (let ((_%hd195726195753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195722195735%_)))
                                (_%tl195727195755%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195722195735%_))))
                            (let ((_%phi-ctx195758%_ _%hd195726195753%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195727195755%_))
                                  (let ((_%hd195728195760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195727195755%_)))
                                        (_%tl195729195762%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195727195755%_))))
                                    (let ((_%phi195765%_ _%hd195728195760%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195729195762%_))
                                          (let ((_%hd195730195767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195729195762%_)))
                                                (_%tl195731195769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195729195762%_))))
                                            (let ((_%n195772%_
                                                   _%hd195730195767%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195731195769%_))
                                                  (let ((_%hd195732195774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195731195769%_)))
                                                        (_%tl195733195776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195731195769%_))))
                                                    (let ((_%code195779%_
                                                           _%hd195732195774%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195733195776%_))
                                                          (_%K195725195750%_
                                                           _%code195779%_
                                                           _%n195772%_
                                                           _%phi195765%_
                                                           _%phi-ctx195758%_)
                                                          (_%E195724195739%_))))
                                                  (_%E195724195739%_))))
                                          (_%E195724195739%_))))
                                  (_%E195724195739%_))))
                          (_%E195724195739%_))))))
          (let ((_g196826_ (gxc#generate-meta-code _%ctx195713%_)))
            (begin
              (let ((_g196827_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196826_)
                           (##vector-length _g196826_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196827_ 2)))
                    (error "Context expects 2 values" _g196827_)))
              (let ((_%ssi-code195718%_
                     (let () (declare (not safe)) (##vector-ref _g196826_ 0)))
                    (_%phi-code195719%_
                     (let () (declare (not safe)) (##vector-ref _g196826_ 1))))
                (begin
                  (_%compile-ssi195715%_ _%ssi-code195718%_)
                  (for-each _%compile-phi195716%_ _%phi-code195719%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195695%_)
        (let* ((_%path195697%_
                (gxc#compile-output-file _%ctx195695%_ '#f '".ssxi.ss"))
               (_%code195699%_
                (let ((__tmp196828
                       (##structure-ref
                        _%ctx195695%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196828)))
               (_%idstr195701%_
                (symbol->string
                 (##structure-ref
                  _%ctx195695%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195709%_
                (let ((_%$e195703%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195701%_ '#\/))))
                  (if _%$e195703%_
                      ((lambda (_%x195706%_)
                         (let ((__tmp196829
                                (substring _%idstr195701%_ '0 _%x195706%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196829)))
                       _%$e195703%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195697%_))
          (gxc#with-output-to-scheme-file
           _%path195697%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg195709%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg195709%_))
                 '#!void)
             (newline)
             (pretty-print _%code195699%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195688%_)
        (let* ((_%state195690%_
                (let ((__obj196730
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196730 _%ctx195688%_)
                  __obj196730))
               (_%ssi-code195692%_
                (let ((__tmp196830
                       (##structure-ref
                        _%ctx195688%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195690%_
                   __tmp196830))))
          (values _%ssi-code195692%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195690%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195681%_)
        (let ((_%lifts195683%_ (box '())))
          (let ((__tmp196833
                 (lambda ()
                   (let ((_%code195686%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195681%_))))
                     (if (null? (unbox _%lifts195683%_))
                         _%code195686%_
                         (cons 'begin
                               (let ((__tmp196835 (cons _%code195686%_ '()))
                                     (__tmp196834
                                      (reverse (unbox _%lifts195683%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196835 __tmp196834)))))))
                (__tmp196832
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196831
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196833
             gxc#current-compile-lift
             _%lifts195683%_
             gxc#current-compile-marks
             __tmp196832
             gxc#current-compile-identifiers
             __tmp196831)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195677%_)
        (let ((_%modules195679%_ (box '())))
          (let ((__tmp196836
                 (##structure-ref _%ctx195677%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195679%_ __tmp196836))
          (reverse (unbox _%modules195679%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195657%_ _%code195658%_ _%phi?195659%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195657%_))
        (gxc#with-output-to-scheme-file
         _%path195657%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp196837
                                           (if _%phi?195659%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp196837)))))))
           (pretty-print _%code195658%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it195663%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path195657%_ _%phi?195659%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp196838
                         (cons 'compile-file (cons _%path195657%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it195663%_ __tmp196838))
                  (_%compile-it195663%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path195668%_ _%code195669%_)
        (let ((_%phi?195671%_ '#f))
          (gxc#compile-scm-file__%
           _%path195668%_
           _%code195669%_
           _%phi?195671%_))))
    (define gxc#compile-scm-file
      (lambda _g196840_
        (let ((_g196839_ (let () (declare (not safe)) (##length _g196840_))))
          (cond ((let () (declare (not safe)) (##fx= _g196839_ 2))
                 (apply gxc#compile-scm-file__0 _g196840_))
                ((let () (declare (not safe)) (##fx= _g196839_ 3))
                 (apply gxc#compile-scm-file__% _g196840_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196840_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?195558%_)
        (let _%lp195560%_ ((_%rest195562%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195563%_ '()))
          (let* ((_%rest195564195584%_ _%rest195562%_)
                 (_%else195568195592%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts195563%_)))
                        (reverse _%opts195563%_)))))
            (let ((_%K195578195635%_
                   (lambda (_%rest195633%_)
                     (_%lp195560%_ _%rest195633%_ _%opts195563%_)))
                  (_%K195573195617%_
                   (lambda (_%rest195615%_)
                     (_%lp195560%_ _%rest195615%_ _%opts195563%_)))
                  (_%K195570195599%_
                   (lambda (_%rest195596%_ _%opt195597%_)
                     (_%lp195560%_
                      _%rest195596%_
                      (cons _%opt195597%_ _%opts195563%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest195564195584%_))
                  (let ((_%tl195580195640%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195564195584%_)))
                        (_%hd195579195638%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195564195584%_))))
                    (if (equal? _%hd195579195638%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195580195640%_))
                            (let* ((_%tl195582195643%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195580195640%_)))
                                   (_%rest195646%_ _%tl195582195643%_))
                              (_%K195578195635%_ _%rest195646%_))
                            (let ((_%opt195607%_ _%hd195579195638%_)
                                  (_%rest195609%_ _%tl195580195640%_))
                              (_%K195570195599%_
                               _%rest195609%_
                               _%opt195607%_)))
                        (if (equal? _%hd195579195638%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195580195640%_))
                                (let* ((_%tl195577195625%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl195580195640%_)))
                                       (_%rest195628%_ _%tl195577195625%_))
                                  (_%K195573195617%_ _%rest195628%_))
                                (let ((_%opt195607%_ _%hd195579195638%_)
                                      (_%rest195609%_ _%tl195580195640%_))
                                  (_%K195570195599%_
                                   _%rest195609%_
                                   _%opt195607%_)))
                            (let ((_%opt195607%_ _%hd195579195638%_)
                                  (_%rest195609%_ _%tl195580195640%_))
                              (_%K195570195599%_
                               _%rest195609%_
                               _%opt195607%_)))))
                  (_%else195568195592%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195652%_ '#f)) (gxc#gsc-link-options__% _%phi?195652%_))))
    (define gxc#gsc-link-options
      (lambda _g196842_
        (let ((_g196841_ (let () (declare (not safe)) (##length _g196842_))))
          (cond ((let () (declare (not safe)) (##fx= _g196841_ 0))
                 (apply gxc#gsc-link-options__0 _g196842_))
                ((let () (declare (not safe)) (##fx= _g196841_ 1))
                 (apply gxc#gsc-link-options__% _g196842_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196842_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords195407%_ _%static?195403195408%_ _%phi?195410%_)
        (let ((_%static?195412%_
               (if (eq? _%static?195403195408%_ absent-value)
                   '#f
                   _%static?195403195408%_)))
          (if _%phi?195410%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp195414%_ ((_%rest195416%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts195417%_ '()))
                (let* ((_%rest195418195444%_ _%rest195416%_)
                       (_%else195423195452%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts195417%_)))
                              (reverse! _%opts195417%_)))))
                  (let ((_%K195438195515%_
                         (lambda (_%rest195512%_ _%opt195513%_)
                           (if _%static?195412%_
                               (_%lp195414%_
                                _%rest195512%_
                                (cons _%opt195513%_
                                      (cons '"-cc-options" _%opts195417%_)))
                               (_%lp195414%_ _%rest195512%_ _%opts195417%_))))
                        (_%K195433195492%_
                         (lambda (_%rest195489%_ _%opt195490%_)
                           (_%lp195414%_
                            _%rest195489%_
                            (cons _%opt195490%_
                                  (cons '"-cc-options" _%opts195417%_)))))
                        (_%K195428195472%_
                         (lambda (_%rest195470%_)
                           (_%lp195414%_ _%rest195470%_ _%opts195417%_)))
                        (_%K195425195458%_
                         (lambda (_%rest195456%_)
                           (_%lp195414%_ _%rest195456%_ _%opts195417%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest195418195444%_))
                        (let ((_%tl195440195520%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest195418195444%_)))
                              (_%hd195439195518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest195418195444%_))))
                          (if (equal? _%hd195439195518%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195440195520%_))
                                  (let ((_%tl195442195525%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195440195520%_)))
                                        (_%hd195441195523%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195440195520%_))))
                                    (if (equal? _%hd195441195523%_ '"-Bstatic")
                                        (let ((_%opt195528%_
                                               _%hd195441195523%_)
                                              (_%rest195530%_
                                               _%tl195442195525%_))
                                          (_%K195438195515%_
                                           _%rest195530%_
                                           _%opt195528%_))
                                        (let ((_%opt195505%_
                                               _%hd195441195523%_)
                                              (_%rest195507%_
                                               _%tl195442195525%_))
                                          (_%K195433195492%_
                                           _%rest195507%_
                                           _%opt195505%_))))
                                  (let ((_%rest195464%_ _%tl195440195520%_))
                                    (_%K195425195458%_ _%rest195464%_)))
                              (if (equal? _%hd195439195518%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl195440195520%_))
                                      (let* ((_%tl195432195480%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl195440195520%_)))
                                             (_%rest195483%_
                                              _%tl195432195480%_))
                                        (_%K195428195472%_ _%rest195483%_))
                                      (let ((_%rest195464%_
                                             _%tl195440195520%_))
                                        (_%K195425195458%_ _%rest195464%_)))
                                  (let ((_%rest195464%_ _%tl195440195520%_))
                                    (_%K195425195458%_ _%rest195464%_)))))
                        (_%else195423195452%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords195535%_ _%static?195403195536%_)
        (let ((_%phi?195538%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords195535%_
           _%static?195403195536%_
           _%phi?195538%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g196844_
        (let ((_g196843_ (let () (declare (not safe)) (##length _g196844_))))
          (cond ((let () (declare (not safe)) (##fx= _g196843_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g196844_))
                ((let () (declare (not safe)) (##fx= _g196843_ 3))
                 (apply gxc#gsc-cc-options__%__% _g196844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g196844_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords195547%_ . _%args195548%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords195547%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195547%_
                  'static:
                  absent-value))
               _%args195548%_)))
    (define gxc#gsc-cc-options
      (lambda _%args195404195554%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args195404195554%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords195252%_ _%static?195248195253%_ _%phi?195255%_)
        (let ((_%static?195257%_
               (if (eq? _%static?195248195253%_ absent-value)
                   '#f
                   _%static?195248195253%_)))
          (if _%phi?195255%_
              '()
              (let _%lp195259%_ ((_%rest195261%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts195262%_ '()))
                (let* ((_%rest195263195289%_ _%rest195261%_)
                       (_%else195268195297%_
                        (lambda () (reverse! _%opts195262%_))))
                  (let ((_%K195283195360%_
                         (lambda (_%rest195357%_ _%opt195358%_)
                           (if _%static?195257%_
                               (_%lp195259%_
                                _%rest195357%_
                                (cons _%opt195358%_
                                      (cons '"-ld-options" _%opts195262%_)))
                               (_%lp195259%_ _%rest195357%_ _%opts195262%_))))
                        (_%K195278195337%_
                         (lambda (_%rest195334%_ _%opt195335%_)
                           (_%lp195259%_
                            _%rest195334%_
                            (cons _%opt195335%_
                                  (cons '"-ld-options" _%opts195262%_)))))
                        (_%K195273195317%_
                         (lambda (_%rest195315%_)
                           (_%lp195259%_ _%rest195315%_ _%opts195262%_)))
                        (_%K195270195303%_
                         (lambda (_%rest195301%_)
                           (_%lp195259%_ _%rest195301%_ _%opts195262%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest195263195289%_))
                        (let ((_%tl195285195365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest195263195289%_)))
                              (_%hd195284195363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest195263195289%_))))
                          (if (equal? _%hd195284195363%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195285195365%_))
                                  (let ((_%tl195287195370%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195285195365%_)))
                                        (_%hd195286195368%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195285195365%_))))
                                    (if (equal? _%hd195286195368%_ '"-static")
                                        (let ((_%opt195373%_
                                               _%hd195286195368%_)
                                              (_%rest195375%_
                                               _%tl195287195370%_))
                                          (_%K195283195360%_
                                           _%rest195375%_
                                           _%opt195373%_))
                                        (let ((_%opt195350%_
                                               _%hd195286195368%_)
                                              (_%rest195352%_
                                               _%tl195287195370%_))
                                          (_%K195278195337%_
                                           _%rest195352%_
                                           _%opt195350%_))))
                                  (let ((_%rest195309%_ _%tl195285195365%_))
                                    (_%K195270195303%_ _%rest195309%_)))
                              (if (equal? _%hd195284195363%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl195285195365%_))
                                      (let* ((_%tl195277195325%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl195285195365%_)))
                                             (_%rest195328%_
                                              _%tl195277195325%_))
                                        (_%K195273195317%_ _%rest195328%_))
                                      (let ((_%rest195309%_
                                             _%tl195285195365%_))
                                        (_%K195270195303%_ _%rest195309%_)))
                                  (let ((_%rest195309%_ _%tl195285195365%_))
                                    (_%K195270195303%_ _%rest195309%_)))))
                        (_%else195268195297%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords195380%_ _%static?195248195381%_)
        (let ((_%phi?195383%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords195380%_
           _%static?195248195381%_
           _%phi?195383%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g196846_
        (let ((_g196845_ (let () (declare (not safe)) (##length _g196846_))))
          (cond ((let () (declare (not safe)) (##fx= _g196845_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g196846_))
                ((let () (declare (not safe)) (##fx= _g196845_ 3))
                 (apply gxc#gsc-ld-options__%__% _g196846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g196846_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords195392%_ . _%args195393%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords195392%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195392%_
                  'static:
                  absent-value))
               _%args195393%_)))
    (define gxc#gsc-ld-options
      (lambda _%args195249195399%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args195249195399%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir195243%_)
        (let ((_%user-staticdir195245%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir195243%_
                       '" -I "
                       _%user-staticdir195245%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp195155%_ ((_%rest195157%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195158%_ '()))
          (let* ((_%rest195159195179%_ _%rest195157%_)
                 (_%else195163195187%_ (lambda () _%opts195158%_)))
            (let ((_%K195173195230%_
                   (lambda (_%rest195228%_)
                     (_%lp195155%_ _%rest195228%_ _%opts195158%_)))
                  (_%K195168195208%_
                   (lambda (_%rest195205%_ _%opt195206%_)
                     (_%lp195155%_
                      _%rest195205%_
                      (let ((__tmp196847
                             (let ((__tmp196848
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt195206%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp196848))))
                        (declare (not safe))
                        (##append _%opts195158%_ __tmp196847)))))
                  (_%K195165195193%_
                   (lambda (_%rest195191%_)
                     (_%lp195155%_ _%rest195191%_ _%opts195158%_))))
              (if (let () (declare (not safe)) (##pair? _%rest195159195179%_))
                  (let ((_%tl195175195235%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195159195179%_)))
                        (_%hd195174195233%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195159195179%_))))
                    (if (equal? _%hd195174195233%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195175195235%_))
                            (let* ((_%tl195177195238%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195175195235%_)))
                                   (_%rest195241%_ _%tl195177195238%_))
                              (_%K195173195230%_ _%rest195241%_))
                            (let ((_%rest195199%_ _%tl195175195235%_))
                              (_%K195165195193%_ _%rest195199%_)))
                        (if (equal? _%hd195174195233%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195175195235%_))
                                (let ((_%tl195172195218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl195175195235%_)))
                                      (_%hd195171195216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl195175195235%_))))
                                  (let ((_%opt195221%_ _%hd195171195216%_)
                                        (_%rest195223%_ _%tl195172195218%_))
                                    (_%K195168195208%_
                                     _%rest195223%_
                                     _%opt195221%_)))
                                (let ((_%rest195199%_ _%tl195175195235%_))
                                  (_%K195165195193%_ _%rest195199%_)))
                            (let ((_%rest195199%_ _%tl195175195235%_))
                              (_%K195165195193%_ _%rest195199%_)))))
                  (_%else195163195187%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str195152%_)
        (not (let () (declare (not safe)) (string-empty? _%str195152%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path195145%_ _%phi?195146%_)
        (let ((_%gsc-link-opts195148%_
               (gxc#gsc-link-options__% _%phi?195146%_))
              (_%gsc-cc-opts195149%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?195146%_))
              (_%gsc-ld-opts195150%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?195146%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp196849
                  (let ((__tmp196850
                         (let ((__tmp196851 (cons _%path195145%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp196851
                            _%gsc-link-opts195148%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp196850 _%gsc-ld-opts195150%_))))
             (declare (not safe))
             (__foldr1 cons __tmp196849 _%gsc-cc-opts195149%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx195111%_ _%n195112%_ _%ext195113%_)
        (letrec ((_%module-relative-path195115%_
                  (lambda (_%ctx195143%_)
                    (path-strip-directory
                     (let ((__tmp196852
                            (##structure-ref
                             _%ctx195143%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196852)))))
                 (_%module-source-directory195116%_
                  (lambda (_%ctx195139%_)
                    (path-directory
                     (let ((_%mpath195141%_
                            (##structure-ref
                             _%ctx195139%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath195141%_)
                           _%mpath195141%_
                           (last _%mpath195141%_))))))
                 (_%section-string195117%_
                  (lambda (_%n195133%_)
                    (if (number? _%n195133%_)
                        (number->string _%n195133%_)
                        (if (symbol? _%n195133%_)
                            (symbol->string _%n195133%_)
                            (if (string? _%n195133%_)
                                _%n195133%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n195133%_)))))))
                 (_%file-name195118%_
                  (lambda (_%path195131%_)
                    (if _%n195112%_
                        (string-append
                         _%path195131%_
                         '"~"
                         (_%section-string195117%_ _%n195112%_)
                         _%ext195113%_)
                        (string-append _%path195131%_ _%ext195113%_))))
                 (_%file-path195119%_
                  (lambda ()
                    (let ((_%$e195125%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e195125%_
                          ((lambda (_%outdir195128%_)
                             (path-expand
                              (_%file-name195118%_
                               (let ((__tmp196853
                                      (##structure-ref
                                       _%ctx195111%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp196853)))
                              _%outdir195128%_))
                           _%$e195125%_)
                          (path-expand
                           (_%file-name195118%_
                            (_%module-relative-path195115%_ _%ctx195111%_))
                           (_%module-source-directory195116%_
                            _%ctx195111%_)))))))
          (let ((_%path195121%_ (_%file-path195119%_)))
            (let ((__tmp196854
                   (lambda ()
                     (let ((__tmp196855 (path-directory _%path195121%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196855)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196854))
            _%path195121%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx195092%_)
        (letrec ((_%file-name195094%_
                  (lambda (_%id195109%_)
                    (let ((__tmp196856 (gxc#static-module-name _%id195109%_)))
                      (declare (not safe))
                      (##string-append __tmp196856 '".scm"))))
                 (_%file-path195095%_
                  (lambda ()
                    (let* ((_%file195101%_
                            (_%file-name195094%_
                             (##structure-ref
                              _%ctx195092%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e195103%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e195103%_
                          ((lambda (_%outdir195106%_)
                             (path-expand
                              _%file195101%_
                              (path-expand '"static" _%outdir195106%_)))
                           _%$e195103%_)
                          (path-expand _%file195101%_ '"static"))))))
          (let ((_%path195097%_ (_%file-path195095%_)))
            (let ((__tmp196857
                   (lambda ()
                     (let ((__tmp196858 (path-directory _%path195097%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196858)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196857))
            _%path195097%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx195085%_ _%opts195086%_)
        (let ((_%$e195088%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts195086%_))))
          (if _%$e195088%_
              (values _%$e195088%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx195085%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr195075%_)
        (if (string? _%idstr195075%_)
            (let* ((_%str195078%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr195075%_)))
                   (_%strs195080%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str195078%_ '#\/))))
              (declare (not safe))
              (string-join _%strs195080%_ '"__"))
            (if (symbol? _%idstr195075%_)
                (gxc#static-module-name (symbol->string _%idstr195075%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr195075%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp196859
               (let ((__tmp196860 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp196860 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp196859))))
    (define gxc#invoke__%
      (lambda (_%@@keywords195039%_
               _%stdout-redirection195035195040%_
               _%stderr-redirection195036195042%_
               _%program195044%_
               _%args195045%_)
        (let* ((_%stdout-redirection195047%_
                (if (eq? _%stdout-redirection195035195040%_ absent-value)
                    '#f
                    _%stdout-redirection195035195040%_))
               (_%stderr-redirection195049%_
                (if (eq? _%stderr-redirection195036195042%_ absent-value)
                    '#f
                    _%stderr-redirection195036195042%_)))
          (let ((__tmp196861 (cons _%program195044%_ _%args195045%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196861))
          (let* ((_%proc195051%_
                  (open-process
                   (cons 'path:
                         (cons _%program195044%_
                               (cons 'arguments:
                                     (cons _%args195045%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection195047%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection195049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output195056%_
                  (if (or _%stdout-redirection195047%_
                          _%stderr-redirection195049%_)
                      (read-line _%proc195051%_ '#f)
                      '#f))
                 (_%status195059%_ (process-status _%proc195051%_)))
            (let () (declare (not safe)) (##close-port _%proc195051%_))
            (if (zero? _%status195059%_)
                '#!void
                (begin
                  (display _%output195056%_)
                  (let ((__tmp196862 (cons _%program195044%_ _%args195045%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196862
                     _%status195059%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords195064%_ . _%args195065%_)
        (apply gxc#invoke__%
               _%@@keywords195064%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195064%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195064%_
                  'stderr-redirection:
                  absent-value))
               _%args195065%_)))
    (define gxc#invoke
      (lambda _%args195037195071%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args195037195071%_)))))
