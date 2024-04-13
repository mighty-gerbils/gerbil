(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1713004418)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp200994 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp200994))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp200995 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp200995))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path200851%_ _%fun200852%_)
        (with-output-to-file
         (cons 'path: (cons _%path200851%_ gxc#scheme-file-settings))
         _%fun200852%_)))
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
      (lambda (_%gerbil-libdir200846%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir200846%_)))
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
      (lambda (_%dir200844%_) (delete-file-or-directory _%dir200844%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath200817%_ _%opts200818%_)
        (if (string? _%srcpath200817%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200817%_)))
        (let ((_%outdir200820%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200818%_)))
              (_%invoke-gsc?200821%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200818%_)))
              (_%gsc-options200822%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200818%_)))
              (_%keep-scm?200823%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200818%_)))
              (_%verbosity200824%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200818%_)))
              (_%optimize200825%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts200818%_)))
              (_%debug200826%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200818%_)))
              (_%gen-ssxi200827%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts200818%_)))
              (_%parallel?200828%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200818%_))))
          (if _%outdir200820%_
              (let ((__tmp200996
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200820%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200996))
              '#!void)
          (if _%optimize200825%_
              (let ((__tmp200997
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200997))
              '#!void)
          (let ((__tmp201000
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath200817%_))
                   (gxc#compile-top-module
                    (let ((__tmp201001
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200817%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp201001)))))
                (__tmp200999 (gxc#compile-timestamp))
                (__tmp200998
                 (cons 'compile-module (cons _%srcpath200817%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201000
             gxc#current-compile-output-dir
             _%outdir200820%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200821%_
             gxc#current-compile-gsc-options
             _%gsc-options200822%_
             gxc#current-compile-keep-scm
             _%keep-scm?200823%_
             gxc#current-compile-verbose
             _%verbosity200824%_
             gxc#current-compile-optimize
             _%optimize200825%_
             gxc#current-compile-debug
             _%debug200826%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi200827%_
             gxc#current-compile-timestamp
             __tmp200999
             gxc#current-compile-context
             __tmp200998
             gxc#current-compile-parallel
             _%parallel?200828%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath200837%_)
        (let ((_%opts200839%_ '()))
          (gxc#compile-module__% _%srcpath200837%_ _%opts200839%_))))
    (define gxc#compile-module
      (lambda _g201003_
        (let ((_g201002_ (let () (declare (not safe)) (##length _g201003_))))
          (cond ((let () (declare (not safe)) (##fx= _g201002_ 1))
                 (apply gxc#compile-module__0 _g201003_))
                ((let () (declare (not safe)) (##fx= _g201002_ 2))
                 (apply gxc#compile-module__% _g201003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g201003_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath200792%_ _%opts200793%_)
        (if (string? _%srcpath200792%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200792%_)))
        (let ((_%outdir200795%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200793%_)))
              (_%invoke-gsc?200796%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200793%_)))
              (_%gsc-options200797%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200793%_)))
              (_%keep-scm?200798%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200793%_)))
              (_%verbosity200799%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200793%_)))
              (_%debug200800%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200793%_)))
              (_%parallel?200801%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200793%_))))
          (if _%outdir200795%_
              (let ((__tmp201004
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200795%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp201004))
              '#!void)
          (let ((__tmp201007
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath200792%_))
                   (gxc#compile-executable-module
                    (let ((__tmp201008
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200792%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp201008))
                    _%opts200793%_)))
                (__tmp201006 (gxc#compile-timestamp))
                (__tmp201005 (cons 'compile-exe (cons _%srcpath200792%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201007
             gxc#current-compile-output-dir
             _%outdir200795%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200796%_
             gxc#current-compile-gsc-options
             _%gsc-options200797%_
             gxc#current-compile-keep-scm
             _%keep-scm?200798%_
             gxc#current-compile-verbose
             _%verbosity200799%_
             gxc#current-compile-debug
             _%debug200800%_
             gxc#current-compile-timestamp
             __tmp201006
             gxc#current-compile-context
             __tmp201005
             gxc#current-compile-parallel
             _%parallel?200801%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath200809%_)
        (let ((_%opts200811%_ '()))
          (gxc#compile-exe__% _%srcpath200809%_ _%opts200811%_))))
    (define gxc#compile-exe
      (lambda _g201010_
        (let ((_g201009_ (let () (declare (not safe)) (##length _g201010_))))
          (cond ((let () (declare (not safe)) (##fx= _g201009_ 1))
                 (apply gxc#compile-exe__0 _g201010_))
                ((let () (declare (not safe)) (##fx= _g201009_ 2))
                 (apply gxc#compile-exe__% _g201010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g201010_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx200788%_ _%opts200789%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts200789%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx200788%_
             _%opts200789%_)
            (gxc#compile-executable-module/separate
             _%ctx200788%_
             _%opts200789%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx200578%_ _%opts200579%_)
        (letrec ((_%generate-stub200581%_
                  (lambda (_%builtin-modules200784%_)
                    (let ((_%mod-main200786%_
                           (gxc#find-runtime-symbol _%ctx200578%_ 'main)))
                      (let ((__tmp201011
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules200784%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp201011))
                      (let ((__tmp201012
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main200786%_
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
                        (##write __tmp201012))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts200582%_
                  (lambda (_%gerbil-libdir200782%_)
                    (let ((__tmp201013
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir200782%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp201013 read))))
                 (_%replace-extension200583%_
                  (lambda (_%path200779%_ _%ext200780%_)
                    (string-append
                     (path-strip-extension _%path200779%_)
                     _%ext200780%_)))
                 (_%userlib-module?200584%_
                  (lambda (_%ctx200777%_)
                    (if (_%exclude-module?200586%_ _%ctx200777%_)
                        '#f
                        (not (_%libgerbil-module?200585%_ _%ctx200777%_)))))
                 (_%libgerbil-module?200585%_
                  (lambda (_%ctx200770%_)
                    (let ((_%id-str200772%_
                           (symbol->string
                            (##structure-ref
                             _%ctx200770%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?200586%_ _%id-str200772%_)
                          '#f
                          (let ((_%$e200774%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str200772%_))))
                            (if _%$e200774%_
                                _%$e200774%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str200772%_))))))))
                 (_%exclude-module?200586%_
                  (lambda (_%ctx-or-str200766%_)
                    (let ((_%str200768%_
                           (if (string? _%ctx-or-str200766%_)
                               _%ctx-or-str200766%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str200766%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str200768%_))))
                 (_%not-file-empty?200587%_
                  (lambda (_%path200764%_)
                    (not (gxc#file-empty? _%path200764%_))))
                 (_%fold-libgerbil-runtime-scm200588%_
                  (lambda (_%gerbil-staticdir200757%_ _%libgerbil-scm200758%_)
                    (let ((_%gerbil-runtime-scm200762%_
                           (let ((__tmp201014
                                  (lambda (_%rtm200760%_)
                                    (path-expand
                                     (let ((__tmp201015
                                            (let ((__tmp201016
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm200760%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp201016
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp201015 '".scm"))
                                     _%gerbil-staticdir200757%_))))
                             (declare (not safe))
                             (##map __tmp201014 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates200589%_
                       (append _%gerbil-runtime-scm200762%_
                               _%libgerbil-scm200758%_)))))
                 (_%remove-duplicates200589%_
                  (lambda (_%strlst200717%_)
                    (let _%loop200719%_ ((_%rest200721%_ _%strlst200717%_)
                                         (_%result200722%_ '()))
                      (let* ((_%rest200723200731%_ _%rest200721%_)
                             (_%else200725200739%_
                              (lambda () (reverse! _%result200722%_)))
                             (_%K200727200745%_
                              (lambda (_%rest200742%_ _%path200743%_)
                                (if (member _%path200743%_ _%result200722%_)
                                    (_%loop200719%_
                                     _%rest200742%_
                                     _%result200722%_)
                                    (_%loop200719%_
                                     _%rest200742%_
                                     (cons _%path200743%_
                                           _%result200722%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest200723200731%_))
                            (let ((_%hd200728200748%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200723200731%_)))
                                  (_%tl200729200750%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200723200731%_))))
                              (let* ((_%path200753%_ _%hd200728200748%_)
                                     (_%rest200755%_ _%tl200729200750%_))
                                (_%K200727200745%_
                                 _%rest200755%_
                                 _%path200753%_)))
                            (_%else200725200739%_))))))
                 (_%compile-stub200590%_
                  (lambda (_%output-scm200597%_ _%output-bin200598%_)
                    (let* ((_%gerbil-home200600%_
                            (let ((__tmp201017
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp201017)))
                           (_%gerbil-libdir200602%_
                            (path-expand '"lib" _%gerbil-home200600%_))
                           (_%gerbil-staticdir200604%_
                            (path-expand '"static" _%gerbil-libdir200602%_))
                           (_%deps200606%_
                            (gxc#find-runtime-module-deps _%ctx200578%_))
                           (_%libgerbil-deps200608%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?200585%_
                               _%deps200606%_)))
                           (_%libgerbil-scm200610%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps200608%_)))
                           (_%libgerbil-scm200612%_
                            (_%fold-libgerbil-runtime-scm200588%_
                             _%gerbil-staticdir200604%_
                             _%libgerbil-scm200610%_))
                           (_%libgerbil-c200618%_
                            (map (lambda (_%g200613200615%_)
                                   (_%replace-extension200583%_
                                    _%g200613200615%_
                                    '".c"))
                                 _%libgerbil-scm200612%_))
                           (_%libgerbil-o200624%_
                            (map (lambda (_%g200619200621%_)
                                   (_%replace-extension200583%_
                                    _%g200619200621%_
                                    '".o"))
                                 _%libgerbil-scm200612%_))
                           (_%src-deps200626%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?200584%_
                               _%deps200606%_)))
                           (_%src-deps-scm200628%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps200626%_)))
                           (_%src-deps-scm200630%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?200587%_
                               _%src-deps-scm200628%_)))
                           (_%src-deps-scm200632%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm200630%_)))
                           (_%src-deps-c200638%_
                            (let ((__tmp201018
                                   (lambda (_%g200633200635%_)
                                     (_%replace-extension200583%_
                                      _%g200633200635%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp201018 _%src-deps-scm200632%_)))
                           (_%src-deps-o200644%_
                            (let ((__tmp201019
                                   (lambda (_%g200639200641%_)
                                     (_%replace-extension200583%_
                                      _%g200639200641%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp201019 _%src-deps-scm200632%_)))
                           (_%src-bin-scm200646%_
                            (gxc#find-static-module-file _%ctx200578%_))
                           (_%src-bin-scm200648%_
                            (path-expand _%src-bin-scm200646%_))
                           (_%src-bin-c200650%_
                            (_%replace-extension200583%_
                             _%src-bin-scm200648%_
                             '".c"))
                           (_%src-bin-o200652%_
                            (_%replace-extension200583%_
                             _%src-bin-scm200648%_
                             '".o"))
                           (_%output-bin200654%_
                            (path-expand _%output-bin200598%_))
                           (_%output-scm200656%_
                            (path-expand _%output-scm200597%_))
                           (_%output-c200658%_
                            (_%replace-extension200583%_
                             _%output-scm200656%_
                             '".c"))
                           (_%output-o200660%_
                            (_%replace-extension200583%_
                             _%output-scm200656%_
                             '".o"))
                           (_%output_-c200662%_
                            (_%replace-extension200583%_
                             _%output-scm200656%_
                             '"_.c"))
                           (_%output_-o200664%_
                            (_%replace-extension200583%_
                             _%output-scm200656%_
                             '"_.o"))
                           (_%gsc-link-opts200666%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200668%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200670%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir200604%_))
                           (_%output-ld-opts200672%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts200674%_
                            (_%get-libgerbil-ld-opts200582%_
                             _%gerbil-libdir200602%_))
                           (_%rpath200676%_
                            (gxc#gerbil-rpath _%gerbil-libdir200602%_))
                           (_%builtin-modules200680%_
                            (_%remove-duplicates200589%_
                             (let ((__tmp201020
                                    (let ((__tmp201022
                                           (lambda (_%mod200678%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod200678%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp201021
                                           (cons _%ctx200578%_
                                                 _%deps200606%_)))
                                      (declare (not safe))
                                      (##map __tmp201022 __tmp201021))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp201020)))))
                      (letrec ((_%compile-obj200683%_
                                (lambda (_%scm-path200690%_ _%c-path200691%_)
                                  (let* ((_%o-path200693%_
                                          (_%replace-extension200583%_
                                           _%c-path200691%_
                                           '".o"))
                                         (_%lock200695%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path200693%_
                                             '".lock")))
                                         (_%locked200697%_ '#f)
                                         (_%unlock200700%_
                                          (lambda ()
                                            (close-port _%locked200697%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock200695%_)))))
                                    (let _%retry200703%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock200695%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry200703%_))
                                          (begin
                                            (set! _%locked200697%_
                                                  (let ((__tmp201023
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock200695%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp201023)))
                                            (if _%locked200697%_
                                                '#!void
                                                (_%retry200703%_)))))
                                    (let ((__tmp201025
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path200693%_)))
                                                     (not _%scm-path200690%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path200690%_
                                                        _%o-path200693%_)))
                                                 (let ((_%gsc-cc-opts200714%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp201026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp201027 (cons _%c-path200691%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp201027
                            _%gsc-static-opts200670%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201026 _%gsc-cc-opts200714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp201024
                                           (lambda () (_%unlock200700%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp201025
                                       __tmp201024))))))
                        (let ((__tmp201028
                               (lambda ()
                                 (let ((__tmp201029
                                        (path-directory _%output-bin200654%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp201029)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp201028))
                        (gxc#with-output-to-scheme-file
                         _%output-scm200656%_
                         (lambda ()
                           (_%generate-stub200581%_
                            _%builtin-modules200680%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it200688%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp201030
                                                   (let ((__tmp201031
                                                          (let ((__tmp201032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm200648%_
                               (cons _%output-scm200656%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201032 _%src-deps-scm200632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp201031
                                                      _%libgerbil-c200618%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp201030
                                               _%gsc-link-opts200666%_))))
                                     (for-each
                                      _%compile-obj200683%_
                                      (let ((__tmp201033
                                             (cons _%src-bin-scm200648%_
                                                   (cons _%output-scm200656%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp201033
                                         _%src-deps-scm200632%_))
                                      (let ((__tmp201034
                                             (cons _%src-bin-c200650%_
                                                   (cons _%output-c200658%_
                                                         (cons _%output_-c200662%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp201034
                                         _%src-deps-c200638%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin200654%_
                                                        (let ((__tmp201035
                                                               (cons _%src-bin-o200652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o200660%_
                                   (cons _%output_-o200664%_
                                         (let ((__tmp201036
                                                (let ((__tmp201037
                                                       (let ((__tmp201039
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir200602%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts200674%_))))
                     (__tmp201038
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath200676%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp201039 __tmp201038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp201037
                                                   _%output-ld-opts200672%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp201036
                                            _%libgerbil-o200624%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp201035 _%src-deps-o200644%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp201040
                                            (cons _%output-c200658%_
                                                  (cons _%output_-c200662%_
                                                        (cons _%output-o200660%_
                                                              (cons _%output_-o200664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp201040)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it200688%_))
                                  (_%compile-it200688%_)))
                            '#!void))))))
          (let* ((_%output-bin200592%_
                  (gxc#compile-exe-output-file _%ctx200578%_ _%opts200579%_))
                 (_%output-scm200594%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200592%_ '"__exe.scm"))))
            (_%compile-stub200590%_
             _%output-scm200594%_
             _%output-bin200592%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx200400%_ _%opts200401%_)
        (letrec ((_%reset-declare200403%_
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
                 (_%generate-stub200404%_
                  (lambda (_%deps200569%_)
                    (let ((_%mod-main200571%_
                           (gxc#find-runtime-symbol _%ctx200400%_ 'main))
                          (_%reset-decl200572%_ (_%reset-declare200403%_))
                          (_%user-decl200573%_ (_%user-declare200405%_)))
                      (for-each
                       (lambda (_%dep200575%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl200572%_))
                         (newline)
                         (if _%user-decl200573%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl200573%_))
                               (newline))
                             '#!void)
                         (let ((__tmp201041
                                (cons 'include (cons _%dep200575%_ '()))))
                           (declare (not safe))
                           (##write __tmp201041))
                         (newline))
                       _%deps200569%_)
                      (let ((__tmp201042
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main200571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp201042))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare200405%_
                  (lambda ()
                    (let* ((_%gsc-opts200474%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts200401%_)))
                           (_%gsc-prelude200476%_
                            (if _%gsc-opts200474%_
                                (member '"-prelude" _%gsc-opts200474%_)
                                '#f))
                           (_%gsc-prelude200478%_
                            (if _%gsc-prelude200476%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude200476%_)))
                                '#f)))
                      (let _%lp200481%_ ((_%rest200483%_
                                          (cons _%gsc-prelude200478%_ '()))
                                         (_%user-decls200484%_ '()))
                        (let* ((_%rest200485200493%_ _%rest200483%_)
                               (_%else200487200501%_
                                (lambda ()
                                  (if (null? _%user-decls200484%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls200484%_)))))
                               (_%K200489200557%_
                                (lambda (_%rest200504%_ _%expr200505%_)
                                  (let* ((_%expr200506200518%_ _%expr200505%_)
                                         (_%else200509200526%_
                                          (lambda ()
                                            (_%lp200481%_
                                             _%rest200504%_
                                             _%user-decls200484%_))))
                                    (let ((_%K200514200547%_
                                           (lambda (_%decls200545%_)
                                             (_%lp200481%_
                                              _%rest200504%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls200484%_
                                                 _%decls200545%_)))))
                                          (_%K200511200532%_
                                           (lambda (_%exprs200530%_)
                                             (_%lp200481%_
                                              (append _%exprs200530%_
                                                      _%rest200504%_)
                                              _%user-decls200484%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr200506200518%_))
                                          (let ((_%tl200516200552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr200506200518%_)))
                                                (_%hd200515200550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr200506200518%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200515200550%_
                                                         'declare))
                                                (let ((_%decls200555%_
                                                       _%tl200516200552%_))
                                                  (_%K200514200547%_
                                                   _%decls200555%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd200515200550%_
                                                             'begin))
                                                    (let ((_%exprs200540%_
                                                           _%tl200516200552%_))
                                                      (_%K200511200532%_
                                                       _%exprs200540%_))
                                                    (_%else200509200526%_))))
                                          (_%else200509200526%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest200485200493%_))
                              (let ((_%hd200490200560%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest200485200493%_)))
                                    (_%tl200491200562%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest200485200493%_))))
                                (let* ((_%expr200565%_ _%hd200490200560%_)
                                       (_%rest200567%_ _%tl200491200562%_))
                                  (_%K200489200557%_
                                   _%rest200567%_
                                   _%expr200565%_)))
                              (_%else200487200501%_)))))))
                 (_%compile-stub200406%_
                  (lambda (_%output-scm200413%_ _%output-bin200414%_)
                    (let* ((_%gerbil-home200416%_
                            (let ((__tmp201043
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp201043)))
                           (_%gerbil-libdir200418%_
                            (path-expand '"lib" _%gerbil-home200416%_))
                           (_%runtime200420%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp200422%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home200416%_))
                           (_%include-gambit-sharp200424%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp200422%_
                               '"\")")))
                           (_%bin-scm200426%_
                            (gxc#find-static-module-file _%ctx200400%_))
                           (_%deps200428%_
                            (gxc#find-runtime-module-deps _%ctx200400%_))
                           (_%deps200430%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps200428%_)))
                           (_%deps200435%_
                            (let ((__tmp201044
                                   (lambda (_%$obj200432%_)
                                     (not (gxc#file-empty? _%$obj200432%_)))))
                              (declare (not safe))
                              (##filter __tmp201044 _%deps200430%_)))
                           (_%deps200439%_
                            (let ((__tmp201045
                                   (lambda (_%f200437%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f200437%_
                                             _%runtime200420%_))))))
                              (declare (not safe))
                              (##filter __tmp201045 _%deps200435%_)))
                           (_%output-base200441%_
                            (let ((__tmp201046
                                   (path-strip-extension
                                    _%output-scm200413%_)))
                              (declare (not safe))
                              (##string-append __tmp201046)))
                           (_%output-c200443%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200441%_ '".c")))
                           (_%output-o200445%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200441%_ '".o")))
                           (_%output-c_200447%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200441%_ '"_.c")))
                           (_%output-o_200449%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200441%_ '"_.o")))
                           (_%gsc-link-opts200451%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200453%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200455%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir200418%_)))
                           (_%output-ld-opts200457%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros200459%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp200424%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp200424%_
                                            '()))))
                           (_%gsc-link-opts200461%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts200451%_
                               _%gsc-gx-macros200459%_)))
                           (_%rpath200463%_
                            (gxc#gerbil-rpath _%gerbil-libdir200418%_))
                           (_%default-ld-options200465%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp201047
                             (lambda ()
                               (let ((__tmp201048
                                      (path-directory _%output-bin200414%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp201048)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp201047))
                      (gxc#with-output-to-scheme-file
                       _%output-scm200413%_
                       (lambda ()
                         (_%generate-stub200404%_
                          (let ((__tmp201049
                                 (let ((__tmp201050
                                        (cons _%bin-scm200426%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp201050
                                    _%deps200439%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp201049 _%runtime200420%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it200471%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_200447%_
                                                      (let ((__tmp201051
                                                             (cons _%output-scm200413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp201051 _%gsc-link-opts200461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp201052
                                                 (let ((__tmp201053
                                                        (cons _%output-c200443%_
                                                              (cons _%output-c_200447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp201053
                                                    _%gsc-static-opts200455%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp201052
                                             _%gsc-cc-opts200453%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin200414%_
                                                      (cons _%output-o200445%_
                                                            (cons _%output-o_200449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201054
                                 (let ((__tmp201056
                                        (cons '"-L"
                                              (cons _%gerbil-libdir200418%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options200465%_))))
                                       (__tmp201055
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath200463%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp201056 __tmp201055))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp201054
                             _%output-ld-opts200457%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it200471%_))
                                (_%compile-it200471%_)))
                          '#!void)))))
          (let* ((_%output-bin200408%_
                  (gxc#compile-exe-output-file _%ctx200400%_ _%opts200401%_))
                 (_%output-scm200410%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200408%_ '"__exe.scm"))))
            (_%compile-stub200406%_
             _%output-scm200410%_
             _%output-bin200408%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx200349%_ _%id200350%_)
        (let ((_%$e200396%_
               (let ((__tmp201058
                      (lambda (_%e200351200353%_)
                        (let* ((_%g200355200365%_ _%e200351200353%_)
                               (_%else200357200373%_ (lambda () '#f))
                               (_%K200359200377%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g200355200365%_
                                 'gx#module-export::t))
                              (let* ((_%e200360200380%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200355200365%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e200361200383%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200355200365%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e200362200386%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200355200365%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e200362200386%_ '0))
                                    (let ((_%e200363200389%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g200355200365%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g200391200393%_)
                                             (eq? _%g200391200393%_
                                                  _%id200350%_))
                                           _%e200363200389%_)
                                          (_%K200359200377%_)
                                          (_%else200357200373%_)))
                                    (_%else200357200373%_)))
                              (_%else200357200373%_)))))
                     (__tmp201057
                      (##structure-ref
                       _%ctx200349%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp201058 __tmp201057))))
          (if _%$e200396%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e200396%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx200340%_ _%id200341%_)
        (let ((_%$e200343%_
               (gxc#find-export-binding _%ctx200340%_ _%id200341%_)))
          (if _%$e200343%_
              ((lambda (_%bind200346%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind200346%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id200341%_)))
                 (##structure-ref _%bind200346%_ '1 gx#binding::t '#f))
               _%$e200343%_)
              (let ((__tmp201059
                     (##structure-ref
                      _%ctx200340%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp201059
                 _%id200341%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx200206%_)
        (letrec* ((_%ht200208%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template200209%_
                   (lambda (_%in200285%_ _%phi200286%_)
                     (let ((_%iphi200288%_
                            (fx+ _%phi200286%_
                                 (##direct-structure-ref
                                  _%in200285%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports200289%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in200285%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp200291%_ ((_%rest200293%_ _%imports200289%_)
                                          (_%r200294%_ '()))
                         (let* ((_%rest200295200303%_ _%rest200293%_)
                                (_%else200297200311%_ (lambda () _%r200294%_))
                                (_%K200299200328%_
                                 (lambda (_%rest200314%_ _%in200315%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in200315%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi200288%_))
                                           (_%lp200291%_
                                            _%rest200314%_
                                            (cons _%in200315%_ _%r200294%_))
                                           (_%lp200291%_
                                            _%rest200314%_
                                            _%r200294%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in200315%_
                                              'gx#module-import::t))
                                           (let ((_%iphi200319%_
                                                  (fx+ _%phi200286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in200315%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi200319%_))
                                                 (_%lp200291%_
                                                  _%rest200314%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in200315%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r200294%_))
                                                 (_%lp200291%_
                                                  _%rest200314%_
                                                  _%r200294%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in200315%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi200322%_
                                                      (fx+ _%iphi200288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in200315%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi200322%_))
                                                     (_%lp200291%_
                                                      _%rest200314%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in200315%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r200294%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi200322%_))
                                                         (_%lp200291%_
                                                          _%rest200314%_
                                                          (let ((__tmp201060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template200209%_
                          _%in200315%_
                          _%iphi200288%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r200294%_ __tmp201060)))
                 (_%lp200291%_ _%rest200314%_ _%r200294%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp200291%_
                                                _%rest200314%_
                                                _%r200294%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest200295200303%_))
                               (let ((_%hd200300200331%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest200295200303%_)))
                                     (_%tl200301200333%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest200295200303%_))))
                                 (let* ((_%in200336%_ _%hd200300200331%_)
                                        (_%rest200338%_ _%tl200301200333%_))
                                   (_%K200299200328%_
                                    _%rest200338%_
                                    _%in200336%_)))
                               (_%else200297200311%_)))))))
                  (_%find-deps200210%_
                   (lambda (_%rest200218%_ _%deps200219%_)
                     (let* ((_%rest200220200228%_ _%rest200218%_)
                            (_%else200222200236%_ (lambda () _%deps200219%_))
                            (_%K200224200273%_
                             (lambda (_%rest200239%_ _%hd200240%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd200240%_
                                      'gx#module-context::t))
                                   (let ((_%id200243%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd200240%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports200244%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd200240%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht200208%_
                                            _%id200243%_))
                                         (_%find-deps200210%_
                                          _%rest200239%_
                                          _%deps200219%_)
                                         (let ((_%$e200247%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd200240%_))))
                                           (if _%$e200247%_
                                               ((lambda (_%pre200250%_)
                                                  (let ((_%xdeps200252%_
                                                         (_%find-deps200210%_
                                                          (cons _%pre200250%_
                                                                _%imports200244%_)
                                                          _%deps200219%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht200208%_
                                                       _%id200243%_
                                                       _%hd200240%_))
                                                    (_%find-deps200210%_
                                                     _%rest200239%_
                                                     (cons _%hd200240%_
                                                           _%xdeps200252%_))))
                                                _%$e200247%_)
                                               (let ((_%xdeps200255%_
                                                      (_%find-deps200210%_
                                                       _%imports200244%_
                                                       _%deps200219%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht200208%_
                                                    _%id200243%_
                                                    _%hd200240%_))
                                                 (_%find-deps200210%_
                                                  _%rest200239%_
                                                  (cons _%hd200240%_
                                                        _%xdeps200255%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd200240%_
                                          'gx#prelude-context::t))
                                       (let ((_%id200258%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd200240%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht200208%_
                                                _%id200258%_))
                                             (_%find-deps200210%_
                                              _%rest200239%_
                                              _%deps200219%_)
                                             (let ((_%xdeps200262%_
                                                    (_%find-deps200210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd200240%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps200219%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht200208%_
                                                      _%id200258%_))
                                                   (_%find-deps200210%_
                                                    _%rest200239%_
                                                    _%xdeps200262%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht200208%_
                                                        _%id200258%_
                                                        _%hd200240%_))
                                                     (_%find-deps200210%_
                                                      _%rest200239%_
                                                      (cons _%hd200240%_
                                                            _%xdeps200262%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd200240%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd200240%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps200210%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd200240%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest200239%_)
                                                _%deps200219%_)
                                               (_%find-deps200210%_
                                                _%rest200239%_
                                                _%deps200219%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd200240%_
                                                  'gx#module-export::t))
                                               (_%find-deps200210%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd200240%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest200239%_)
                                                _%deps200219%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd200240%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd200240%_ '2 '#f '#f)))
               (_%find-deps200210%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd200240%_ '1 '#f '#f))
                      _%rest200239%_)
                _%deps200219%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd200240%_ '2 '#f '#f)))
                   (let ((_%xdeps200269%_
                          (_%import-set-template200209%_ _%hd200240%_ '0)))
                     (_%find-deps200210%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest200239%_ _%xdeps200269%_))
                      _%deps200219%_))
                   (_%find-deps200210%_ _%rest200239%_ _%deps200219%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd200240%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest200220200228%_))
                           (let ((_%hd200225200276%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest200220200228%_)))
                                 (_%tl200226200278%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest200220200228%_))))
                             (let* ((_%hd200281%_ _%hd200225200276%_)
                                    (_%rest200283%_ _%tl200226200278%_))
                               (_%K200224200273%_
                                _%rest200283%_
                                _%hd200281%_)))
                           (_%else200222200236%_))))))
          (let ((__tmp201061
                 (filter gx#expander-context-id
                         (_%find-deps200210%_
                          (let ((_%$e200212%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx200206%_))))
                            (if _%$e200212%_
                                ((lambda (_%pre200215%_)
                                   (cons _%pre200215%_
                                         (##structure-ref
                                          _%ctx200206%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e200212%_)
                                (##structure-ref
                                 _%ctx200206%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp201061)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx200136%_)
        (let* ((_%context-id200138%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx200136%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx200136%_ '1 '#f '#f))
                    (string->symbol _%ctx200136%_)))
               (_%scm200140%_
                (let ((__tmp201062
                       (gxc#static-module-name _%context-id200138%_)))
                  (declare (not safe))
                  (##string-append __tmp201062 '".scm")))
               (_%dirs200142%_ (let () (declare (not safe)) (load-path)))
               (_%dirs200148%_
                (let ((_%user-libpath200144%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath200144%_
                      (let ((_%user-libpath200146%_
                             (path-expand '"lib" _%user-libpath200144%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath200146%_ _%dirs200142%_))
                            _%dirs200142%_
                            (cons _%user-libpath200146%_ _%dirs200142%_)))
                      _%dirs200142%_)))
               (_%dirs200158%_
                (let ((_%$e200150%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e200150%_
                      ((lambda (_%g200152200154%_)
                         (cons _%g200152200154%_ _%dirs200148%_))
                       _%$e200150%_)
                      _%dirs200148%_)))
               (_%dirs200164%_
                (let ((__tmp201063
                       (lambda (_%g200159200161%_)
                         (path-expand '"static" _%g200159200161%_))))
                  (declare (not safe))
                  (##map __tmp201063 _%dirs200158%_))))
          (let _%lp200167%_ ((_%rest200169%_ _%dirs200164%_))
            (let* ((_%rest200170200178%_ _%rest200169%_)
                   (_%else200172200186%_
                    (lambda ()
                      (let ((__tmp201064
                             (##structure-ref
                              _%ctx200136%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp201064
                         _%scm200140%_))))
                   (_%K200174200194%_
                    (lambda (_%rest200189%_ _%dir200190%_)
                      (let ((_%path200192%_
                             (path-expand _%scm200140%_ _%dir200190%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path200192%_))
                            _%path200192%_
                            (_%lp200167%_ _%rest200189%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest200170200178%_))
                  (let ((_%hd200175200197%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200170200178%_)))
                        (_%tl200176200199%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200170200178%_))))
                    (let* ((_%dir200202%_ _%hd200175200197%_)
                           (_%rest200204%_ _%tl200176200199%_))
                      (_%K200174200194%_ _%rest200204%_ _%dir200202%_)))
                  (_%else200172200186%_)))))))
    (define gxc#file-empty?
      (lambda (_%path200134%_)
        (zero? (let ((__tmp201065 (file-info _%path200134%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp201065)))))
    (define gxc#compile-top-module
      (lambda (_%ctx200130%_)
        (let ((__tmp201069
               (lambda ()
                 (let ((__tmp201070
                        (##structure-ref
                         _%ctx200130%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp201070))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp201071
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx200130%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp201071))
                     '#!void)
                 (gxc#collect-bindings _%ctx200130%_)
                 (gxc#compile-runtime-code _%ctx200130%_)
                 (gxc#compile-meta-code _%ctx200130%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx200130%_)
                     '#!void)))
              (__tmp201068
               (let ((__obj200992
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj200992))
                 __obj200992))
              (__tmp201067 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201066
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
           __tmp201069
           gx#current-expander-context
           _%ctx200130%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp201068
           gxc#current-compile-runtime-sections
           __tmp201067
           gxc#current-compile-runtime-names
           __tmp201066))))
    (define gxc#collect-bindings
      (lambda (_%ctx200128%_)
        (let ((__tmp201072
               (##structure-ref _%ctx200128%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp201072))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx200076%_)
        (letrec ((_%compile1200078%_
                  (lambda (_%ctx200117%_)
                    (let* ((_%code200119%_
                            (##structure-ref
                             _%ctx200117%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm200123%_
                            (let ((_%idstr200121%_
                                   (let ((__tmp201073
                                          (##structure-ref
                                           _%ctx200117%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp201073))))
                              (declare (not safe))
                              (##string-append _%idstr200121%_ '"~0")))
                           (_%rtc?200125%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code200119%_))))
                      (if _%rtc?200125%_
                          (let ((__tmp201074
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp201074
                             _%ctx200117%_
                             _%rtm200123%_))
                          '#!void)
                      (_%generate-runtime-code200080%_
                       _%ctx200117%_
                       _%code200119%_
                       (if _%rtc?200125%_ _%rtm200123%_ '#f)))))
                 (_%context-timestamp200079%_
                  (lambda (_%ctx200115%_)
                    (let ((__tmp201075
                           (let ((__tmp201076
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx200115%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp201076 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp201075))))
                 (_%generate-runtime-code200080%_
                  (lambda (_%ctx200087%_ _%code200088%_ _%rtm200089%_)
                    (let* ((_%runtime-code?200091%_ (if _%rtm200089%_ '#t '#f))
                           (_%lifts200093%_ (box '()))
                           (_%runtime-code200096%_
                            (if _%runtime-code?200091%_
                                (let ((__tmp201079
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code200088%_))))
                                      (__tmp201078
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp201077
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp201079
                                   gx#current-expander-context
                                   _%ctx200087%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts200093%_
                                   gxc#current-compile-marks
                                   __tmp201078
                                   gxc#current-compile-identifiers
                                   __tmp201077))
                                '#f))
                           (_%runtime-code200098%_
                            (if _%runtime-code?200091%_
                                (if (null? (unbox _%lifts200093%_))
                                    _%runtime-code200096%_
                                    (cons 'begin
                                          (let ((__tmp201081
                                                 (cons _%runtime-code200096%_
                                                       '()))
                                                (__tmp201080
                                                 (reverse (unbox _%lifts200093%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp201081
                                             __tmp201080))))
                                '#f))
                           (_%runtime-code200100%_
                            (if _%runtime-code?200091%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp200079%_
                                                         _%ctx200087%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code200098%_ '())))
                                '#f))
                           (_%loader-code200103%_
                            (let ((__tmp201082
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code200088%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp201082
                               gx#current-expander-context
                               _%ctx200087%_)))
                           (_%loader-code200105%_
                            (cons 'begin
                                  (cons _%loader-code200103%_
                                        (cons (if _%runtime-code?200091%_
                                                  (cons 'load-module
                                                        (cons _%rtm200089%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0200107%_
                            (gxc#compile-output-file _%ctx200087%_ '0 '".scm"))
                           (_%scmrt200109%_
                            (gxc#compile-output-file
                             _%ctx200087%_
                             '#f
                             '".scm"))
                           (_%scms200111%_
                            (gxc#compile-static-output-file _%ctx200087%_)))
                      (if _%runtime-code?200091%_
                          (gxc#compile-scm-file__0
                           _%scm0200107%_
                           _%runtime-code200100%_)
                          '#!void)
                      (let ((__tmp201083
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt200109%_
                                _%loader-code200105%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp201083
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms200111%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms200111%_))
                          '#!void)
                      (if _%runtime-code?200091%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0200107%_ _%scms200111%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms200111%_ void)))))))
          (let* ((_%all-modules200082%_
                  (cons _%ctx200076%_ (gxc#lift-nested-modules _%ctx200076%_)))
                 (__tmp201084
                  (lambda (_%ctx200084%_)
                    (let ((__tmp201085
                           (lambda () (_%compile1200078%_ _%ctx200084%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp201085
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp201084 _%all-modules200082%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx199976%_)
        (letrec ((_%compile-ssi199978%_
                  (lambda (_%code200044%_)
                    (let* ((_%path200046%_
                            (gxc#compile-output-file
                             _%ctx199976%_
                             '#f
                             '".ssi"))
                           (_%prelude200058%_
                            (let* ((_%super200048%_
                                    (##structure-ref
                                     _%ctx199976%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e200050%_
                                    (##structure-ref
                                     _%super200048%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e200050%_
                                  ((lambda (_%g200052200054%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g200052200054%_)))
                                   _%$e200050%_)
                                  ':<root>)))
                           (_%ns200060%_
                            (##structure-ref
                             _%ctx199976%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr200062%_
                            (symbol->string
                             (##structure-ref
                              _%ctx199976%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg200070%_
                            (let ((_%$e200064%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr200062%_ '#\/))))
                              (if _%$e200064%_
                                  ((lambda (_%x200067%_)
                                     (let ((__tmp201086
                                            (substring
                                             _%idstr200062%_
                                             '0
                                             _%x200067%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp201086)))
                                   _%$e200064%_)
                                  '#f)))
                           (_%rt200072%_
                            (let ((__tmp201087
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp201087 _%ctx199976%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path200046%_))
                      (gxc#with-output-to-scheme-file
                       _%path200046%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude200058%_))
                         (if _%pkg200070%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg200070%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns200060%_))
                         (newline)
                         (pretty-print _%code200044%_)
                         (if _%rt200072%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt200072%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi199979%_
                  (lambda (_%part199984%_)
                    (let* ((_%part199985199998%_ _%part199984%_)
                           (_%E199987200002%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part199985199998%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K199988200013%_
                            (lambda (_%code200005%_
                                     _%n200006%_
                                     _%phi200007%_
                                     _%phi-ctx200008%_)
                              (let ((_%code200011%_
                                     (let ((__tmp201088
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code200005%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201088
                                        gx#current-expander-context
                                        _%phi-ctx200008%_
                                        gx#current-expander-phi
                                        _%phi200007%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx199976%_
                                  _%n200006%_
                                  '".scm")
                                 _%code200011%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part199985199998%_))
                          (let ((_%hd199989200016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part199985199998%_)))
                                (_%tl199990200018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part199985199998%_))))
                            (let ((_%phi-ctx200021%_ _%hd199989200016%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199990200018%_))
                                  (let ((_%hd199991200023%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199990200018%_)))
                                        (_%tl199992200025%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199990200018%_))))
                                    (let ((_%phi200028%_ _%hd199991200023%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl199992200025%_))
                                          (let ((_%hd199993200030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl199992200025%_)))
                                                (_%tl199994200032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199992200025%_))))
                                            (let ((_%n200035%_
                                                   _%hd199993200030%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl199994200032%_))
                                                  (let ((_%hd199995200037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl199994200032%_)))
                                                        (_%tl199996200039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl199994200032%_))))
                                                    (let ((_%code200042%_
                                                           _%hd199995200037%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl199996200039%_))
                                                          (_%K199988200013%_
                                                           _%code200042%_
                                                           _%n200035%_
                                                           _%phi200028%_
                                                           _%phi-ctx200021%_)
                                                          (_%E199987200002%_))))
                                                  (_%E199987200002%_))))
                                          (_%E199987200002%_))))
                                  (_%E199987200002%_))))
                          (_%E199987200002%_))))))
          (let ((_g201089_ (gxc#generate-meta-code _%ctx199976%_)))
            (begin
              (let ((_g201090_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g201089_)
                           (##vector-length _g201089_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g201090_ 2)))
                    (error "Context expects 2 values" _g201090_)))
              (let ((_%ssi-code199981%_
                     (let () (declare (not safe)) (##vector-ref _g201089_ 0)))
                    (_%phi-code199982%_
                     (let () (declare (not safe)) (##vector-ref _g201089_ 1))))
                (begin
                  (_%compile-ssi199978%_ _%ssi-code199981%_)
                  (for-each _%compile-phi199979%_ _%phi-code199982%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx199958%_)
        (let* ((_%path199960%_
                (gxc#compile-output-file _%ctx199958%_ '#f '".ssxi.ss"))
               (_%code199962%_
                (let ((__tmp201091
                       (##structure-ref
                        _%ctx199958%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp201091)))
               (_%idstr199964%_
                (symbol->string
                 (##structure-ref
                  _%ctx199958%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg199972%_
                (let ((_%$e199966%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr199964%_ '#\/))))
                  (if _%$e199966%_
                      ((lambda (_%x199969%_)
                         (let ((__tmp201092
                                (substring _%idstr199964%_ '0 _%x199969%_)))
                           (declare (not safe))
                           (##string->symbol __tmp201092)))
                       _%$e199966%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path199960%_))
          (gxc#with-output-to-scheme-file
           _%path199960%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg199972%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg199972%_))
                 '#!void)
             (newline)
             (pretty-print _%code199962%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx199951%_)
        (let* ((_%state199953%_
                (let ((__obj200993
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj200993 _%ctx199951%_))
                  __obj200993))
               (_%ssi-code199955%_
                (let ((__tmp201093
                       (##structure-ref
                        _%ctx199951%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state199953%_
                   __tmp201093))))
          (values _%ssi-code199955%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state199953%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx199944%_)
        (let ((_%lifts199946%_ (box '())))
          (let ((__tmp201096
                 (lambda ()
                   (let ((_%code199949%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx199944%_))))
                     (if (null? (unbox _%lifts199946%_))
                         _%code199949%_
                         (cons 'begin
                               (let ((__tmp201098 (cons _%code199949%_ '()))
                                     (__tmp201097
                                      (reverse (unbox _%lifts199946%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp201098 __tmp201097)))))))
                (__tmp201095
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp201094
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201096
             gxc#current-compile-lift
             _%lifts199946%_
             gxc#current-compile-marks
             __tmp201095
             gxc#current-compile-identifiers
             __tmp201094)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx199940%_)
        (let ((_%modules199942%_ (box '())))
          (let ((__tmp201099
                 (##structure-ref _%ctx199940%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules199942%_ __tmp201099))
          (reverse (unbox _%modules199942%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path199920%_ _%code199921%_ _%phi?199922%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path199920%_))
        (gxc#with-output-to-scheme-file
         _%path199920%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp201100
                                           (if _%phi?199922%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp201100)))))))
           (pretty-print _%code199921%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it199926%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path199920%_ _%phi?199922%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp201101
                         (cons 'compile-file (cons _%path199920%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it199926%_ __tmp201101))
                  (_%compile-it199926%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path199931%_ _%code199932%_)
        (let ((_%phi?199934%_ '#f))
          (gxc#compile-scm-file__%
           _%path199931%_
           _%code199932%_
           _%phi?199934%_))))
    (define gxc#compile-scm-file
      (lambda _g201103_
        (let ((_g201102_ (let () (declare (not safe)) (##length _g201103_))))
          (cond ((let () (declare (not safe)) (##fx= _g201102_ 2))
                 (apply gxc#compile-scm-file__0 _g201103_))
                ((let () (declare (not safe)) (##fx= _g201102_ 3))
                 (apply gxc#compile-scm-file__% _g201103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g201103_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?199821%_)
        (let _%lp199823%_ ((_%rest199825%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199826%_ '()))
          (let* ((_%rest199827199847%_ _%rest199825%_)
                 (_%else199831199855%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts199826%_)))
                        (reverse _%opts199826%_)))))
            (let ((_%K199841199898%_
                   (lambda (_%rest199896%_)
                     (_%lp199823%_ _%rest199896%_ _%opts199826%_)))
                  (_%K199836199880%_
                   (lambda (_%rest199878%_)
                     (_%lp199823%_ _%rest199878%_ _%opts199826%_)))
                  (_%K199833199862%_
                   (lambda (_%rest199859%_ _%opt199860%_)
                     (_%lp199823%_
                      _%rest199859%_
                      (cons _%opt199860%_ _%opts199826%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest199827199847%_))
                  (let ((_%tl199843199903%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199827199847%_)))
                        (_%hd199842199901%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199827199847%_))))
                    (if (equal? _%hd199842199901%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199843199903%_))
                            (let* ((_%tl199845199906%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199843199903%_)))
                                   (_%rest199909%_ _%tl199845199906%_))
                              (_%K199841199898%_ _%rest199909%_))
                            (let ((_%opt199870%_ _%hd199842199901%_)
                                  (_%rest199872%_ _%tl199843199903%_))
                              (_%K199833199862%_
                               _%rest199872%_
                               _%opt199870%_)))
                        (if (equal? _%hd199842199901%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199843199903%_))
                                (let* ((_%tl199840199888%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl199843199903%_)))
                                       (_%rest199891%_ _%tl199840199888%_))
                                  (_%K199836199880%_ _%rest199891%_))
                                (let ((_%opt199870%_ _%hd199842199901%_)
                                      (_%rest199872%_ _%tl199843199903%_))
                                  (_%K199833199862%_
                                   _%rest199872%_
                                   _%opt199870%_)))
                            (let ((_%opt199870%_ _%hd199842199901%_)
                                  (_%rest199872%_ _%tl199843199903%_))
                              (_%K199833199862%_
                               _%rest199872%_
                               _%opt199870%_)))))
                  (_%else199831199855%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?199915%_ '#f)) (gxc#gsc-link-options__% _%phi?199915%_))))
    (define gxc#gsc-link-options
      (lambda _g201105_
        (let ((_g201104_ (let () (declare (not safe)) (##length _g201105_))))
          (cond ((let () (declare (not safe)) (##fx= _g201104_ 0))
                 (apply gxc#gsc-link-options__0 _g201105_))
                ((let () (declare (not safe)) (##fx= _g201104_ 1))
                 (apply gxc#gsc-link-options__% _g201105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g201105_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords199670%_ _%static?199666199671%_ _%phi?199673%_)
        (let ((_%static?199675%_
               (if (eq? _%static?199666199671%_ absent-value)
                   '#f
                   _%static?199666199671%_)))
          (if _%phi?199673%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp199677%_ ((_%rest199679%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199680%_ '()))
                (let* ((_%rest199681199707%_ _%rest199679%_)
                       (_%else199686199715%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts199680%_)))
                              (reverse! _%opts199680%_)))))
                  (let ((_%K199701199778%_
                         (lambda (_%rest199775%_ _%opt199776%_)
                           (if _%static?199675%_
                               (_%lp199677%_
                                _%rest199775%_
                                (cons _%opt199776%_
                                      (cons '"-cc-options" _%opts199680%_)))
                               (_%lp199677%_ _%rest199775%_ _%opts199680%_))))
                        (_%K199696199755%_
                         (lambda (_%rest199752%_ _%opt199753%_)
                           (_%lp199677%_
                            _%rest199752%_
                            (cons _%opt199753%_
                                  (cons '"-cc-options" _%opts199680%_)))))
                        (_%K199691199735%_
                         (lambda (_%rest199733%_)
                           (_%lp199677%_ _%rest199733%_ _%opts199680%_)))
                        (_%K199688199721%_
                         (lambda (_%rest199719%_)
                           (_%lp199677%_ _%rest199719%_ _%opts199680%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199681199707%_))
                        (let ((_%tl199703199783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199681199707%_)))
                              (_%hd199702199781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199681199707%_))))
                          (if (equal? _%hd199702199781%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199703199783%_))
                                  (let ((_%tl199705199788%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199703199783%_)))
                                        (_%hd199704199786%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199703199783%_))))
                                    (if (equal? _%hd199704199786%_ '"-Bstatic")
                                        (let ((_%opt199791%_
                                               _%hd199704199786%_)
                                              (_%rest199793%_
                                               _%tl199705199788%_))
                                          (_%K199701199778%_
                                           _%rest199793%_
                                           _%opt199791%_))
                                        (let ((_%opt199768%_
                                               _%hd199704199786%_)
                                              (_%rest199770%_
                                               _%tl199705199788%_))
                                          (_%K199696199755%_
                                           _%rest199770%_
                                           _%opt199768%_))))
                                  (let ((_%rest199727%_ _%tl199703199783%_))
                                    (_%K199688199721%_ _%rest199727%_)))
                              (if (equal? _%hd199702199781%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199703199783%_))
                                      (let* ((_%tl199695199743%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199703199783%_)))
                                             (_%rest199746%_
                                              _%tl199695199743%_))
                                        (_%K199691199735%_ _%rest199746%_))
                                      (let ((_%rest199727%_
                                             _%tl199703199783%_))
                                        (_%K199688199721%_ _%rest199727%_)))
                                  (let ((_%rest199727%_ _%tl199703199783%_))
                                    (_%K199688199721%_ _%rest199727%_)))))
                        (_%else199686199715%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords199798%_ _%static?199666199799%_)
        (let ((_%phi?199801%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords199798%_
           _%static?199666199799%_
           _%phi?199801%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g201107_
        (let ((_g201106_ (let () (declare (not safe)) (##length _g201107_))))
          (cond ((let () (declare (not safe)) (##fx= _g201106_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g201107_))
                ((let () (declare (not safe)) (##fx= _g201106_ 3))
                 (apply gxc#gsc-cc-options__%__% _g201107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g201107_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords199810%_ . _%args199811%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords199810%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199810%_
                  'static:
                  absent-value))
               _%args199811%_)))
    (define gxc#gsc-cc-options
      (lambda _%args199667199817%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args199667199817%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords199515%_ _%static?199511199516%_ _%phi?199518%_)
        (let ((_%static?199520%_
               (if (eq? _%static?199511199516%_ absent-value)
                   '#f
                   _%static?199511199516%_)))
          (if _%phi?199518%_
              '()
              (let _%lp199522%_ ((_%rest199524%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199525%_ '()))
                (let* ((_%rest199526199552%_ _%rest199524%_)
                       (_%else199531199560%_
                        (lambda () (reverse! _%opts199525%_))))
                  (let ((_%K199546199623%_
                         (lambda (_%rest199620%_ _%opt199621%_)
                           (if _%static?199520%_
                               (_%lp199522%_
                                _%rest199620%_
                                (cons _%opt199621%_
                                      (cons '"-ld-options" _%opts199525%_)))
                               (_%lp199522%_ _%rest199620%_ _%opts199525%_))))
                        (_%K199541199600%_
                         (lambda (_%rest199597%_ _%opt199598%_)
                           (_%lp199522%_
                            _%rest199597%_
                            (cons _%opt199598%_
                                  (cons '"-ld-options" _%opts199525%_)))))
                        (_%K199536199580%_
                         (lambda (_%rest199578%_)
                           (_%lp199522%_ _%rest199578%_ _%opts199525%_)))
                        (_%K199533199566%_
                         (lambda (_%rest199564%_)
                           (_%lp199522%_ _%rest199564%_ _%opts199525%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199526199552%_))
                        (let ((_%tl199548199628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199526199552%_)))
                              (_%hd199547199626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199526199552%_))))
                          (if (equal? _%hd199547199626%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199548199628%_))
                                  (let ((_%tl199550199633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199548199628%_)))
                                        (_%hd199549199631%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199548199628%_))))
                                    (if (equal? _%hd199549199631%_ '"-static")
                                        (let ((_%opt199636%_
                                               _%hd199549199631%_)
                                              (_%rest199638%_
                                               _%tl199550199633%_))
                                          (_%K199546199623%_
                                           _%rest199638%_
                                           _%opt199636%_))
                                        (let ((_%opt199613%_
                                               _%hd199549199631%_)
                                              (_%rest199615%_
                                               _%tl199550199633%_))
                                          (_%K199541199600%_
                                           _%rest199615%_
                                           _%opt199613%_))))
                                  (let ((_%rest199572%_ _%tl199548199628%_))
                                    (_%K199533199566%_ _%rest199572%_)))
                              (if (equal? _%hd199547199626%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199548199628%_))
                                      (let* ((_%tl199540199588%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199548199628%_)))
                                             (_%rest199591%_
                                              _%tl199540199588%_))
                                        (_%K199536199580%_ _%rest199591%_))
                                      (let ((_%rest199572%_
                                             _%tl199548199628%_))
                                        (_%K199533199566%_ _%rest199572%_)))
                                  (let ((_%rest199572%_ _%tl199548199628%_))
                                    (_%K199533199566%_ _%rest199572%_)))))
                        (_%else199531199560%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords199643%_ _%static?199511199644%_)
        (let ((_%phi?199646%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords199643%_
           _%static?199511199644%_
           _%phi?199646%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g201109_
        (let ((_g201108_ (let () (declare (not safe)) (##length _g201109_))))
          (cond ((let () (declare (not safe)) (##fx= _g201108_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g201109_))
                ((let () (declare (not safe)) (##fx= _g201108_ 3))
                 (apply gxc#gsc-ld-options__%__% _g201109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g201109_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords199655%_ . _%args199656%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords199655%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199655%_
                  'static:
                  absent-value))
               _%args199656%_)))
    (define gxc#gsc-ld-options
      (lambda _%args199512199662%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args199512199662%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir199506%_)
        (let ((_%user-staticdir199508%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir199506%_
                       '" -I "
                       _%user-staticdir199508%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp199418%_ ((_%rest199420%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199421%_ '()))
          (let* ((_%rest199422199442%_ _%rest199420%_)
                 (_%else199426199450%_ (lambda () _%opts199421%_)))
            (let ((_%K199436199493%_
                   (lambda (_%rest199491%_)
                     (_%lp199418%_ _%rest199491%_ _%opts199421%_)))
                  (_%K199431199471%_
                   (lambda (_%rest199468%_ _%opt199469%_)
                     (_%lp199418%_
                      _%rest199468%_
                      (let ((__tmp201110
                             (let ((__tmp201111
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt199469%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp201111))))
                        (declare (not safe))
                        (##append _%opts199421%_ __tmp201110)))))
                  (_%K199428199456%_
                   (lambda (_%rest199454%_)
                     (_%lp199418%_ _%rest199454%_ _%opts199421%_))))
              (if (let () (declare (not safe)) (##pair? _%rest199422199442%_))
                  (let ((_%tl199438199498%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199422199442%_)))
                        (_%hd199437199496%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199422199442%_))))
                    (if (equal? _%hd199437199496%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199438199498%_))
                            (let* ((_%tl199440199501%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199438199498%_)))
                                   (_%rest199504%_ _%tl199440199501%_))
                              (_%K199436199493%_ _%rest199504%_))
                            (let ((_%rest199462%_ _%tl199438199498%_))
                              (_%K199428199456%_ _%rest199462%_)))
                        (if (equal? _%hd199437199496%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199438199498%_))
                                (let ((_%tl199435199481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199438199498%_)))
                                      (_%hd199434199479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199438199498%_))))
                                  (let ((_%opt199484%_ _%hd199434199479%_)
                                        (_%rest199486%_ _%tl199435199481%_))
                                    (_%K199431199471%_
                                     _%rest199486%_
                                     _%opt199484%_)))
                                (let ((_%rest199462%_ _%tl199438199498%_))
                                  (_%K199428199456%_ _%rest199462%_)))
                            (let ((_%rest199462%_ _%tl199438199498%_))
                              (_%K199428199456%_ _%rest199462%_)))))
                  (_%else199426199450%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str199415%_)
        (not (let () (declare (not safe)) (string-empty? _%str199415%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path199408%_ _%phi?199409%_)
        (let ((_%gsc-link-opts199411%_
               (gxc#gsc-link-options__% _%phi?199409%_))
              (_%gsc-cc-opts199412%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?199409%_))
              (_%gsc-ld-opts199413%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?199409%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp201112
                  (let ((__tmp201113
                         (let ((__tmp201114 (cons _%path199408%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp201114
                            _%gsc-link-opts199411%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201113 _%gsc-ld-opts199413%_))))
             (declare (not safe))
             (__foldr1 cons __tmp201112 _%gsc-cc-opts199412%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx199374%_ _%n199375%_ _%ext199376%_)
        (letrec ((_%module-relative-path199378%_
                  (lambda (_%ctx199406%_)
                    (path-strip-directory
                     (let ((__tmp201115
                            (##structure-ref
                             _%ctx199406%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp201115)))))
                 (_%module-source-directory199379%_
                  (lambda (_%ctx199402%_)
                    (path-directory
                     (let ((_%mpath199404%_
                            (##structure-ref
                             _%ctx199402%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath199404%_)
                           _%mpath199404%_
                           (last _%mpath199404%_))))))
                 (_%section-string199380%_
                  (lambda (_%n199396%_)
                    (if (number? _%n199396%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n199396%_))
                        (if (symbol? _%n199396%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n199396%_))
                            (if (string? _%n199396%_)
                                _%n199396%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n199396%_)))))))
                 (_%file-name199381%_
                  (lambda (_%path199394%_)
                    (if _%n199375%_
                        (string-append
                         _%path199394%_
                         '"~"
                         (_%section-string199380%_ _%n199375%_)
                         _%ext199376%_)
                        (string-append _%path199394%_ _%ext199376%_))))
                 (_%file-path199382%_
                  (lambda ()
                    (let ((_%$e199388%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e199388%_
                          ((lambda (_%outdir199391%_)
                             (path-expand
                              (_%file-name199381%_
                               (let ((__tmp201116
                                      (##structure-ref
                                       _%ctx199374%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp201116)))
                              _%outdir199391%_))
                           _%$e199388%_)
                          (path-expand
                           (_%file-name199381%_
                            (_%module-relative-path199378%_ _%ctx199374%_))
                           (_%module-source-directory199379%_
                            _%ctx199374%_)))))))
          (let ((_%path199384%_ (_%file-path199382%_)))
            (let ((__tmp201117
                   (lambda ()
                     (let ((__tmp201118 (path-directory _%path199384%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp201118)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp201117))
            _%path199384%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx199355%_)
        (letrec ((_%file-name199357%_
                  (lambda (_%id199372%_)
                    (let ((__tmp201119 (gxc#static-module-name _%id199372%_)))
                      (declare (not safe))
                      (##string-append __tmp201119 '".scm"))))
                 (_%file-path199358%_
                  (lambda ()
                    (let* ((_%file199364%_
                            (_%file-name199357%_
                             (##structure-ref
                              _%ctx199355%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e199366%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e199366%_
                          ((lambda (_%outdir199369%_)
                             (path-expand
                              _%file199364%_
                              (path-expand '"static" _%outdir199369%_)))
                           _%$e199366%_)
                          (path-expand _%file199364%_ '"static"))))))
          (let ((_%path199360%_ (_%file-path199358%_)))
            (let ((__tmp201120
                   (lambda ()
                     (let ((__tmp201121 (path-directory _%path199360%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp201121)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp201120))
            _%path199360%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx199348%_ _%opts199349%_)
        (let ((_%$e199351%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts199349%_))))
          (if _%$e199351%_
              _%$e199351%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx199348%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr199338%_)
        (if (string? _%idstr199338%_)
            (let* ((_%str199341%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr199338%_)))
                   (_%strs199343%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str199341%_ '#\/))))
              (declare (not safe))
              (string-join _%strs199343%_ '"__"))
            (if (symbol? _%idstr199338%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr199338%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr199338%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp201122
               (let ((__tmp201123 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp201123 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp201122))))
    (define gxc#invoke__%
      (lambda (_%@@keywords199302%_
               _%stdout-redirection199298199303%_
               _%stderr-redirection199299199305%_
               _%program199307%_
               _%args199308%_)
        (let* ((_%stdout-redirection199310%_
                (if (eq? _%stdout-redirection199298199303%_ absent-value)
                    '#f
                    _%stdout-redirection199298199303%_))
               (_%stderr-redirection199312%_
                (if (eq? _%stderr-redirection199299199305%_ absent-value)
                    '#f
                    _%stderr-redirection199299199305%_)))
          (let ((__tmp201124 (cons _%program199307%_ _%args199308%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp201124))
          (let* ((_%proc199314%_
                  (open-process
                   (cons 'path:
                         (cons _%program199307%_
                               (cons 'arguments:
                                     (cons _%args199308%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection199310%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection199312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output199319%_
                  (if (or _%stdout-redirection199310%_
                          _%stderr-redirection199312%_)
                      (read-line _%proc199314%_ '#f)
                      '#f))
                 (_%status199322%_ (process-status _%proc199314%_)))
            (let () (declare (not safe)) (##close-port _%proc199314%_))
            (if (zero? _%status199322%_)
                '#!void
                (begin
                  (display _%output199319%_)
                  (let ((__tmp201125 (cons _%program199307%_ _%args199308%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp201125
                     _%status199322%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords199327%_ . _%args199328%_)
        (apply gxc#invoke__%
               _%@@keywords199327%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199327%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199327%_
                  'stderr-redirection:
                  absent-value))
               _%args199328%_)))
    (define gxc#invoke
      (lambda _%args199300199334%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args199300199334%_)))))
