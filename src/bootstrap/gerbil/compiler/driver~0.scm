(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712949849)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp199500 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp199500))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp199501 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp199501))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path199357%_ _%fun199358%_)
        (with-output-to-file
         (cons 'path: (cons _%path199357%_ gxc#scheme-file-settings))
         _%fun199358%_)))
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
      (lambda (_%gerbil-libdir199352%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir199352%_)))
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
      (lambda (_%dir199350%_) (delete-file-or-directory _%dir199350%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath199323%_ _%opts199324%_)
        (if (string? _%srcpath199323%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath199323%_)))
        (let ((_%outdir199326%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts199324%_)))
              (_%invoke-gsc?199327%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts199324%_)))
              (_%gsc-options199328%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts199324%_)))
              (_%keep-scm?199329%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts199324%_)))
              (_%verbosity199330%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts199324%_)))
              (_%optimize199331%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts199324%_)))
              (_%debug199332%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts199324%_)))
              (_%gen-ssxi199333%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts199324%_)))
              (_%parallel?199334%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts199324%_))))
          (if _%outdir199326%_
              (let ((__tmp199502
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir199326%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp199502))
              '#!void)
          (if _%optimize199331%_
              (let ((__tmp199503
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp199503))
              '#!void)
          (let ((__tmp199506
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath199323%_))
                   (gxc#compile-top-module
                    (let ((__tmp199507
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath199323%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp199507)))))
                (__tmp199505 (gxc#compile-timestamp))
                (__tmp199504
                 (cons 'compile-module (cons _%srcpath199323%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp199506
             gxc#current-compile-output-dir
             _%outdir199326%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?199327%_
             gxc#current-compile-gsc-options
             _%gsc-options199328%_
             gxc#current-compile-keep-scm
             _%keep-scm?199329%_
             gxc#current-compile-verbose
             _%verbosity199330%_
             gxc#current-compile-optimize
             _%optimize199331%_
             gxc#current-compile-debug
             _%debug199332%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi199333%_
             gxc#current-compile-timestamp
             __tmp199505
             gxc#current-compile-context
             __tmp199504
             gxc#current-compile-parallel
             _%parallel?199334%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath199343%_)
        (let ((_%opts199345%_ '()))
          (gxc#compile-module__% _%srcpath199343%_ _%opts199345%_))))
    (define gxc#compile-module
      (lambda _g199509_
        (let ((_g199508_ (let () (declare (not safe)) (##length _g199509_))))
          (cond ((let () (declare (not safe)) (##fx= _g199508_ 1))
                 (apply gxc#compile-module__0 _g199509_))
                ((let () (declare (not safe)) (##fx= _g199508_ 2))
                 (apply gxc#compile-module__% _g199509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g199509_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath199298%_ _%opts199299%_)
        (if (string? _%srcpath199298%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath199298%_)))
        (let ((_%outdir199301%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts199299%_)))
              (_%invoke-gsc?199302%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts199299%_)))
              (_%gsc-options199303%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts199299%_)))
              (_%keep-scm?199304%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts199299%_)))
              (_%verbosity199305%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts199299%_)))
              (_%debug199306%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts199299%_)))
              (_%parallel?199307%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts199299%_))))
          (if _%outdir199301%_
              (let ((__tmp199510
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir199301%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp199510))
              '#!void)
          (let ((__tmp199513
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath199298%_))
                   (gxc#compile-executable-module
                    (let ((__tmp199514
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath199298%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp199514))
                    _%opts199299%_)))
                (__tmp199512 (gxc#compile-timestamp))
                (__tmp199511 (cons 'compile-exe (cons _%srcpath199298%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp199513
             gxc#current-compile-output-dir
             _%outdir199301%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?199302%_
             gxc#current-compile-gsc-options
             _%gsc-options199303%_
             gxc#current-compile-keep-scm
             _%keep-scm?199304%_
             gxc#current-compile-verbose
             _%verbosity199305%_
             gxc#current-compile-debug
             _%debug199306%_
             gxc#current-compile-timestamp
             __tmp199512
             gxc#current-compile-context
             __tmp199511
             gxc#current-compile-parallel
             _%parallel?199307%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath199315%_)
        (let ((_%opts199317%_ '()))
          (gxc#compile-exe__% _%srcpath199315%_ _%opts199317%_))))
    (define gxc#compile-exe
      (lambda _g199516_
        (let ((_g199515_ (let () (declare (not safe)) (##length _g199516_))))
          (cond ((let () (declare (not safe)) (##fx= _g199515_ 1))
                 (apply gxc#compile-exe__0 _g199516_))
                ((let () (declare (not safe)) (##fx= _g199515_ 2))
                 (apply gxc#compile-exe__% _g199516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g199516_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx199294%_ _%opts199295%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts199295%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx199294%_
             _%opts199295%_)
            (gxc#compile-executable-module/separate
             _%ctx199294%_
             _%opts199295%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx199084%_ _%opts199085%_)
        (letrec ((_%generate-stub199087%_
                  (lambda (_%builtin-modules199290%_)
                    (let ((_%mod-main199292%_
                           (gxc#find-runtime-symbol _%ctx199084%_ 'main)))
                      (let ((__tmp199517
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules199290%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp199517))
                      (let ((__tmp199518
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main199292%_
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
                        (##write __tmp199518))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts199088%_
                  (lambda (_%gerbil-libdir199288%_)
                    (let ((__tmp199519
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir199288%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp199519 read))))
                 (_%replace-extension199089%_
                  (lambda (_%path199285%_ _%ext199286%_)
                    (string-append
                     (path-strip-extension _%path199285%_)
                     _%ext199286%_)))
                 (_%userlib-module?199090%_
                  (lambda (_%ctx199283%_)
                    (if (_%exclude-module?199092%_ _%ctx199283%_)
                        '#f
                        (not (_%libgerbil-module?199091%_ _%ctx199283%_)))))
                 (_%libgerbil-module?199091%_
                  (lambda (_%ctx199276%_)
                    (let ((_%id-str199278%_
                           (symbol->string
                            (##structure-ref
                             _%ctx199276%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?199092%_ _%id-str199278%_)
                          '#f
                          (let ((_%$e199280%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str199278%_))))
                            (if _%$e199280%_
                                _%$e199280%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str199278%_))))))))
                 (_%exclude-module?199092%_
                  (lambda (_%ctx-or-str199272%_)
                    (let ((_%str199274%_
                           (if (string? _%ctx-or-str199272%_)
                               _%ctx-or-str199272%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str199272%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str199274%_))))
                 (_%not-file-empty?199093%_
                  (lambda (_%path199270%_)
                    (not (gxc#file-empty? _%path199270%_))))
                 (_%fold-libgerbil-runtime-scm199094%_
                  (lambda (_%gerbil-staticdir199263%_ _%libgerbil-scm199264%_)
                    (let ((_%gerbil-runtime-scm199268%_
                           (let ((__tmp199520
                                  (lambda (_%rtm199266%_)
                                    (path-expand
                                     (let ((__tmp199521
                                            (let ((__tmp199522
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm199266%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp199522
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp199521 '".scm"))
                                     _%gerbil-staticdir199263%_))))
                             (declare (not safe))
                             (##map __tmp199520 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates199095%_
                       (append _%gerbil-runtime-scm199268%_
                               _%libgerbil-scm199264%_)))))
                 (_%remove-duplicates199095%_
                  (lambda (_%strlst199223%_)
                    (let _%loop199225%_ ((_%rest199227%_ _%strlst199223%_)
                                         (_%result199228%_ '()))
                      (let* ((_%rest199229199237%_ _%rest199227%_)
                             (_%else199231199245%_
                              (lambda () (reverse! _%result199228%_)))
                             (_%K199233199251%_
                              (lambda (_%rest199248%_ _%path199249%_)
                                (if (member _%path199249%_ _%result199228%_)
                                    (_%loop199225%_
                                     _%rest199248%_
                                     _%result199228%_)
                                    (_%loop199225%_
                                     _%rest199248%_
                                     (cons _%path199249%_
                                           _%result199228%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest199229199237%_))
                            (let ((_%hd199234199254%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest199229199237%_)))
                                  (_%tl199235199256%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest199229199237%_))))
                              (let* ((_%path199259%_ _%hd199234199254%_)
                                     (_%rest199261%_ _%tl199235199256%_))
                                (_%K199233199251%_
                                 _%rest199261%_
                                 _%path199259%_)))
                            (_%else199231199245%_))))))
                 (_%compile-stub199096%_
                  (lambda (_%output-scm199103%_ _%output-bin199104%_)
                    (let* ((_%gerbil-home199106%_
                            (let ((__tmp199523
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp199523)))
                           (_%gerbil-libdir199108%_
                            (path-expand '"lib" _%gerbil-home199106%_))
                           (_%gerbil-staticdir199110%_
                            (path-expand '"static" _%gerbil-libdir199108%_))
                           (_%deps199112%_
                            (gxc#find-runtime-module-deps _%ctx199084%_))
                           (_%libgerbil-deps199114%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?199091%_
                               _%deps199112%_)))
                           (_%libgerbil-scm199116%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps199114%_)))
                           (_%libgerbil-scm199118%_
                            (_%fold-libgerbil-runtime-scm199094%_
                             _%gerbil-staticdir199110%_
                             _%libgerbil-scm199116%_))
                           (_%libgerbil-c199124%_
                            (map (lambda (_%g199119199121%_)
                                   (_%replace-extension199089%_
                                    _%g199119199121%_
                                    '".c"))
                                 _%libgerbil-scm199118%_))
                           (_%libgerbil-o199130%_
                            (map (lambda (_%g199125199127%_)
                                   (_%replace-extension199089%_
                                    _%g199125199127%_
                                    '".o"))
                                 _%libgerbil-scm199118%_))
                           (_%src-deps199132%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?199090%_
                               _%deps199112%_)))
                           (_%src-deps-scm199134%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps199132%_)))
                           (_%src-deps-scm199136%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?199093%_
                               _%src-deps-scm199134%_)))
                           (_%src-deps-scm199138%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm199136%_)))
                           (_%src-deps-c199144%_
                            (let ((__tmp199524
                                   (lambda (_%g199139199141%_)
                                     (_%replace-extension199089%_
                                      _%g199139199141%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp199524 _%src-deps-scm199138%_)))
                           (_%src-deps-o199150%_
                            (let ((__tmp199525
                                   (lambda (_%g199145199147%_)
                                     (_%replace-extension199089%_
                                      _%g199145199147%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp199525 _%src-deps-scm199138%_)))
                           (_%src-bin-scm199152%_
                            (gxc#find-static-module-file _%ctx199084%_))
                           (_%src-bin-scm199154%_
                            (path-expand _%src-bin-scm199152%_))
                           (_%src-bin-c199156%_
                            (_%replace-extension199089%_
                             _%src-bin-scm199154%_
                             '".c"))
                           (_%src-bin-o199158%_
                            (_%replace-extension199089%_
                             _%src-bin-scm199154%_
                             '".o"))
                           (_%output-bin199160%_
                            (path-expand _%output-bin199104%_))
                           (_%output-scm199162%_
                            (path-expand _%output-scm199103%_))
                           (_%output-c199164%_
                            (_%replace-extension199089%_
                             _%output-scm199162%_
                             '".c"))
                           (_%output-o199166%_
                            (_%replace-extension199089%_
                             _%output-scm199162%_
                             '".o"))
                           (_%output_-c199168%_
                            (_%replace-extension199089%_
                             _%output-scm199162%_
                             '"_.c"))
                           (_%output_-o199170%_
                            (_%replace-extension199089%_
                             _%output-scm199162%_
                             '"_.o"))
                           (_%gsc-link-opts199172%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts199174%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts199176%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir199110%_))
                           (_%output-ld-opts199178%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts199180%_
                            (_%get-libgerbil-ld-opts199088%_
                             _%gerbil-libdir199108%_))
                           (_%rpath199182%_
                            (gxc#gerbil-rpath _%gerbil-libdir199108%_))
                           (_%builtin-modules199186%_
                            (_%remove-duplicates199095%_
                             (let ((__tmp199526
                                    (let ((__tmp199528
                                           (lambda (_%mod199184%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod199184%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp199527
                                           (cons _%ctx199084%_
                                                 _%deps199112%_)))
                                      (declare (not safe))
                                      (##map __tmp199528 __tmp199527))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp199526)))))
                      (letrec ((_%compile-obj199189%_
                                (lambda (_%scm-path199196%_ _%c-path199197%_)
                                  (let* ((_%o-path199199%_
                                          (_%replace-extension199089%_
                                           _%c-path199197%_
                                           '".o"))
                                         (_%lock199201%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path199199%_
                                             '".lock")))
                                         (_%locked199203%_ '#f)
                                         (_%unlock199206%_
                                          (lambda ()
                                            (close-port _%locked199203%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock199201%_)))))
                                    (let _%retry199209%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock199201%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry199209%_))
                                          (begin
                                            (set! _%locked199203%_
                                                  (let ((__tmp199529
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock199201%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp199529)))
                                            (if _%locked199203%_
                                                '#!void
                                                (_%retry199209%_)))))
                                    (let ((__tmp199531
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path199199%_)))
                                                     (not _%scm-path199196%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path199196%_
                                                        _%o-path199199%_)))
                                                 (let ((_%gsc-cc-opts199220%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp199532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp199533 (cons _%c-path199197%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp199533
                            _%gsc-static-opts199176%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp199532 _%gsc-cc-opts199220%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp199530
                                           (lambda () (_%unlock199206%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp199531
                                       __tmp199530))))))
                        (let ((__tmp199534
                               (lambda ()
                                 (let ((__tmp199535
                                        (path-directory _%output-bin199160%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp199535)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp199534))
                        (gxc#with-output-to-scheme-file
                         _%output-scm199162%_
                         (lambda ()
                           (_%generate-stub199087%_
                            _%builtin-modules199186%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it199194%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp199536
                                                   (let ((__tmp199537
                                                          (let ((__tmp199538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm199154%_
                               (cons _%output-scm199162%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp199538 _%src-deps-scm199138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp199537
                                                      _%libgerbil-c199124%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp199536
                                               _%gsc-link-opts199172%_))))
                                     (for-each
                                      _%compile-obj199189%_
                                      (let ((__tmp199539
                                             (cons _%src-bin-scm199154%_
                                                   (cons _%output-scm199162%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp199539
                                         _%src-deps-scm199138%_))
                                      (let ((__tmp199540
                                             (cons _%src-bin-c199156%_
                                                   (cons _%output-c199164%_
                                                         (cons _%output_-c199168%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp199540
                                         _%src-deps-c199144%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin199160%_
                                                        (let ((__tmp199541
                                                               (cons _%src-bin-o199158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o199166%_
                                   (cons _%output_-o199170%_
                                         (let ((__tmp199542
                                                (let ((__tmp199543
                                                       (let ((__tmp199545
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir199108%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts199180%_))))
                     (__tmp199544
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath199182%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp199545 __tmp199544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp199543
                                                   _%output-ld-opts199178%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp199542
                                            _%libgerbil-o199130%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp199541 _%src-deps-o199150%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp199546
                                            (cons _%output-c199164%_
                                                  (cons _%output_-c199168%_
                                                        (cons _%output-o199166%_
                                                              (cons _%output_-o199170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp199546)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it199194%_))
                                  (_%compile-it199194%_)))
                            '#!void))))))
          (let* ((_%output-bin199098%_
                  (gxc#compile-exe-output-file _%ctx199084%_ _%opts199085%_))
                 (_%output-scm199100%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin199098%_ '"__exe.scm"))))
            (_%compile-stub199096%_
             _%output-scm199100%_
             _%output-bin199098%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx198906%_ _%opts198907%_)
        (letrec ((_%reset-declare198909%_
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
                 (_%generate-stub198910%_
                  (lambda (_%deps199075%_)
                    (let ((_%mod-main199077%_
                           (gxc#find-runtime-symbol _%ctx198906%_ 'main))
                          (_%reset-decl199078%_ (_%reset-declare198909%_))
                          (_%user-decl199079%_ (_%user-declare198911%_)))
                      (for-each
                       (lambda (_%dep199081%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl199078%_))
                         (newline)
                         (if _%user-decl199079%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl199079%_))
                               (newline))
                             '#!void)
                         (let ((__tmp199547
                                (cons 'include (cons _%dep199081%_ '()))))
                           (declare (not safe))
                           (##write __tmp199547))
                         (newline))
                       _%deps199075%_)
                      (let ((__tmp199548
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main199077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp199548))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare198911%_
                  (lambda ()
                    (let* ((_%gsc-opts198980%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts198907%_)))
                           (_%gsc-prelude198982%_
                            (if _%gsc-opts198980%_
                                (member '"-prelude" _%gsc-opts198980%_)
                                '#f))
                           (_%gsc-prelude198984%_
                            (if _%gsc-prelude198982%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude198982%_)))
                                '#f)))
                      (let _%lp198987%_ ((_%rest198989%_
                                          (cons _%gsc-prelude198984%_ '()))
                                         (_%user-decls198990%_ '()))
                        (let* ((_%rest198991198999%_ _%rest198989%_)
                               (_%else198993199007%_
                                (lambda ()
                                  (if (null? _%user-decls198990%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls198990%_)))))
                               (_%K198995199063%_
                                (lambda (_%rest199010%_ _%expr199011%_)
                                  (let* ((_%expr199012199024%_ _%expr199011%_)
                                         (_%else199015199032%_
                                          (lambda ()
                                            (_%lp198987%_
                                             _%rest199010%_
                                             _%user-decls198990%_))))
                                    (let ((_%K199020199053%_
                                           (lambda (_%decls199051%_)
                                             (_%lp198987%_
                                              _%rest199010%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls198990%_
                                                 _%decls199051%_)))))
                                          (_%K199017199038%_
                                           (lambda (_%exprs199036%_)
                                             (_%lp198987%_
                                              (append _%exprs199036%_
                                                      _%rest199010%_)
                                              _%user-decls198990%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr199012199024%_))
                                          (let ((_%tl199022199058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr199012199024%_)))
                                                (_%hd199021199056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr199012199024%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd199021199056%_
                                                         'declare))
                                                (let ((_%decls199061%_
                                                       _%tl199022199058%_))
                                                  (_%K199020199053%_
                                                   _%decls199061%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd199021199056%_
                                                             'begin))
                                                    (let ((_%exprs199046%_
                                                           _%tl199022199058%_))
                                                      (_%K199017199038%_
                                                       _%exprs199046%_))
                                                    (_%else199015199032%_))))
                                          (_%else199015199032%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest198991198999%_))
                              (let ((_%hd198996199066%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest198991198999%_)))
                                    (_%tl198997199068%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest198991198999%_))))
                                (let* ((_%expr199071%_ _%hd198996199066%_)
                                       (_%rest199073%_ _%tl198997199068%_))
                                  (_%K198995199063%_
                                   _%rest199073%_
                                   _%expr199071%_)))
                              (_%else198993199007%_)))))))
                 (_%compile-stub198912%_
                  (lambda (_%output-scm198919%_ _%output-bin198920%_)
                    (let* ((_%gerbil-home198922%_
                            (let ((__tmp199549
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp199549)))
                           (_%gerbil-libdir198924%_
                            (path-expand '"lib" _%gerbil-home198922%_))
                           (_%runtime198926%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp198928%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home198922%_))
                           (_%include-gambit-sharp198930%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp198928%_
                               '"\")")))
                           (_%bin-scm198932%_
                            (gxc#find-static-module-file _%ctx198906%_))
                           (_%deps198934%_
                            (gxc#find-runtime-module-deps _%ctx198906%_))
                           (_%deps198936%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps198934%_)))
                           (_%deps198941%_
                            (let ((__tmp199550
                                   (lambda (_%$obj198938%_)
                                     (not (gxc#file-empty? _%$obj198938%_)))))
                              (declare (not safe))
                              (##filter __tmp199550 _%deps198936%_)))
                           (_%deps198945%_
                            (let ((__tmp199551
                                   (lambda (_%f198943%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f198943%_
                                             _%runtime198926%_))))))
                              (declare (not safe))
                              (##filter __tmp199551 _%deps198941%_)))
                           (_%output-base198947%_
                            (let ((__tmp199552
                                   (path-strip-extension
                                    _%output-scm198919%_)))
                              (declare (not safe))
                              (##string-append __tmp199552)))
                           (_%output-c198949%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base198947%_ '".c")))
                           (_%output-o198951%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base198947%_ '".o")))
                           (_%output-c_198953%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base198947%_ '"_.c")))
                           (_%output-o_198955%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base198947%_ '"_.o")))
                           (_%gsc-link-opts198957%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts198959%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts198961%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir198924%_)))
                           (_%output-ld-opts198963%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros198965%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp198930%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp198930%_
                                            '()))))
                           (_%gsc-link-opts198967%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts198957%_
                               _%gsc-gx-macros198965%_)))
                           (_%rpath198969%_
                            (gxc#gerbil-rpath _%gerbil-libdir198924%_))
                           (_%default-ld-options198971%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp199553
                             (lambda ()
                               (let ((__tmp199554
                                      (path-directory _%output-bin198920%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp199554)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp199553))
                      (gxc#with-output-to-scheme-file
                       _%output-scm198919%_
                       (lambda ()
                         (_%generate-stub198910%_
                          (let ((__tmp199555
                                 (let ((__tmp199556
                                        (cons _%bin-scm198932%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp199556
                                    _%deps198945%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp199555 _%runtime198926%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it198977%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_198953%_
                                                      (let ((__tmp199557
                                                             (cons _%output-scm198919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp199557 _%gsc-link-opts198967%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp199558
                                                 (let ((__tmp199559
                                                        (cons _%output-c198949%_
                                                              (cons _%output-c_198953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp199559
                                                    _%gsc-static-opts198961%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp199558
                                             _%gsc-cc-opts198959%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin198920%_
                                                      (cons _%output-o198951%_
                                                            (cons _%output-o_198955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp199560
                                 (let ((__tmp199562
                                        (cons '"-L"
                                              (cons _%gerbil-libdir198924%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options198971%_))))
                                       (__tmp199561
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath198969%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp199562 __tmp199561))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp199560
                             _%output-ld-opts198963%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it198977%_))
                                (_%compile-it198977%_)))
                          '#!void)))))
          (let* ((_%output-bin198914%_
                  (gxc#compile-exe-output-file _%ctx198906%_ _%opts198907%_))
                 (_%output-scm198916%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin198914%_ '"__exe.scm"))))
            (_%compile-stub198912%_
             _%output-scm198916%_
             _%output-bin198914%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx198855%_ _%id198856%_)
        (let ((_%$e198902%_
               (let ((__tmp199564
                      (lambda (_%e198857198859%_)
                        (let* ((_%g198861198871%_ _%e198857198859%_)
                               (_%else198863198879%_ (lambda () '#f))
                               (_%K198865198883%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g198861198871%_
                                 'gx#module-export::t))
                              (let* ((_%e198866198886%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g198861198871%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e198867198889%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g198861198871%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e198868198892%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g198861198871%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e198868198892%_ '0))
                                    (let ((_%e198869198895%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g198861198871%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g198897198899%_)
                                             (eq? _%g198897198899%_
                                                  _%id198856%_))
                                           _%e198869198895%_)
                                          (_%K198865198883%_)
                                          (_%else198863198879%_)))
                                    (_%else198863198879%_)))
                              (_%else198863198879%_)))))
                     (__tmp199563
                      (##structure-ref
                       _%ctx198855%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp199564 __tmp199563))))
          (if _%$e198902%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e198902%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx198846%_ _%id198847%_)
        (let ((_%$e198849%_
               (gxc#find-export-binding _%ctx198846%_ _%id198847%_)))
          (if _%$e198849%_
              ((lambda (_%bind198852%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind198852%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id198847%_)))
                 (##structure-ref _%bind198852%_ '1 gx#binding::t '#f))
               _%$e198849%_)
              (let ((__tmp199565
                     (##structure-ref
                      _%ctx198846%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp199565
                 _%id198847%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx198712%_)
        (letrec* ((_%ht198714%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template198715%_
                   (lambda (_%in198791%_ _%phi198792%_)
                     (let ((_%iphi198794%_
                            (fx+ _%phi198792%_
                                 (##direct-structure-ref
                                  _%in198791%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports198795%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in198791%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp198797%_ ((_%rest198799%_ _%imports198795%_)
                                          (_%r198800%_ '()))
                         (let* ((_%rest198801198809%_ _%rest198799%_)
                                (_%else198803198817%_ (lambda () _%r198800%_))
                                (_%K198805198834%_
                                 (lambda (_%rest198820%_ _%in198821%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in198821%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi198794%_))
                                           (_%lp198797%_
                                            _%rest198820%_
                                            (cons _%in198821%_ _%r198800%_))
                                           (_%lp198797%_
                                            _%rest198820%_
                                            _%r198800%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in198821%_
                                              'gx#module-import::t))
                                           (let ((_%iphi198825%_
                                                  (fx+ _%phi198792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in198821%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi198825%_))
                                                 (_%lp198797%_
                                                  _%rest198820%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in198821%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r198800%_))
                                                 (_%lp198797%_
                                                  _%rest198820%_
                                                  _%r198800%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in198821%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi198828%_
                                                      (fx+ _%iphi198794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in198821%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi198828%_))
                                                     (_%lp198797%_
                                                      _%rest198820%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in198821%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r198800%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi198828%_))
                                                         (_%lp198797%_
                                                          _%rest198820%_
                                                          (let ((__tmp199566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template198715%_
                          _%in198821%_
                          _%iphi198794%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r198800%_ __tmp199566)))
                 (_%lp198797%_ _%rest198820%_ _%r198800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp198797%_
                                                _%rest198820%_
                                                _%r198800%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest198801198809%_))
                               (let ((_%hd198806198837%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest198801198809%_)))
                                     (_%tl198807198839%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest198801198809%_))))
                                 (let* ((_%in198842%_ _%hd198806198837%_)
                                        (_%rest198844%_ _%tl198807198839%_))
                                   (_%K198805198834%_
                                    _%rest198844%_
                                    _%in198842%_)))
                               (_%else198803198817%_)))))))
                  (_%find-deps198716%_
                   (lambda (_%rest198724%_ _%deps198725%_)
                     (let* ((_%rest198726198734%_ _%rest198724%_)
                            (_%else198728198742%_ (lambda () _%deps198725%_))
                            (_%K198730198779%_
                             (lambda (_%rest198745%_ _%hd198746%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd198746%_
                                      'gx#module-context::t))
                                   (let ((_%id198749%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd198746%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports198750%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd198746%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht198714%_
                                            _%id198749%_))
                                         (_%find-deps198716%_
                                          _%rest198745%_
                                          _%deps198725%_)
                                         (let ((_%$e198753%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd198746%_))))
                                           (if _%$e198753%_
                                               ((lambda (_%pre198756%_)
                                                  (let ((_%xdeps198758%_
                                                         (_%find-deps198716%_
                                                          (cons _%pre198756%_
                                                                _%imports198750%_)
                                                          _%deps198725%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht198714%_
                                                       _%id198749%_
                                                       _%hd198746%_))
                                                    (_%find-deps198716%_
                                                     _%rest198745%_
                                                     (cons _%hd198746%_
                                                           _%xdeps198758%_))))
                                                _%$e198753%_)
                                               (let ((_%xdeps198761%_
                                                      (_%find-deps198716%_
                                                       _%imports198750%_
                                                       _%deps198725%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht198714%_
                                                    _%id198749%_
                                                    _%hd198746%_))
                                                 (_%find-deps198716%_
                                                  _%rest198745%_
                                                  (cons _%hd198746%_
                                                        _%xdeps198761%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd198746%_
                                          'gx#prelude-context::t))
                                       (let ((_%id198764%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd198746%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht198714%_
                                                _%id198764%_))
                                             (_%find-deps198716%_
                                              _%rest198745%_
                                              _%deps198725%_)
                                             (let ((_%xdeps198768%_
                                                    (_%find-deps198716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd198746%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps198725%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht198714%_
                                                      _%id198764%_))
                                                   (_%find-deps198716%_
                                                    _%rest198745%_
                                                    _%xdeps198768%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht198714%_
                                                        _%id198764%_
                                                        _%hd198746%_))
                                                     (_%find-deps198716%_
                                                      _%rest198745%_
                                                      (cons _%hd198746%_
                                                            _%xdeps198768%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd198746%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd198746%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps198716%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd198746%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest198745%_)
                                                _%deps198725%_)
                                               (_%find-deps198716%_
                                                _%rest198745%_
                                                _%deps198725%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd198746%_
                                                  'gx#module-export::t))
                                               (_%find-deps198716%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd198746%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest198745%_)
                                                _%deps198725%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd198746%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd198746%_ '2 '#f '#f)))
               (_%find-deps198716%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd198746%_ '1 '#f '#f))
                      _%rest198745%_)
                _%deps198725%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd198746%_ '2 '#f '#f)))
                   (let ((_%xdeps198775%_
                          (_%import-set-template198715%_ _%hd198746%_ '0)))
                     (_%find-deps198716%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest198745%_ _%xdeps198775%_))
                      _%deps198725%_))
                   (_%find-deps198716%_ _%rest198745%_ _%deps198725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd198746%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest198726198734%_))
                           (let ((_%hd198731198782%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest198726198734%_)))
                                 (_%tl198732198784%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest198726198734%_))))
                             (let* ((_%hd198787%_ _%hd198731198782%_)
                                    (_%rest198789%_ _%tl198732198784%_))
                               (_%K198730198779%_
                                _%rest198789%_
                                _%hd198787%_)))
                           (_%else198728198742%_))))))
          (let ((__tmp199567
                 (filter gx#expander-context-id
                         (_%find-deps198716%_
                          (let ((_%$e198718%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx198712%_))))
                            (if _%$e198718%_
                                ((lambda (_%pre198721%_)
                                   (cons _%pre198721%_
                                         (##structure-ref
                                          _%ctx198712%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e198718%_)
                                (##structure-ref
                                 _%ctx198712%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp199567)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx198642%_)
        (let* ((_%context-id198644%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx198642%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx198642%_ '1 '#f '#f))
                    (string->symbol _%ctx198642%_)))
               (_%scm198646%_
                (let ((__tmp199568
                       (gxc#static-module-name _%context-id198644%_)))
                  (declare (not safe))
                  (##string-append __tmp199568 '".scm")))
               (_%dirs198648%_ (let () (declare (not safe)) (load-path)))
               (_%dirs198654%_
                (let ((_%user-libpath198650%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath198650%_
                      (let ((_%user-libpath198652%_
                             (path-expand '"lib" _%user-libpath198650%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath198652%_ _%dirs198648%_))
                            _%dirs198648%_
                            (cons _%user-libpath198652%_ _%dirs198648%_)))
                      _%dirs198648%_)))
               (_%dirs198664%_
                (let ((_%$e198656%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e198656%_
                      ((lambda (_%g198658198660%_)
                         (cons _%g198658198660%_ _%dirs198654%_))
                       _%$e198656%_)
                      _%dirs198654%_)))
               (_%dirs198670%_
                (let ((__tmp199569
                       (lambda (_%g198665198667%_)
                         (path-expand '"static" _%g198665198667%_))))
                  (declare (not safe))
                  (##map __tmp199569 _%dirs198664%_))))
          (let _%lp198673%_ ((_%rest198675%_ _%dirs198670%_))
            (let* ((_%rest198676198684%_ _%rest198675%_)
                   (_%else198678198692%_
                    (lambda ()
                      (let ((__tmp199570
                             (##structure-ref
                              _%ctx198642%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp199570
                         _%scm198646%_))))
                   (_%K198680198700%_
                    (lambda (_%rest198695%_ _%dir198696%_)
                      (let ((_%path198698%_
                             (path-expand _%scm198646%_ _%dir198696%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path198698%_))
                            _%path198698%_
                            (_%lp198673%_ _%rest198695%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest198676198684%_))
                  (let ((_%hd198681198703%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198676198684%_)))
                        (_%tl198682198705%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198676198684%_))))
                    (let* ((_%dir198708%_ _%hd198681198703%_)
                           (_%rest198710%_ _%tl198682198705%_))
                      (_%K198680198700%_ _%rest198710%_ _%dir198708%_)))
                  (_%else198678198692%_)))))))
    (define gxc#file-empty?
      (lambda (_%path198640%_)
        (zero? (let ((__tmp199571 (file-info _%path198640%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp199571)))))
    (define gxc#compile-top-module
      (lambda (_%ctx198636%_)
        (let ((__tmp199575
               (lambda ()
                 (let ((__tmp199576
                        (##structure-ref
                         _%ctx198636%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp199576))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp199577
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx198636%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp199577))
                     '#!void)
                 (gxc#collect-bindings _%ctx198636%_)
                 (gxc#compile-runtime-code _%ctx198636%_)
                 (gxc#compile-meta-code _%ctx198636%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx198636%_)
                     '#!void)))
              (__tmp199574
               (let ((__obj199498
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj199498))
                 __obj199498))
              (__tmp199573 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp199572
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
           __tmp199575
           gx#current-expander-context
           _%ctx198636%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp199574
           gxc#current-compile-runtime-sections
           __tmp199573
           gxc#current-compile-runtime-names
           __tmp199572))))
    (define gxc#collect-bindings
      (lambda (_%ctx198634%_)
        (let ((__tmp199578
               (##structure-ref _%ctx198634%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp199578))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx198582%_)
        (letrec ((_%compile1198584%_
                  (lambda (_%ctx198623%_)
                    (let* ((_%code198625%_
                            (##structure-ref
                             _%ctx198623%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm198629%_
                            (let ((_%idstr198627%_
                                   (let ((__tmp199579
                                          (##structure-ref
                                           _%ctx198623%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp199579))))
                              (declare (not safe))
                              (##string-append _%idstr198627%_ '"~0")))
                           (_%rtc?198631%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code198625%_))))
                      (if _%rtc?198631%_
                          (let ((__tmp199580
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp199580
                             _%ctx198623%_
                             _%rtm198629%_))
                          '#!void)
                      (_%generate-runtime-code198586%_
                       _%ctx198623%_
                       _%code198625%_
                       (if _%rtc?198631%_ _%rtm198629%_ '#f)))))
                 (_%context-timestamp198585%_
                  (lambda (_%ctx198621%_)
                    (let ((__tmp199581
                           (let ((__tmp199582
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx198621%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp199582 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp199581))))
                 (_%generate-runtime-code198586%_
                  (lambda (_%ctx198593%_ _%code198594%_ _%rtm198595%_)
                    (let* ((_%runtime-code?198597%_ (if _%rtm198595%_ '#t '#f))
                           (_%lifts198599%_ (box '()))
                           (_%runtime-code198602%_
                            (if _%runtime-code?198597%_
                                (let ((__tmp199585
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code198594%_))))
                                      (__tmp199584
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp199583
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp199585
                                   gx#current-expander-context
                                   _%ctx198593%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts198599%_
                                   gxc#current-compile-marks
                                   __tmp199584
                                   gxc#current-compile-identifiers
                                   __tmp199583))
                                '#f))
                           (_%runtime-code198604%_
                            (if _%runtime-code?198597%_
                                (if (null? (unbox _%lifts198599%_))
                                    _%runtime-code198602%_
                                    (cons 'begin
                                          (let ((__tmp199587
                                                 (cons _%runtime-code198602%_
                                                       '()))
                                                (__tmp199586
                                                 (reverse (unbox _%lifts198599%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp199587
                                             __tmp199586))))
                                '#f))
                           (_%runtime-code198606%_
                            (if _%runtime-code?198597%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp198585%_
                                                         _%ctx198593%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code198604%_ '())))
                                '#f))
                           (_%loader-code198609%_
                            (let ((__tmp199588
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code198594%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp199588
                               gx#current-expander-context
                               _%ctx198593%_)))
                           (_%loader-code198611%_
                            (cons 'begin
                                  (cons _%loader-code198609%_
                                        (cons (if _%runtime-code?198597%_
                                                  (cons 'load-module
                                                        (cons _%rtm198595%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0198613%_
                            (gxc#compile-output-file _%ctx198593%_ '0 '".scm"))
                           (_%scmrt198615%_
                            (gxc#compile-output-file
                             _%ctx198593%_
                             '#f
                             '".scm"))
                           (_%scms198617%_
                            (gxc#compile-static-output-file _%ctx198593%_)))
                      (if _%runtime-code?198597%_
                          (gxc#compile-scm-file__0
                           _%scm0198613%_
                           _%runtime-code198606%_)
                          '#!void)
                      (let ((__tmp199589
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt198615%_
                                _%loader-code198611%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp199589
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms198617%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms198617%_))
                          '#!void)
                      (if _%runtime-code?198597%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0198613%_ _%scms198617%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms198617%_ void)))))))
          (let* ((_%all-modules198588%_
                  (cons _%ctx198582%_ (gxc#lift-nested-modules _%ctx198582%_)))
                 (__tmp199590
                  (lambda (_%ctx198590%_)
                    (let ((__tmp199591
                           (lambda () (_%compile1198584%_ _%ctx198590%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp199591
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp199590 _%all-modules198588%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx198482%_)
        (letrec ((_%compile-ssi198484%_
                  (lambda (_%code198550%_)
                    (let* ((_%path198552%_
                            (gxc#compile-output-file
                             _%ctx198482%_
                             '#f
                             '".ssi"))
                           (_%prelude198564%_
                            (let* ((_%super198554%_
                                    (##structure-ref
                                     _%ctx198482%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e198556%_
                                    (##structure-ref
                                     _%super198554%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e198556%_
                                  ((lambda (_%g198558198560%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g198558198560%_)))
                                   _%$e198556%_)
                                  ':<root>)))
                           (_%ns198566%_
                            (##structure-ref
                             _%ctx198482%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr198568%_
                            (symbol->string
                             (##structure-ref
                              _%ctx198482%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg198576%_
                            (let ((_%$e198570%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr198568%_ '#\/))))
                              (if _%$e198570%_
                                  ((lambda (_%x198573%_)
                                     (let ((__tmp199592
                                            (substring
                                             _%idstr198568%_
                                             '0
                                             _%x198573%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp199592)))
                                   _%$e198570%_)
                                  '#f)))
                           (_%rt198578%_
                            (let ((__tmp199593
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp199593 _%ctx198482%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path198552%_))
                      (gxc#with-output-to-scheme-file
                       _%path198552%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude198564%_))
                         (if _%pkg198576%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg198576%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns198566%_))
                         (newline)
                         (pretty-print _%code198550%_)
                         (if _%rt198578%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt198578%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi198485%_
                  (lambda (_%part198490%_)
                    (let* ((_%part198491198504%_ _%part198490%_)
                           (_%E198493198508%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part198491198504%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K198494198519%_
                            (lambda (_%code198511%_
                                     _%n198512%_
                                     _%phi198513%_
                                     _%phi-ctx198514%_)
                              (let ((_%code198517%_
                                     (let ((__tmp199594
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code198511%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp199594
                                        gx#current-expander-context
                                        _%phi-ctx198514%_
                                        gx#current-expander-phi
                                        _%phi198513%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx198482%_
                                  _%n198512%_
                                  '".scm")
                                 _%code198517%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part198491198504%_))
                          (let ((_%hd198495198522%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part198491198504%_)))
                                (_%tl198496198524%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part198491198504%_))))
                            (let ((_%phi-ctx198527%_ _%hd198495198522%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl198496198524%_))
                                  (let ((_%hd198497198529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198496198524%_)))
                                        (_%tl198498198531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198496198524%_))))
                                    (let ((_%phi198534%_ _%hd198497198529%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl198498198531%_))
                                          (let ((_%hd198499198536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl198498198531%_)))
                                                (_%tl198500198538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl198498198531%_))))
                                            (let ((_%n198541%_
                                                   _%hd198499198536%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl198500198538%_))
                                                  (let ((_%hd198501198543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl198500198538%_)))
                                                        (_%tl198502198545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl198500198538%_))))
                                                    (let ((_%code198548%_
                                                           _%hd198501198543%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl198502198545%_))
                                                          (_%K198494198519%_
                                                           _%code198548%_
                                                           _%n198541%_
                                                           _%phi198534%_
                                                           _%phi-ctx198527%_)
                                                          (_%E198493198508%_))))
                                                  (_%E198493198508%_))))
                                          (_%E198493198508%_))))
                                  (_%E198493198508%_))))
                          (_%E198493198508%_))))))
          (let ((_g199595_ (gxc#generate-meta-code _%ctx198482%_)))
            (begin
              (let ((_g199596_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g199595_)
                           (##vector-length _g199595_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g199596_ 2)))
                    (error "Context expects 2 values" _g199596_)))
              (let ((_%ssi-code198487%_
                     (let () (declare (not safe)) (##vector-ref _g199595_ 0)))
                    (_%phi-code198488%_
                     (let () (declare (not safe)) (##vector-ref _g199595_ 1))))
                (begin
                  (_%compile-ssi198484%_ _%ssi-code198487%_)
                  (for-each _%compile-phi198485%_ _%phi-code198488%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx198464%_)
        (let* ((_%path198466%_
                (gxc#compile-output-file _%ctx198464%_ '#f '".ssxi.ss"))
               (_%code198468%_
                (let ((__tmp199597
                       (##structure-ref
                        _%ctx198464%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp199597)))
               (_%idstr198470%_
                (symbol->string
                 (##structure-ref
                  _%ctx198464%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg198478%_
                (let ((_%$e198472%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr198470%_ '#\/))))
                  (if _%$e198472%_
                      ((lambda (_%x198475%_)
                         (let ((__tmp199598
                                (substring _%idstr198470%_ '0 _%x198475%_)))
                           (declare (not safe))
                           (##string->symbol __tmp199598)))
                       _%$e198472%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path198466%_))
          (gxc#with-output-to-scheme-file
           _%path198466%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg198478%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg198478%_))
                 '#!void)
             (newline)
             (pretty-print _%code198468%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx198457%_)
        (let* ((_%state198459%_
                (let ((__obj199499
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj199499 _%ctx198457%_))
                  __obj199499))
               (_%ssi-code198461%_
                (let ((__tmp199599
                       (##structure-ref
                        _%ctx198457%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state198459%_
                   __tmp199599))))
          (values _%ssi-code198461%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state198459%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx198450%_)
        (let ((_%lifts198452%_ (box '())))
          (let ((__tmp199602
                 (lambda ()
                   (let ((_%code198455%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx198450%_))))
                     (if (null? (unbox _%lifts198452%_))
                         _%code198455%_
                         (cons 'begin
                               (let ((__tmp199604 (cons _%code198455%_ '()))
                                     (__tmp199603
                                      (reverse (unbox _%lifts198452%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp199604 __tmp199603)))))))
                (__tmp199601
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp199600
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp199602
             gxc#current-compile-lift
             _%lifts198452%_
             gxc#current-compile-marks
             __tmp199601
             gxc#current-compile-identifiers
             __tmp199600)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx198446%_)
        (let ((_%modules198448%_ (box '())))
          (let ((__tmp199605
                 (##structure-ref _%ctx198446%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules198448%_ __tmp199605))
          (reverse (unbox _%modules198448%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path198426%_ _%code198427%_ _%phi?198428%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path198426%_))
        (gxc#with-output-to-scheme-file
         _%path198426%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp199606
                                           (if _%phi?198428%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp199606)))))))
           (pretty-print _%code198427%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it198432%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path198426%_ _%phi?198428%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp199607
                         (cons 'compile-file (cons _%path198426%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it198432%_ __tmp199607))
                  (_%compile-it198432%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path198437%_ _%code198438%_)
        (let ((_%phi?198440%_ '#f))
          (gxc#compile-scm-file__%
           _%path198437%_
           _%code198438%_
           _%phi?198440%_))))
    (define gxc#compile-scm-file
      (lambda _g199609_
        (let ((_g199608_ (let () (declare (not safe)) (##length _g199609_))))
          (cond ((let () (declare (not safe)) (##fx= _g199608_ 2))
                 (apply gxc#compile-scm-file__0 _g199609_))
                ((let () (declare (not safe)) (##fx= _g199608_ 3))
                 (apply gxc#compile-scm-file__% _g199609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g199609_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?198327%_)
        (let _%lp198329%_ ((_%rest198331%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts198332%_ '()))
          (let* ((_%rest198333198353%_ _%rest198331%_)
                 (_%else198337198361%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts198332%_)))
                        (reverse _%opts198332%_)))))
            (let ((_%K198347198404%_
                   (lambda (_%rest198402%_)
                     (_%lp198329%_ _%rest198402%_ _%opts198332%_)))
                  (_%K198342198386%_
                   (lambda (_%rest198384%_)
                     (_%lp198329%_ _%rest198384%_ _%opts198332%_)))
                  (_%K198339198368%_
                   (lambda (_%rest198365%_ _%opt198366%_)
                     (_%lp198329%_
                      _%rest198365%_
                      (cons _%opt198366%_ _%opts198332%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest198333198353%_))
                  (let ((_%tl198349198409%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198333198353%_)))
                        (_%hd198348198407%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198333198353%_))))
                    (if (equal? _%hd198348198407%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl198349198409%_))
                            (let* ((_%tl198351198412%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl198349198409%_)))
                                   (_%rest198415%_ _%tl198351198412%_))
                              (_%K198347198404%_ _%rest198415%_))
                            (let ((_%opt198376%_ _%hd198348198407%_)
                                  (_%rest198378%_ _%tl198349198409%_))
                              (_%K198339198368%_
                               _%rest198378%_
                               _%opt198376%_)))
                        (if (equal? _%hd198348198407%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl198349198409%_))
                                (let* ((_%tl198346198394%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl198349198409%_)))
                                       (_%rest198397%_ _%tl198346198394%_))
                                  (_%K198342198386%_ _%rest198397%_))
                                (let ((_%opt198376%_ _%hd198348198407%_)
                                      (_%rest198378%_ _%tl198349198409%_))
                                  (_%K198339198368%_
                                   _%rest198378%_
                                   _%opt198376%_)))
                            (let ((_%opt198376%_ _%hd198348198407%_)
                                  (_%rest198378%_ _%tl198349198409%_))
                              (_%K198339198368%_
                               _%rest198378%_
                               _%opt198376%_)))))
                  (_%else198337198361%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?198421%_ '#f)) (gxc#gsc-link-options__% _%phi?198421%_))))
    (define gxc#gsc-link-options
      (lambda _g199611_
        (let ((_g199610_ (let () (declare (not safe)) (##length _g199611_))))
          (cond ((let () (declare (not safe)) (##fx= _g199610_ 0))
                 (apply gxc#gsc-link-options__0 _g199611_))
                ((let () (declare (not safe)) (##fx= _g199610_ 1))
                 (apply gxc#gsc-link-options__% _g199611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g199611_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords198176%_ _%static?198172198177%_ _%phi?198179%_)
        (let ((_%static?198181%_
               (if (eq? _%static?198172198177%_ absent-value)
                   '#f
                   _%static?198172198177%_)))
          (if _%phi?198179%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp198183%_ ((_%rest198185%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts198186%_ '()))
                (let* ((_%rest198187198213%_ _%rest198185%_)
                       (_%else198192198221%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts198186%_)))
                              (reverse! _%opts198186%_)))))
                  (let ((_%K198207198284%_
                         (lambda (_%rest198281%_ _%opt198282%_)
                           (if _%static?198181%_
                               (_%lp198183%_
                                _%rest198281%_
                                (cons _%opt198282%_
                                      (cons '"-cc-options" _%opts198186%_)))
                               (_%lp198183%_ _%rest198281%_ _%opts198186%_))))
                        (_%K198202198261%_
                         (lambda (_%rest198258%_ _%opt198259%_)
                           (_%lp198183%_
                            _%rest198258%_
                            (cons _%opt198259%_
                                  (cons '"-cc-options" _%opts198186%_)))))
                        (_%K198197198241%_
                         (lambda (_%rest198239%_)
                           (_%lp198183%_ _%rest198239%_ _%opts198186%_)))
                        (_%K198194198227%_
                         (lambda (_%rest198225%_)
                           (_%lp198183%_ _%rest198225%_ _%opts198186%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest198187198213%_))
                        (let ((_%tl198209198289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest198187198213%_)))
                              (_%hd198208198287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest198187198213%_))))
                          (if (equal? _%hd198208198287%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl198209198289%_))
                                  (let ((_%tl198211198294%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198209198289%_)))
                                        (_%hd198210198292%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198209198289%_))))
                                    (if (equal? _%hd198210198292%_ '"-Bstatic")
                                        (let ((_%opt198297%_
                                               _%hd198210198292%_)
                                              (_%rest198299%_
                                               _%tl198211198294%_))
                                          (_%K198207198284%_
                                           _%rest198299%_
                                           _%opt198297%_))
                                        (let ((_%opt198274%_
                                               _%hd198210198292%_)
                                              (_%rest198276%_
                                               _%tl198211198294%_))
                                          (_%K198202198261%_
                                           _%rest198276%_
                                           _%opt198274%_))))
                                  (let ((_%rest198233%_ _%tl198209198289%_))
                                    (_%K198194198227%_ _%rest198233%_)))
                              (if (equal? _%hd198208198287%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl198209198289%_))
                                      (let* ((_%tl198201198249%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl198209198289%_)))
                                             (_%rest198252%_
                                              _%tl198201198249%_))
                                        (_%K198197198241%_ _%rest198252%_))
                                      (let ((_%rest198233%_
                                             _%tl198209198289%_))
                                        (_%K198194198227%_ _%rest198233%_)))
                                  (let ((_%rest198233%_ _%tl198209198289%_))
                                    (_%K198194198227%_ _%rest198233%_)))))
                        (_%else198192198221%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords198304%_ _%static?198172198305%_)
        (let ((_%phi?198307%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords198304%_
           _%static?198172198305%_
           _%phi?198307%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g199613_
        (let ((_g199612_ (let () (declare (not safe)) (##length _g199613_))))
          (cond ((let () (declare (not safe)) (##fx= _g199612_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g199613_))
                ((let () (declare (not safe)) (##fx= _g199612_ 3))
                 (apply gxc#gsc-cc-options__%__% _g199613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g199613_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords198316%_ . _%args198317%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords198316%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198316%_
                  'static:
                  absent-value))
               _%args198317%_)))
    (define gxc#gsc-cc-options
      (lambda _%args198173198323%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args198173198323%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords198021%_ _%static?198017198022%_ _%phi?198024%_)
        (let ((_%static?198026%_
               (if (eq? _%static?198017198022%_ absent-value)
                   '#f
                   _%static?198017198022%_)))
          (if _%phi?198024%_
              '()
              (let _%lp198028%_ ((_%rest198030%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts198031%_ '()))
                (let* ((_%rest198032198058%_ _%rest198030%_)
                       (_%else198037198066%_
                        (lambda () (reverse! _%opts198031%_))))
                  (let ((_%K198052198129%_
                         (lambda (_%rest198126%_ _%opt198127%_)
                           (if _%static?198026%_
                               (_%lp198028%_
                                _%rest198126%_
                                (cons _%opt198127%_
                                      (cons '"-ld-options" _%opts198031%_)))
                               (_%lp198028%_ _%rest198126%_ _%opts198031%_))))
                        (_%K198047198106%_
                         (lambda (_%rest198103%_ _%opt198104%_)
                           (_%lp198028%_
                            _%rest198103%_
                            (cons _%opt198104%_
                                  (cons '"-ld-options" _%opts198031%_)))))
                        (_%K198042198086%_
                         (lambda (_%rest198084%_)
                           (_%lp198028%_ _%rest198084%_ _%opts198031%_)))
                        (_%K198039198072%_
                         (lambda (_%rest198070%_)
                           (_%lp198028%_ _%rest198070%_ _%opts198031%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest198032198058%_))
                        (let ((_%tl198054198134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest198032198058%_)))
                              (_%hd198053198132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest198032198058%_))))
                          (if (equal? _%hd198053198132%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl198054198134%_))
                                  (let ((_%tl198056198139%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198054198134%_)))
                                        (_%hd198055198137%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198054198134%_))))
                                    (if (equal? _%hd198055198137%_ '"-static")
                                        (let ((_%opt198142%_
                                               _%hd198055198137%_)
                                              (_%rest198144%_
                                               _%tl198056198139%_))
                                          (_%K198052198129%_
                                           _%rest198144%_
                                           _%opt198142%_))
                                        (let ((_%opt198119%_
                                               _%hd198055198137%_)
                                              (_%rest198121%_
                                               _%tl198056198139%_))
                                          (_%K198047198106%_
                                           _%rest198121%_
                                           _%opt198119%_))))
                                  (let ((_%rest198078%_ _%tl198054198134%_))
                                    (_%K198039198072%_ _%rest198078%_)))
                              (if (equal? _%hd198053198132%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl198054198134%_))
                                      (let* ((_%tl198046198094%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl198054198134%_)))
                                             (_%rest198097%_
                                              _%tl198046198094%_))
                                        (_%K198042198086%_ _%rest198097%_))
                                      (let ((_%rest198078%_
                                             _%tl198054198134%_))
                                        (_%K198039198072%_ _%rest198078%_)))
                                  (let ((_%rest198078%_ _%tl198054198134%_))
                                    (_%K198039198072%_ _%rest198078%_)))))
                        (_%else198037198066%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords198149%_ _%static?198017198150%_)
        (let ((_%phi?198152%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords198149%_
           _%static?198017198150%_
           _%phi?198152%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g199615_
        (let ((_g199614_ (let () (declare (not safe)) (##length _g199615_))))
          (cond ((let () (declare (not safe)) (##fx= _g199614_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g199615_))
                ((let () (declare (not safe)) (##fx= _g199614_ 3))
                 (apply gxc#gsc-ld-options__%__% _g199615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g199615_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords198161%_ . _%args198162%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords198161%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198161%_
                  'static:
                  absent-value))
               _%args198162%_)))
    (define gxc#gsc-ld-options
      (lambda _%args198018198168%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args198018198168%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir198012%_)
        (let ((_%user-staticdir198014%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir198012%_
                       '" -I "
                       _%user-staticdir198014%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp197924%_ ((_%rest197926%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts197927%_ '()))
          (let* ((_%rest197928197948%_ _%rest197926%_)
                 (_%else197932197956%_ (lambda () _%opts197927%_)))
            (let ((_%K197942197999%_
                   (lambda (_%rest197997%_)
                     (_%lp197924%_ _%rest197997%_ _%opts197927%_)))
                  (_%K197937197977%_
                   (lambda (_%rest197974%_ _%opt197975%_)
                     (_%lp197924%_
                      _%rest197974%_
                      (let ((__tmp199616
                             (let ((__tmp199617
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt197975%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp199617))))
                        (declare (not safe))
                        (##append _%opts197927%_ __tmp199616)))))
                  (_%K197934197962%_
                   (lambda (_%rest197960%_)
                     (_%lp197924%_ _%rest197960%_ _%opts197927%_))))
              (if (let () (declare (not safe)) (##pair? _%rest197928197948%_))
                  (let ((_%tl197944198004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest197928197948%_)))
                        (_%hd197943198002%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest197928197948%_))))
                    (if (equal? _%hd197943198002%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl197944198004%_))
                            (let* ((_%tl197946198007%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl197944198004%_)))
                                   (_%rest198010%_ _%tl197946198007%_))
                              (_%K197942197999%_ _%rest198010%_))
                            (let ((_%rest197968%_ _%tl197944198004%_))
                              (_%K197934197962%_ _%rest197968%_)))
                        (if (equal? _%hd197943198002%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl197944198004%_))
                                (let ((_%tl197941197987%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl197944198004%_)))
                                      (_%hd197940197985%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl197944198004%_))))
                                  (let ((_%opt197990%_ _%hd197940197985%_)
                                        (_%rest197992%_ _%tl197941197987%_))
                                    (_%K197937197977%_
                                     _%rest197992%_
                                     _%opt197990%_)))
                                (let ((_%rest197968%_ _%tl197944198004%_))
                                  (_%K197934197962%_ _%rest197968%_)))
                            (let ((_%rest197968%_ _%tl197944198004%_))
                              (_%K197934197962%_ _%rest197968%_)))))
                  (_%else197932197956%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str197921%_)
        (not (let () (declare (not safe)) (string-empty? _%str197921%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path197914%_ _%phi?197915%_)
        (let ((_%gsc-link-opts197917%_
               (gxc#gsc-link-options__% _%phi?197915%_))
              (_%gsc-cc-opts197918%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?197915%_))
              (_%gsc-ld-opts197919%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?197915%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp199618
                  (let ((__tmp199619
                         (let ((__tmp199620 (cons _%path197914%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp199620
                            _%gsc-link-opts197917%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp199619 _%gsc-ld-opts197919%_))))
             (declare (not safe))
             (__foldr1 cons __tmp199618 _%gsc-cc-opts197918%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx197880%_ _%n197881%_ _%ext197882%_)
        (letrec ((_%module-relative-path197884%_
                  (lambda (_%ctx197912%_)
                    (path-strip-directory
                     (let ((__tmp199621
                            (##structure-ref
                             _%ctx197912%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp199621)))))
                 (_%module-source-directory197885%_
                  (lambda (_%ctx197908%_)
                    (path-directory
                     (let ((_%mpath197910%_
                            (##structure-ref
                             _%ctx197908%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath197910%_)
                           _%mpath197910%_
                           (last _%mpath197910%_))))))
                 (_%section-string197886%_
                  (lambda (_%n197902%_)
                    (if (number? _%n197902%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n197902%_))
                        (if (symbol? _%n197902%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n197902%_))
                            (if (string? _%n197902%_)
                                _%n197902%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n197902%_)))))))
                 (_%file-name197887%_
                  (lambda (_%path197900%_)
                    (if _%n197881%_
                        (string-append
                         _%path197900%_
                         '"~"
                         (_%section-string197886%_ _%n197881%_)
                         _%ext197882%_)
                        (string-append _%path197900%_ _%ext197882%_))))
                 (_%file-path197888%_
                  (lambda ()
                    (let ((_%$e197894%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e197894%_
                          ((lambda (_%outdir197897%_)
                             (path-expand
                              (_%file-name197887%_
                               (let ((__tmp199622
                                      (##structure-ref
                                       _%ctx197880%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp199622)))
                              _%outdir197897%_))
                           _%$e197894%_)
                          (path-expand
                           (_%file-name197887%_
                            (_%module-relative-path197884%_ _%ctx197880%_))
                           (_%module-source-directory197885%_
                            _%ctx197880%_)))))))
          (let ((_%path197890%_ (_%file-path197888%_)))
            (let ((__tmp199623
                   (lambda ()
                     (let ((__tmp199624 (path-directory _%path197890%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp199624)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp199623))
            _%path197890%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx197861%_)
        (letrec ((_%file-name197863%_
                  (lambda (_%id197878%_)
                    (let ((__tmp199625 (gxc#static-module-name _%id197878%_)))
                      (declare (not safe))
                      (##string-append __tmp199625 '".scm"))))
                 (_%file-path197864%_
                  (lambda ()
                    (let* ((_%file197870%_
                            (_%file-name197863%_
                             (##structure-ref
                              _%ctx197861%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e197872%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e197872%_
                          ((lambda (_%outdir197875%_)
                             (path-expand
                              _%file197870%_
                              (path-expand '"static" _%outdir197875%_)))
                           _%$e197872%_)
                          (path-expand _%file197870%_ '"static"))))))
          (let ((_%path197866%_ (_%file-path197864%_)))
            (let ((__tmp199626
                   (lambda ()
                     (let ((__tmp199627 (path-directory _%path197866%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp199627)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp199626))
            _%path197866%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx197854%_ _%opts197855%_)
        (let ((_%$e197857%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts197855%_))))
          (if _%$e197857%_
              _%$e197857%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx197854%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr197844%_)
        (if (string? _%idstr197844%_)
            (let* ((_%str197847%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr197844%_)))
                   (_%strs197849%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str197847%_ '#\/))))
              (declare (not safe))
              (string-join _%strs197849%_ '"__"))
            (if (symbol? _%idstr197844%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr197844%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr197844%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp199628
               (let ((__tmp199629 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp199629 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp199628))))
    (define gxc#invoke__%
      (lambda (_%@@keywords197808%_
               _%stdout-redirection197804197809%_
               _%stderr-redirection197805197811%_
               _%program197813%_
               _%args197814%_)
        (let* ((_%stdout-redirection197816%_
                (if (eq? _%stdout-redirection197804197809%_ absent-value)
                    '#f
                    _%stdout-redirection197804197809%_))
               (_%stderr-redirection197818%_
                (if (eq? _%stderr-redirection197805197811%_ absent-value)
                    '#f
                    _%stderr-redirection197805197811%_)))
          (let ((__tmp199630 (cons _%program197813%_ _%args197814%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp199630))
          (let* ((_%proc197820%_
                  (open-process
                   (cons 'path:
                         (cons _%program197813%_
                               (cons 'arguments:
                                     (cons _%args197814%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection197816%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection197818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output197825%_
                  (if (or _%stdout-redirection197816%_
                          _%stderr-redirection197818%_)
                      (read-line _%proc197820%_ '#f)
                      '#f))
                 (_%status197828%_ (process-status _%proc197820%_)))
            (let () (declare (not safe)) (##close-port _%proc197820%_))
            (if (zero? _%status197828%_)
                '#!void
                (begin
                  (display _%output197825%_)
                  (let ((__tmp199631 (cons _%program197813%_ _%args197814%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp199631
                     _%status197828%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords197833%_ . _%args197834%_)
        (apply gxc#invoke__%
               _%@@keywords197833%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords197833%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords197833%_
                  'stderr-redirection:
                  absent-value))
               _%args197834%_)))
    (define gxc#invoke
      (lambda _%args197806197840%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args197806197840%_)))))
