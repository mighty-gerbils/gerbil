(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712991659)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp200230 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp200230))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp200231 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp200231))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path200087%_ _%fun200088%_)
        (with-output-to-file
         (cons 'path: (cons _%path200087%_ gxc#scheme-file-settings))
         _%fun200088%_)))
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
      (lambda (_%gerbil-libdir200082%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir200082%_)))
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
      (lambda (_%dir200080%_) (delete-file-or-directory _%dir200080%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath200053%_ _%opts200054%_)
        (if (string? _%srcpath200053%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200053%_)))
        (let ((_%outdir200056%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200054%_)))
              (_%invoke-gsc?200057%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200054%_)))
              (_%gsc-options200058%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200054%_)))
              (_%keep-scm?200059%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200054%_)))
              (_%verbosity200060%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200054%_)))
              (_%optimize200061%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts200054%_)))
              (_%debug200062%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200054%_)))
              (_%gen-ssxi200063%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts200054%_)))
              (_%parallel?200064%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200054%_))))
          (if _%outdir200056%_
              (let ((__tmp200232
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200056%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200232))
              '#!void)
          (if _%optimize200061%_
              (let ((__tmp200233
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200233))
              '#!void)
          (let ((__tmp200236
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath200053%_))
                   (gxc#compile-top-module
                    (let ((__tmp200237
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200053%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200237)))))
                (__tmp200235 (gxc#compile-timestamp))
                (__tmp200234
                 (cons 'compile-module (cons _%srcpath200053%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200236
             gxc#current-compile-output-dir
             _%outdir200056%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200057%_
             gxc#current-compile-gsc-options
             _%gsc-options200058%_
             gxc#current-compile-keep-scm
             _%keep-scm?200059%_
             gxc#current-compile-verbose
             _%verbosity200060%_
             gxc#current-compile-optimize
             _%optimize200061%_
             gxc#current-compile-debug
             _%debug200062%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi200063%_
             gxc#current-compile-timestamp
             __tmp200235
             gxc#current-compile-context
             __tmp200234
             gxc#current-compile-parallel
             _%parallel?200064%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath200073%_)
        (let ((_%opts200075%_ '()))
          (gxc#compile-module__% _%srcpath200073%_ _%opts200075%_))))
    (define gxc#compile-module
      (lambda _g200239_
        (let ((_g200238_ (let () (declare (not safe)) (##length _g200239_))))
          (cond ((let () (declare (not safe)) (##fx= _g200238_ 1))
                 (apply gxc#compile-module__0 _g200239_))
                ((let () (declare (not safe)) (##fx= _g200238_ 2))
                 (apply gxc#compile-module__% _g200239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g200239_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath200028%_ _%opts200029%_)
        (if (string? _%srcpath200028%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200028%_)))
        (let ((_%outdir200031%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200029%_)))
              (_%invoke-gsc?200032%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200029%_)))
              (_%gsc-options200033%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200029%_)))
              (_%keep-scm?200034%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200029%_)))
              (_%verbosity200035%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200029%_)))
              (_%debug200036%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200029%_)))
              (_%parallel?200037%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200029%_))))
          (if _%outdir200031%_
              (let ((__tmp200240
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200031%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200240))
              '#!void)
          (let ((__tmp200243
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath200028%_))
                   (gxc#compile-executable-module
                    (let ((__tmp200244
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200028%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200244))
                    _%opts200029%_)))
                (__tmp200242 (gxc#compile-timestamp))
                (__tmp200241 (cons 'compile-exe (cons _%srcpath200028%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200243
             gxc#current-compile-output-dir
             _%outdir200031%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200032%_
             gxc#current-compile-gsc-options
             _%gsc-options200033%_
             gxc#current-compile-keep-scm
             _%keep-scm?200034%_
             gxc#current-compile-verbose
             _%verbosity200035%_
             gxc#current-compile-debug
             _%debug200036%_
             gxc#current-compile-timestamp
             __tmp200242
             gxc#current-compile-context
             __tmp200241
             gxc#current-compile-parallel
             _%parallel?200037%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath200045%_)
        (let ((_%opts200047%_ '()))
          (gxc#compile-exe__% _%srcpath200045%_ _%opts200047%_))))
    (define gxc#compile-exe
      (lambda _g200246_
        (let ((_g200245_ (let () (declare (not safe)) (##length _g200246_))))
          (cond ((let () (declare (not safe)) (##fx= _g200245_ 1))
                 (apply gxc#compile-exe__0 _g200246_))
                ((let () (declare (not safe)) (##fx= _g200245_ 2))
                 (apply gxc#compile-exe__% _g200246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g200246_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx200024%_ _%opts200025%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts200025%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx200024%_
             _%opts200025%_)
            (gxc#compile-executable-module/separate
             _%ctx200024%_
             _%opts200025%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx199814%_ _%opts199815%_)
        (letrec ((_%generate-stub199817%_
                  (lambda (_%builtin-modules200020%_)
                    (let ((_%mod-main200022%_
                           (gxc#find-runtime-symbol _%ctx199814%_ 'main)))
                      (let ((__tmp200247
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules200020%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp200247))
                      (let ((__tmp200248
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main200022%_
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
                        (##write __tmp200248))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts199818%_
                  (lambda (_%gerbil-libdir200018%_)
                    (let ((__tmp200249
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir200018%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp200249 read))))
                 (_%replace-extension199819%_
                  (lambda (_%path200015%_ _%ext200016%_)
                    (string-append
                     (path-strip-extension _%path200015%_)
                     _%ext200016%_)))
                 (_%userlib-module?199820%_
                  (lambda (_%ctx200013%_)
                    (if (_%exclude-module?199822%_ _%ctx200013%_)
                        '#f
                        (not (_%libgerbil-module?199821%_ _%ctx200013%_)))))
                 (_%libgerbil-module?199821%_
                  (lambda (_%ctx200006%_)
                    (let ((_%id-str200008%_
                           (symbol->string
                            (##structure-ref
                             _%ctx200006%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?199822%_ _%id-str200008%_)
                          '#f
                          (let ((_%$e200010%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str200008%_))))
                            (if _%$e200010%_
                                _%$e200010%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str200008%_))))))))
                 (_%exclude-module?199822%_
                  (lambda (_%ctx-or-str200002%_)
                    (let ((_%str200004%_
                           (if (string? _%ctx-or-str200002%_)
                               _%ctx-or-str200002%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str200002%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str200004%_))))
                 (_%not-file-empty?199823%_
                  (lambda (_%path200000%_)
                    (not (gxc#file-empty? _%path200000%_))))
                 (_%fold-libgerbil-runtime-scm199824%_
                  (lambda (_%gerbil-staticdir199993%_ _%libgerbil-scm199994%_)
                    (let ((_%gerbil-runtime-scm199998%_
                           (let ((__tmp200250
                                  (lambda (_%rtm199996%_)
                                    (path-expand
                                     (let ((__tmp200251
                                            (let ((__tmp200252
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm199996%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp200252
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp200251 '".scm"))
                                     _%gerbil-staticdir199993%_))))
                             (declare (not safe))
                             (##map __tmp200250 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates199825%_
                       (append _%gerbil-runtime-scm199998%_
                               _%libgerbil-scm199994%_)))))
                 (_%remove-duplicates199825%_
                  (lambda (_%strlst199953%_)
                    (let _%loop199955%_ ((_%rest199957%_ _%strlst199953%_)
                                         (_%result199958%_ '()))
                      (let* ((_%rest199959199967%_ _%rest199957%_)
                             (_%else199961199975%_
                              (lambda () (reverse! _%result199958%_)))
                             (_%K199963199981%_
                              (lambda (_%rest199978%_ _%path199979%_)
                                (if (member _%path199979%_ _%result199958%_)
                                    (_%loop199955%_
                                     _%rest199978%_
                                     _%result199958%_)
                                    (_%loop199955%_
                                     _%rest199978%_
                                     (cons _%path199979%_
                                           _%result199958%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest199959199967%_))
                            (let ((_%hd199964199984%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest199959199967%_)))
                                  (_%tl199965199986%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest199959199967%_))))
                              (let* ((_%path199989%_ _%hd199964199984%_)
                                     (_%rest199991%_ _%tl199965199986%_))
                                (_%K199963199981%_
                                 _%rest199991%_
                                 _%path199989%_)))
                            (_%else199961199975%_))))))
                 (_%compile-stub199826%_
                  (lambda (_%output-scm199833%_ _%output-bin199834%_)
                    (let* ((_%gerbil-home199836%_
                            (let ((__tmp200253
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200253)))
                           (_%gerbil-libdir199838%_
                            (path-expand '"lib" _%gerbil-home199836%_))
                           (_%gerbil-staticdir199840%_
                            (path-expand '"static" _%gerbil-libdir199838%_))
                           (_%deps199842%_
                            (gxc#find-runtime-module-deps _%ctx199814%_))
                           (_%libgerbil-deps199844%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?199821%_
                               _%deps199842%_)))
                           (_%libgerbil-scm199846%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps199844%_)))
                           (_%libgerbil-scm199848%_
                            (_%fold-libgerbil-runtime-scm199824%_
                             _%gerbil-staticdir199840%_
                             _%libgerbil-scm199846%_))
                           (_%libgerbil-c199854%_
                            (map (lambda (_%g199849199851%_)
                                   (_%replace-extension199819%_
                                    _%g199849199851%_
                                    '".c"))
                                 _%libgerbil-scm199848%_))
                           (_%libgerbil-o199860%_
                            (map (lambda (_%g199855199857%_)
                                   (_%replace-extension199819%_
                                    _%g199855199857%_
                                    '".o"))
                                 _%libgerbil-scm199848%_))
                           (_%src-deps199862%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?199820%_
                               _%deps199842%_)))
                           (_%src-deps-scm199864%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps199862%_)))
                           (_%src-deps-scm199866%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?199823%_
                               _%src-deps-scm199864%_)))
                           (_%src-deps-scm199868%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm199866%_)))
                           (_%src-deps-c199874%_
                            (let ((__tmp200254
                                   (lambda (_%g199869199871%_)
                                     (_%replace-extension199819%_
                                      _%g199869199871%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp200254 _%src-deps-scm199868%_)))
                           (_%src-deps-o199880%_
                            (let ((__tmp200255
                                   (lambda (_%g199875199877%_)
                                     (_%replace-extension199819%_
                                      _%g199875199877%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp200255 _%src-deps-scm199868%_)))
                           (_%src-bin-scm199882%_
                            (gxc#find-static-module-file _%ctx199814%_))
                           (_%src-bin-scm199884%_
                            (path-expand _%src-bin-scm199882%_))
                           (_%src-bin-c199886%_
                            (_%replace-extension199819%_
                             _%src-bin-scm199884%_
                             '".c"))
                           (_%src-bin-o199888%_
                            (_%replace-extension199819%_
                             _%src-bin-scm199884%_
                             '".o"))
                           (_%output-bin199890%_
                            (path-expand _%output-bin199834%_))
                           (_%output-scm199892%_
                            (path-expand _%output-scm199833%_))
                           (_%output-c199894%_
                            (_%replace-extension199819%_
                             _%output-scm199892%_
                             '".c"))
                           (_%output-o199896%_
                            (_%replace-extension199819%_
                             _%output-scm199892%_
                             '".o"))
                           (_%output_-c199898%_
                            (_%replace-extension199819%_
                             _%output-scm199892%_
                             '"_.c"))
                           (_%output_-o199900%_
                            (_%replace-extension199819%_
                             _%output-scm199892%_
                             '"_.o"))
                           (_%gsc-link-opts199902%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts199904%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts199906%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir199840%_))
                           (_%output-ld-opts199908%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts199910%_
                            (_%get-libgerbil-ld-opts199818%_
                             _%gerbil-libdir199838%_))
                           (_%rpath199912%_
                            (gxc#gerbil-rpath _%gerbil-libdir199838%_))
                           (_%builtin-modules199916%_
                            (_%remove-duplicates199825%_
                             (let ((__tmp200256
                                    (let ((__tmp200258
                                           (lambda (_%mod199914%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod199914%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp200257
                                           (cons _%ctx199814%_
                                                 _%deps199842%_)))
                                      (declare (not safe))
                                      (##map __tmp200258 __tmp200257))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp200256)))))
                      (letrec ((_%compile-obj199919%_
                                (lambda (_%scm-path199926%_ _%c-path199927%_)
                                  (let* ((_%o-path199929%_
                                          (_%replace-extension199819%_
                                           _%c-path199927%_
                                           '".o"))
                                         (_%lock199931%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path199929%_
                                             '".lock")))
                                         (_%locked199933%_ '#f)
                                         (_%unlock199936%_
                                          (lambda ()
                                            (close-port _%locked199933%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock199931%_)))))
                                    (let _%retry199939%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock199931%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry199939%_))
                                          (begin
                                            (set! _%locked199933%_
                                                  (let ((__tmp200259
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock199931%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp200259)))
                                            (if _%locked199933%_
                                                '#!void
                                                (_%retry199939%_)))))
                                    (let ((__tmp200261
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path199929%_)))
                                                     (not _%scm-path199926%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path199926%_
                                                        _%o-path199929%_)))
                                                 (let ((_%gsc-cc-opts199950%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp200262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp200263 (cons _%c-path199927%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp200263
                            _%gsc-static-opts199906%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200262 _%gsc-cc-opts199950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp200260
                                           (lambda () (_%unlock199936%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp200261
                                       __tmp200260))))))
                        (let ((__tmp200264
                               (lambda ()
                                 (let ((__tmp200265
                                        (path-directory _%output-bin199890%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp200265)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp200264))
                        (gxc#with-output-to-scheme-file
                         _%output-scm199892%_
                         (lambda ()
                           (_%generate-stub199817%_
                            _%builtin-modules199916%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it199924%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp200266
                                                   (let ((__tmp200267
                                                          (let ((__tmp200268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm199884%_
                               (cons _%output-scm199892%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200268 _%src-deps-scm199868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp200267
                                                      _%libgerbil-c199854%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp200266
                                               _%gsc-link-opts199902%_))))
                                     (for-each
                                      _%compile-obj199919%_
                                      (let ((__tmp200269
                                             (cons _%src-bin-scm199884%_
                                                   (cons _%output-scm199892%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200269
                                         _%src-deps-scm199868%_))
                                      (let ((__tmp200270
                                             (cons _%src-bin-c199886%_
                                                   (cons _%output-c199894%_
                                                         (cons _%output_-c199898%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200270
                                         _%src-deps-c199874%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin199890%_
                                                        (let ((__tmp200271
                                                               (cons _%src-bin-o199888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o199896%_
                                   (cons _%output_-o199900%_
                                         (let ((__tmp200272
                                                (let ((__tmp200273
                                                       (let ((__tmp200275
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir199838%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts199910%_))))
                     (__tmp200274
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath199912%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp200275 __tmp200274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp200273
                                                   _%output-ld-opts199908%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp200272
                                            _%libgerbil-o199860%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp200271 _%src-deps-o199880%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp200276
                                            (cons _%output-c199894%_
                                                  (cons _%output_-c199898%_
                                                        (cons _%output-o199896%_
                                                              (cons _%output_-o199900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp200276)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it199924%_))
                                  (_%compile-it199924%_)))
                            '#!void))))))
          (let* ((_%output-bin199828%_
                  (gxc#compile-exe-output-file _%ctx199814%_ _%opts199815%_))
                 (_%output-scm199830%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin199828%_ '"__exe.scm"))))
            (_%compile-stub199826%_
             _%output-scm199830%_
             _%output-bin199828%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx199636%_ _%opts199637%_)
        (letrec ((_%reset-declare199639%_
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
                 (_%generate-stub199640%_
                  (lambda (_%deps199805%_)
                    (let ((_%mod-main199807%_
                           (gxc#find-runtime-symbol _%ctx199636%_ 'main))
                          (_%reset-decl199808%_ (_%reset-declare199639%_))
                          (_%user-decl199809%_ (_%user-declare199641%_)))
                      (for-each
                       (lambda (_%dep199811%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl199808%_))
                         (newline)
                         (if _%user-decl199809%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl199809%_))
                               (newline))
                             '#!void)
                         (let ((__tmp200277
                                (cons 'include (cons _%dep199811%_ '()))))
                           (declare (not safe))
                           (##write __tmp200277))
                         (newline))
                       _%deps199805%_)
                      (let ((__tmp200278
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main199807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp200278))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare199641%_
                  (lambda ()
                    (let* ((_%gsc-opts199710%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts199637%_)))
                           (_%gsc-prelude199712%_
                            (if _%gsc-opts199710%_
                                (member '"-prelude" _%gsc-opts199710%_)
                                '#f))
                           (_%gsc-prelude199714%_
                            (if _%gsc-prelude199712%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude199712%_)))
                                '#f)))
                      (let _%lp199717%_ ((_%rest199719%_
                                          (cons _%gsc-prelude199714%_ '()))
                                         (_%user-decls199720%_ '()))
                        (let* ((_%rest199721199729%_ _%rest199719%_)
                               (_%else199723199737%_
                                (lambda ()
                                  (if (null? _%user-decls199720%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls199720%_)))))
                               (_%K199725199793%_
                                (lambda (_%rest199740%_ _%expr199741%_)
                                  (let* ((_%expr199742199754%_ _%expr199741%_)
                                         (_%else199745199762%_
                                          (lambda ()
                                            (_%lp199717%_
                                             _%rest199740%_
                                             _%user-decls199720%_))))
                                    (let ((_%K199750199783%_
                                           (lambda (_%decls199781%_)
                                             (_%lp199717%_
                                              _%rest199740%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls199720%_
                                                 _%decls199781%_)))))
                                          (_%K199747199768%_
                                           (lambda (_%exprs199766%_)
                                             (_%lp199717%_
                                              (append _%exprs199766%_
                                                      _%rest199740%_)
                                              _%user-decls199720%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr199742199754%_))
                                          (let ((_%tl199752199788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr199742199754%_)))
                                                (_%hd199751199786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr199742199754%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd199751199786%_
                                                         'declare))
                                                (let ((_%decls199791%_
                                                       _%tl199752199788%_))
                                                  (_%K199750199783%_
                                                   _%decls199791%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd199751199786%_
                                                             'begin))
                                                    (let ((_%exprs199776%_
                                                           _%tl199752199788%_))
                                                      (_%K199747199768%_
                                                       _%exprs199776%_))
                                                    (_%else199745199762%_))))
                                          (_%else199745199762%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest199721199729%_))
                              (let ((_%hd199726199796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest199721199729%_)))
                                    (_%tl199727199798%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest199721199729%_))))
                                (let* ((_%expr199801%_ _%hd199726199796%_)
                                       (_%rest199803%_ _%tl199727199798%_))
                                  (_%K199725199793%_
                                   _%rest199803%_
                                   _%expr199801%_)))
                              (_%else199723199737%_)))))))
                 (_%compile-stub199642%_
                  (lambda (_%output-scm199649%_ _%output-bin199650%_)
                    (let* ((_%gerbil-home199652%_
                            (let ((__tmp200279
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200279)))
                           (_%gerbil-libdir199654%_
                            (path-expand '"lib" _%gerbil-home199652%_))
                           (_%runtime199656%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp199658%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home199652%_))
                           (_%include-gambit-sharp199660%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp199658%_
                               '"\")")))
                           (_%bin-scm199662%_
                            (gxc#find-static-module-file _%ctx199636%_))
                           (_%deps199664%_
                            (gxc#find-runtime-module-deps _%ctx199636%_))
                           (_%deps199666%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps199664%_)))
                           (_%deps199671%_
                            (let ((__tmp200280
                                   (lambda (_%$obj199668%_)
                                     (not (gxc#file-empty? _%$obj199668%_)))))
                              (declare (not safe))
                              (##filter __tmp200280 _%deps199666%_)))
                           (_%deps199675%_
                            (let ((__tmp200281
                                   (lambda (_%f199673%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f199673%_
                                             _%runtime199656%_))))))
                              (declare (not safe))
                              (##filter __tmp200281 _%deps199671%_)))
                           (_%output-base199677%_
                            (let ((__tmp200282
                                   (path-strip-extension
                                    _%output-scm199649%_)))
                              (declare (not safe))
                              (##string-append __tmp200282)))
                           (_%output-c199679%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base199677%_ '".c")))
                           (_%output-o199681%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base199677%_ '".o")))
                           (_%output-c_199683%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base199677%_ '"_.c")))
                           (_%output-o_199685%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base199677%_ '"_.o")))
                           (_%gsc-link-opts199687%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts199689%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts199691%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir199654%_)))
                           (_%output-ld-opts199693%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros199695%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp199660%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp199660%_
                                            '()))))
                           (_%gsc-link-opts199697%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts199687%_
                               _%gsc-gx-macros199695%_)))
                           (_%rpath199699%_
                            (gxc#gerbil-rpath _%gerbil-libdir199654%_))
                           (_%default-ld-options199701%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp200283
                             (lambda ()
                               (let ((__tmp200284
                                      (path-directory _%output-bin199650%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp200284)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp200283))
                      (gxc#with-output-to-scheme-file
                       _%output-scm199649%_
                       (lambda ()
                         (_%generate-stub199640%_
                          (let ((__tmp200285
                                 (let ((__tmp200286
                                        (cons _%bin-scm199662%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp200286
                                    _%deps199675%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp200285 _%runtime199656%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it199707%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_199683%_
                                                      (let ((__tmp200287
                                                             (cons _%output-scm199649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp200287 _%gsc-link-opts199697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp200288
                                                 (let ((__tmp200289
                                                        (cons _%output-c199679%_
                                                              (cons _%output-c_199683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp200289
                                                    _%gsc-static-opts199691%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp200288
                                             _%gsc-cc-opts199689%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin199650%_
                                                      (cons _%output-o199681%_
                                                            (cons _%output-o_199685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp200290
                                 (let ((__tmp200292
                                        (cons '"-L"
                                              (cons _%gerbil-libdir199654%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options199701%_))))
                                       (__tmp200291
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath199699%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp200292 __tmp200291))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp200290
                             _%output-ld-opts199693%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it199707%_))
                                (_%compile-it199707%_)))
                          '#!void)))))
          (let* ((_%output-bin199644%_
                  (gxc#compile-exe-output-file _%ctx199636%_ _%opts199637%_))
                 (_%output-scm199646%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin199644%_ '"__exe.scm"))))
            (_%compile-stub199642%_
             _%output-scm199646%_
             _%output-bin199644%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx199585%_ _%id199586%_)
        (let ((_%$e199632%_
               (let ((__tmp200294
                      (lambda (_%e199587199589%_)
                        (let* ((_%g199591199601%_ _%e199587199589%_)
                               (_%else199593199609%_ (lambda () '#f))
                               (_%K199595199613%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g199591199601%_
                                 'gx#module-export::t))
                              (let* ((_%e199596199616%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199591199601%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e199597199619%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199591199601%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e199598199622%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199591199601%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e199598199622%_ '0))
                                    (let ((_%e199599199625%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g199591199601%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g199627199629%_)
                                             (eq? _%g199627199629%_
                                                  _%id199586%_))
                                           _%e199599199625%_)
                                          (_%K199595199613%_)
                                          (_%else199593199609%_)))
                                    (_%else199593199609%_)))
                              (_%else199593199609%_)))))
                     (__tmp200293
                      (##structure-ref
                       _%ctx199585%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp200294 __tmp200293))))
          (if _%$e199632%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e199632%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx199576%_ _%id199577%_)
        (let ((_%$e199579%_
               (gxc#find-export-binding _%ctx199576%_ _%id199577%_)))
          (if _%$e199579%_
              ((lambda (_%bind199582%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind199582%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id199577%_)))
                 (##structure-ref _%bind199582%_ '1 gx#binding::t '#f))
               _%$e199579%_)
              (let ((__tmp200295
                     (##structure-ref
                      _%ctx199576%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp200295
                 _%id199577%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx199442%_)
        (letrec* ((_%ht199444%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template199445%_
                   (lambda (_%in199521%_ _%phi199522%_)
                     (let ((_%iphi199524%_
                            (fx+ _%phi199522%_
                                 (##direct-structure-ref
                                  _%in199521%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports199525%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in199521%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp199527%_ ((_%rest199529%_ _%imports199525%_)
                                          (_%r199530%_ '()))
                         (let* ((_%rest199531199539%_ _%rest199529%_)
                                (_%else199533199547%_ (lambda () _%r199530%_))
                                (_%K199535199564%_
                                 (lambda (_%rest199550%_ _%in199551%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in199551%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi199524%_))
                                           (_%lp199527%_
                                            _%rest199550%_
                                            (cons _%in199551%_ _%r199530%_))
                                           (_%lp199527%_
                                            _%rest199550%_
                                            _%r199530%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in199551%_
                                              'gx#module-import::t))
                                           (let ((_%iphi199555%_
                                                  (fx+ _%phi199522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in199551%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi199555%_))
                                                 (_%lp199527%_
                                                  _%rest199550%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in199551%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r199530%_))
                                                 (_%lp199527%_
                                                  _%rest199550%_
                                                  _%r199530%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in199551%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi199558%_
                                                      (fx+ _%iphi199524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in199551%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi199558%_))
                                                     (_%lp199527%_
                                                      _%rest199550%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in199551%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r199530%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi199558%_))
                                                         (_%lp199527%_
                                                          _%rest199550%_
                                                          (let ((__tmp200296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template199445%_
                          _%in199551%_
                          _%iphi199524%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r199530%_ __tmp200296)))
                 (_%lp199527%_ _%rest199550%_ _%r199530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp199527%_
                                                _%rest199550%_
                                                _%r199530%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest199531199539%_))
                               (let ((_%hd199536199567%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest199531199539%_)))
                                     (_%tl199537199569%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest199531199539%_))))
                                 (let* ((_%in199572%_ _%hd199536199567%_)
                                        (_%rest199574%_ _%tl199537199569%_))
                                   (_%K199535199564%_
                                    _%rest199574%_
                                    _%in199572%_)))
                               (_%else199533199547%_)))))))
                  (_%find-deps199446%_
                   (lambda (_%rest199454%_ _%deps199455%_)
                     (let* ((_%rest199456199464%_ _%rest199454%_)
                            (_%else199458199472%_ (lambda () _%deps199455%_))
                            (_%K199460199509%_
                             (lambda (_%rest199475%_ _%hd199476%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd199476%_
                                      'gx#module-context::t))
                                   (let ((_%id199479%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd199476%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports199480%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd199476%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht199444%_
                                            _%id199479%_))
                                         (_%find-deps199446%_
                                          _%rest199475%_
                                          _%deps199455%_)
                                         (let ((_%$e199483%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd199476%_))))
                                           (if _%$e199483%_
                                               ((lambda (_%pre199486%_)
                                                  (let ((_%xdeps199488%_
                                                         (_%find-deps199446%_
                                                          (cons _%pre199486%_
                                                                _%imports199480%_)
                                                          _%deps199455%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht199444%_
                                                       _%id199479%_
                                                       _%hd199476%_))
                                                    (_%find-deps199446%_
                                                     _%rest199475%_
                                                     (cons _%hd199476%_
                                                           _%xdeps199488%_))))
                                                _%$e199483%_)
                                               (let ((_%xdeps199491%_
                                                      (_%find-deps199446%_
                                                       _%imports199480%_
                                                       _%deps199455%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht199444%_
                                                    _%id199479%_
                                                    _%hd199476%_))
                                                 (_%find-deps199446%_
                                                  _%rest199475%_
                                                  (cons _%hd199476%_
                                                        _%xdeps199491%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd199476%_
                                          'gx#prelude-context::t))
                                       (let ((_%id199494%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd199476%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht199444%_
                                                _%id199494%_))
                                             (_%find-deps199446%_
                                              _%rest199475%_
                                              _%deps199455%_)
                                             (let ((_%xdeps199498%_
                                                    (_%find-deps199446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd199476%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps199455%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht199444%_
                                                      _%id199494%_))
                                                   (_%find-deps199446%_
                                                    _%rest199475%_
                                                    _%xdeps199498%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht199444%_
                                                        _%id199494%_
                                                        _%hd199476%_))
                                                     (_%find-deps199446%_
                                                      _%rest199475%_
                                                      (cons _%hd199476%_
                                                            _%xdeps199498%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd199476%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd199476%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps199446%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd199476%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest199475%_)
                                                _%deps199455%_)
                                               (_%find-deps199446%_
                                                _%rest199475%_
                                                _%deps199455%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd199476%_
                                                  'gx#module-export::t))
                                               (_%find-deps199446%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd199476%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest199475%_)
                                                _%deps199455%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd199476%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd199476%_ '2 '#f '#f)))
               (_%find-deps199446%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd199476%_ '1 '#f '#f))
                      _%rest199475%_)
                _%deps199455%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd199476%_ '2 '#f '#f)))
                   (let ((_%xdeps199505%_
                          (_%import-set-template199445%_ _%hd199476%_ '0)))
                     (_%find-deps199446%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest199475%_ _%xdeps199505%_))
                      _%deps199455%_))
                   (_%find-deps199446%_ _%rest199475%_ _%deps199455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd199476%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest199456199464%_))
                           (let ((_%hd199461199512%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest199456199464%_)))
                                 (_%tl199462199514%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest199456199464%_))))
                             (let* ((_%hd199517%_ _%hd199461199512%_)
                                    (_%rest199519%_ _%tl199462199514%_))
                               (_%K199460199509%_
                                _%rest199519%_
                                _%hd199517%_)))
                           (_%else199458199472%_))))))
          (let ((__tmp200297
                 (filter gx#expander-context-id
                         (_%find-deps199446%_
                          (let ((_%$e199448%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx199442%_))))
                            (if _%$e199448%_
                                ((lambda (_%pre199451%_)
                                   (cons _%pre199451%_
                                         (##structure-ref
                                          _%ctx199442%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e199448%_)
                                (##structure-ref
                                 _%ctx199442%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp200297)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx199372%_)
        (let* ((_%context-id199374%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx199372%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx199372%_ '1 '#f '#f))
                    (string->symbol _%ctx199372%_)))
               (_%scm199376%_
                (let ((__tmp200298
                       (gxc#static-module-name _%context-id199374%_)))
                  (declare (not safe))
                  (##string-append __tmp200298 '".scm")))
               (_%dirs199378%_ (let () (declare (not safe)) (load-path)))
               (_%dirs199384%_
                (let ((_%user-libpath199380%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath199380%_
                      (let ((_%user-libpath199382%_
                             (path-expand '"lib" _%user-libpath199380%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath199382%_ _%dirs199378%_))
                            _%dirs199378%_
                            (cons _%user-libpath199382%_ _%dirs199378%_)))
                      _%dirs199378%_)))
               (_%dirs199394%_
                (let ((_%$e199386%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e199386%_
                      ((lambda (_%g199388199390%_)
                         (cons _%g199388199390%_ _%dirs199384%_))
                       _%$e199386%_)
                      _%dirs199384%_)))
               (_%dirs199400%_
                (let ((__tmp200299
                       (lambda (_%g199395199397%_)
                         (path-expand '"static" _%g199395199397%_))))
                  (declare (not safe))
                  (##map __tmp200299 _%dirs199394%_))))
          (let _%lp199403%_ ((_%rest199405%_ _%dirs199400%_))
            (let* ((_%rest199406199414%_ _%rest199405%_)
                   (_%else199408199422%_
                    (lambda ()
                      (let ((__tmp200300
                             (##structure-ref
                              _%ctx199372%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp200300
                         _%scm199376%_))))
                   (_%K199410199430%_
                    (lambda (_%rest199425%_ _%dir199426%_)
                      (let ((_%path199428%_
                             (path-expand _%scm199376%_ _%dir199426%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path199428%_))
                            _%path199428%_
                            (_%lp199403%_ _%rest199425%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest199406199414%_))
                  (let ((_%hd199411199433%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199406199414%_)))
                        (_%tl199412199435%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199406199414%_))))
                    (let* ((_%dir199438%_ _%hd199411199433%_)
                           (_%rest199440%_ _%tl199412199435%_))
                      (_%K199410199430%_ _%rest199440%_ _%dir199438%_)))
                  (_%else199408199422%_)))))))
    (define gxc#file-empty?
      (lambda (_%path199370%_)
        (zero? (let ((__tmp200301 (file-info _%path199370%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp200301)))))
    (define gxc#compile-top-module
      (lambda (_%ctx199366%_)
        (let ((__tmp200305
               (lambda ()
                 (let ((__tmp200306
                        (##structure-ref
                         _%ctx199366%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp200306))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp200307
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx199366%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp200307))
                     '#!void)
                 (gxc#collect-bindings _%ctx199366%_)
                 (gxc#compile-runtime-code _%ctx199366%_)
                 (gxc#compile-meta-code _%ctx199366%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx199366%_)
                     '#!void)))
              (__tmp200304
               (let ((__obj200228
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj200228))
                 __obj200228))
              (__tmp200303 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200302
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
           __tmp200305
           gx#current-expander-context
           _%ctx199366%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp200304
           gxc#current-compile-runtime-sections
           __tmp200303
           gxc#current-compile-runtime-names
           __tmp200302))))
    (define gxc#collect-bindings
      (lambda (_%ctx199364%_)
        (let ((__tmp200308
               (##structure-ref _%ctx199364%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp200308))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx199312%_)
        (letrec ((_%compile1199314%_
                  (lambda (_%ctx199353%_)
                    (let* ((_%code199355%_
                            (##structure-ref
                             _%ctx199353%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm199359%_
                            (let ((_%idstr199357%_
                                   (let ((__tmp200309
                                          (##structure-ref
                                           _%ctx199353%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp200309))))
                              (declare (not safe))
                              (##string-append _%idstr199357%_ '"~0")))
                           (_%rtc?199361%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code199355%_))))
                      (if _%rtc?199361%_
                          (let ((__tmp200310
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp200310
                             _%ctx199353%_
                             _%rtm199359%_))
                          '#!void)
                      (_%generate-runtime-code199316%_
                       _%ctx199353%_
                       _%code199355%_
                       (if _%rtc?199361%_ _%rtm199359%_ '#f)))))
                 (_%context-timestamp199315%_
                  (lambda (_%ctx199351%_)
                    (let ((__tmp200311
                           (let ((__tmp200312
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx199351%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp200312 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp200311))))
                 (_%generate-runtime-code199316%_
                  (lambda (_%ctx199323%_ _%code199324%_ _%rtm199325%_)
                    (let* ((_%runtime-code?199327%_ (if _%rtm199325%_ '#t '#f))
                           (_%lifts199329%_ (box '()))
                           (_%runtime-code199332%_
                            (if _%runtime-code?199327%_
                                (let ((__tmp200315
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code199324%_))))
                                      (__tmp200314
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp200313
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp200315
                                   gx#current-expander-context
                                   _%ctx199323%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts199329%_
                                   gxc#current-compile-marks
                                   __tmp200314
                                   gxc#current-compile-identifiers
                                   __tmp200313))
                                '#f))
                           (_%runtime-code199334%_
                            (if _%runtime-code?199327%_
                                (if (null? (unbox _%lifts199329%_))
                                    _%runtime-code199332%_
                                    (cons 'begin
                                          (let ((__tmp200317
                                                 (cons _%runtime-code199332%_
                                                       '()))
                                                (__tmp200316
                                                 (reverse (unbox _%lifts199329%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp200317
                                             __tmp200316))))
                                '#f))
                           (_%runtime-code199336%_
                            (if _%runtime-code?199327%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp199315%_
                                                         _%ctx199323%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code199334%_ '())))
                                '#f))
                           (_%loader-code199339%_
                            (let ((__tmp200318
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code199324%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp200318
                               gx#current-expander-context
                               _%ctx199323%_)))
                           (_%loader-code199341%_
                            (cons 'begin
                                  (cons _%loader-code199339%_
                                        (cons (if _%runtime-code?199327%_
                                                  (cons 'load-module
                                                        (cons _%rtm199325%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0199343%_
                            (gxc#compile-output-file _%ctx199323%_ '0 '".scm"))
                           (_%scmrt199345%_
                            (gxc#compile-output-file
                             _%ctx199323%_
                             '#f
                             '".scm"))
                           (_%scms199347%_
                            (gxc#compile-static-output-file _%ctx199323%_)))
                      (if _%runtime-code?199327%_
                          (gxc#compile-scm-file__0
                           _%scm0199343%_
                           _%runtime-code199336%_)
                          '#!void)
                      (let ((__tmp200319
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt199345%_
                                _%loader-code199341%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp200319
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms199347%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms199347%_))
                          '#!void)
                      (if _%runtime-code?199327%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0199343%_ _%scms199347%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms199347%_ void)))))))
          (let* ((_%all-modules199318%_
                  (cons _%ctx199312%_ (gxc#lift-nested-modules _%ctx199312%_)))
                 (__tmp200320
                  (lambda (_%ctx199320%_)
                    (let ((__tmp200321
                           (lambda () (_%compile1199314%_ _%ctx199320%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp200321
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp200320 _%all-modules199318%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx199212%_)
        (letrec ((_%compile-ssi199214%_
                  (lambda (_%code199280%_)
                    (let* ((_%path199282%_
                            (gxc#compile-output-file
                             _%ctx199212%_
                             '#f
                             '".ssi"))
                           (_%prelude199294%_
                            (let* ((_%super199284%_
                                    (##structure-ref
                                     _%ctx199212%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e199286%_
                                    (##structure-ref
                                     _%super199284%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e199286%_
                                  ((lambda (_%g199288199290%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g199288199290%_)))
                                   _%$e199286%_)
                                  ':<root>)))
                           (_%ns199296%_
                            (##structure-ref
                             _%ctx199212%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr199298%_
                            (symbol->string
                             (##structure-ref
                              _%ctx199212%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg199306%_
                            (let ((_%$e199300%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr199298%_ '#\/))))
                              (if _%$e199300%_
                                  ((lambda (_%x199303%_)
                                     (let ((__tmp200322
                                            (substring
                                             _%idstr199298%_
                                             '0
                                             _%x199303%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp200322)))
                                   _%$e199300%_)
                                  '#f)))
                           (_%rt199308%_
                            (let ((__tmp200323
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp200323 _%ctx199212%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path199282%_))
                      (gxc#with-output-to-scheme-file
                       _%path199282%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude199294%_))
                         (if _%pkg199306%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg199306%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns199296%_))
                         (newline)
                         (pretty-print _%code199280%_)
                         (if _%rt199308%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt199308%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi199215%_
                  (lambda (_%part199220%_)
                    (let* ((_%part199221199234%_ _%part199220%_)
                           (_%E199223199238%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part199221199234%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K199224199249%_
                            (lambda (_%code199241%_
                                     _%n199242%_
                                     _%phi199243%_
                                     _%phi-ctx199244%_)
                              (let ((_%code199247%_
                                     (let ((__tmp200324
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code199241%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200324
                                        gx#current-expander-context
                                        _%phi-ctx199244%_
                                        gx#current-expander-phi
                                        _%phi199243%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx199212%_
                                  _%n199242%_
                                  '".scm")
                                 _%code199247%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part199221199234%_))
                          (let ((_%hd199225199252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part199221199234%_)))
                                (_%tl199226199254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part199221199234%_))))
                            (let ((_%phi-ctx199257%_ _%hd199225199252%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199226199254%_))
                                  (let ((_%hd199227199259%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199226199254%_)))
                                        (_%tl199228199261%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199226199254%_))))
                                    (let ((_%phi199264%_ _%hd199227199259%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl199228199261%_))
                                          (let ((_%hd199229199266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl199228199261%_)))
                                                (_%tl199230199268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199228199261%_))))
                                            (let ((_%n199271%_
                                                   _%hd199229199266%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl199230199268%_))
                                                  (let ((_%hd199231199273%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl199230199268%_)))
                                                        (_%tl199232199275%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl199230199268%_))))
                                                    (let ((_%code199278%_
                                                           _%hd199231199273%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl199232199275%_))
                                                          (_%K199224199249%_
                                                           _%code199278%_
                                                           _%n199271%_
                                                           _%phi199264%_
                                                           _%phi-ctx199257%_)
                                                          (_%E199223199238%_))))
                                                  (_%E199223199238%_))))
                                          (_%E199223199238%_))))
                                  (_%E199223199238%_))))
                          (_%E199223199238%_))))))
          (let ((_g200325_ (gxc#generate-meta-code _%ctx199212%_)))
            (begin
              (let ((_g200326_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g200325_)
                           (##vector-length _g200325_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g200326_ 2)))
                    (error "Context expects 2 values" _g200326_)))
              (let ((_%ssi-code199217%_
                     (let () (declare (not safe)) (##vector-ref _g200325_ 0)))
                    (_%phi-code199218%_
                     (let () (declare (not safe)) (##vector-ref _g200325_ 1))))
                (begin
                  (_%compile-ssi199214%_ _%ssi-code199217%_)
                  (for-each _%compile-phi199215%_ _%phi-code199218%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx199194%_)
        (let* ((_%path199196%_
                (gxc#compile-output-file _%ctx199194%_ '#f '".ssxi.ss"))
               (_%code199198%_
                (let ((__tmp200327
                       (##structure-ref
                        _%ctx199194%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp200327)))
               (_%idstr199200%_
                (symbol->string
                 (##structure-ref
                  _%ctx199194%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg199208%_
                (let ((_%$e199202%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr199200%_ '#\/))))
                  (if _%$e199202%_
                      ((lambda (_%x199205%_)
                         (let ((__tmp200328
                                (substring _%idstr199200%_ '0 _%x199205%_)))
                           (declare (not safe))
                           (##string->symbol __tmp200328)))
                       _%$e199202%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path199196%_))
          (gxc#with-output-to-scheme-file
           _%path199196%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg199208%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg199208%_))
                 '#!void)
             (newline)
             (pretty-print _%code199198%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx199187%_)
        (let* ((_%state199189%_
                (let ((__obj200229
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj200229 _%ctx199187%_))
                  __obj200229))
               (_%ssi-code199191%_
                (let ((__tmp200329
                       (##structure-ref
                        _%ctx199187%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state199189%_
                   __tmp200329))))
          (values _%ssi-code199191%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state199189%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx199180%_)
        (let ((_%lifts199182%_ (box '())))
          (let ((__tmp200332
                 (lambda ()
                   (let ((_%code199185%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx199180%_))))
                     (if (null? (unbox _%lifts199182%_))
                         _%code199185%_
                         (cons 'begin
                               (let ((__tmp200334 (cons _%code199185%_ '()))
                                     (__tmp200333
                                      (reverse (unbox _%lifts199182%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp200334 __tmp200333)))))))
                (__tmp200331
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp200330
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200332
             gxc#current-compile-lift
             _%lifts199182%_
             gxc#current-compile-marks
             __tmp200331
             gxc#current-compile-identifiers
             __tmp200330)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx199176%_)
        (let ((_%modules199178%_ (box '())))
          (let ((__tmp200335
                 (##structure-ref _%ctx199176%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules199178%_ __tmp200335))
          (reverse (unbox _%modules199178%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path199156%_ _%code199157%_ _%phi?199158%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path199156%_))
        (gxc#with-output-to-scheme-file
         _%path199156%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp200336
                                           (if _%phi?199158%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp200336)))))))
           (pretty-print _%code199157%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it199162%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path199156%_ _%phi?199158%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp200337
                         (cons 'compile-file (cons _%path199156%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it199162%_ __tmp200337))
                  (_%compile-it199162%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path199167%_ _%code199168%_)
        (let ((_%phi?199170%_ '#f))
          (gxc#compile-scm-file__%
           _%path199167%_
           _%code199168%_
           _%phi?199170%_))))
    (define gxc#compile-scm-file
      (lambda _g200339_
        (let ((_g200338_ (let () (declare (not safe)) (##length _g200339_))))
          (cond ((let () (declare (not safe)) (##fx= _g200338_ 2))
                 (apply gxc#compile-scm-file__0 _g200339_))
                ((let () (declare (not safe)) (##fx= _g200338_ 3))
                 (apply gxc#compile-scm-file__% _g200339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g200339_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?199057%_)
        (let _%lp199059%_ ((_%rest199061%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199062%_ '()))
          (let* ((_%rest199063199083%_ _%rest199061%_)
                 (_%else199067199091%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts199062%_)))
                        (reverse _%opts199062%_)))))
            (let ((_%K199077199134%_
                   (lambda (_%rest199132%_)
                     (_%lp199059%_ _%rest199132%_ _%opts199062%_)))
                  (_%K199072199116%_
                   (lambda (_%rest199114%_)
                     (_%lp199059%_ _%rest199114%_ _%opts199062%_)))
                  (_%K199069199098%_
                   (lambda (_%rest199095%_ _%opt199096%_)
                     (_%lp199059%_
                      _%rest199095%_
                      (cons _%opt199096%_ _%opts199062%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest199063199083%_))
                  (let ((_%tl199079199139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199063199083%_)))
                        (_%hd199078199137%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199063199083%_))))
                    (if (equal? _%hd199078199137%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199079199139%_))
                            (let* ((_%tl199081199142%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199079199139%_)))
                                   (_%rest199145%_ _%tl199081199142%_))
                              (_%K199077199134%_ _%rest199145%_))
                            (let ((_%opt199106%_ _%hd199078199137%_)
                                  (_%rest199108%_ _%tl199079199139%_))
                              (_%K199069199098%_
                               _%rest199108%_
                               _%opt199106%_)))
                        (if (equal? _%hd199078199137%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199079199139%_))
                                (let* ((_%tl199076199124%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl199079199139%_)))
                                       (_%rest199127%_ _%tl199076199124%_))
                                  (_%K199072199116%_ _%rest199127%_))
                                (let ((_%opt199106%_ _%hd199078199137%_)
                                      (_%rest199108%_ _%tl199079199139%_))
                                  (_%K199069199098%_
                                   _%rest199108%_
                                   _%opt199106%_)))
                            (let ((_%opt199106%_ _%hd199078199137%_)
                                  (_%rest199108%_ _%tl199079199139%_))
                              (_%K199069199098%_
                               _%rest199108%_
                               _%opt199106%_)))))
                  (_%else199067199091%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?199151%_ '#f)) (gxc#gsc-link-options__% _%phi?199151%_))))
    (define gxc#gsc-link-options
      (lambda _g200341_
        (let ((_g200340_ (let () (declare (not safe)) (##length _g200341_))))
          (cond ((let () (declare (not safe)) (##fx= _g200340_ 0))
                 (apply gxc#gsc-link-options__0 _g200341_))
                ((let () (declare (not safe)) (##fx= _g200340_ 1))
                 (apply gxc#gsc-link-options__% _g200341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g200341_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords198906%_ _%static?198902198907%_ _%phi?198909%_)
        (let ((_%static?198911%_
               (if (eq? _%static?198902198907%_ absent-value)
                   '#f
                   _%static?198902198907%_)))
          (if _%phi?198909%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp198913%_ ((_%rest198915%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts198916%_ '()))
                (let* ((_%rest198917198943%_ _%rest198915%_)
                       (_%else198922198951%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts198916%_)))
                              (reverse! _%opts198916%_)))))
                  (let ((_%K198937199014%_
                         (lambda (_%rest199011%_ _%opt199012%_)
                           (if _%static?198911%_
                               (_%lp198913%_
                                _%rest199011%_
                                (cons _%opt199012%_
                                      (cons '"-cc-options" _%opts198916%_)))
                               (_%lp198913%_ _%rest199011%_ _%opts198916%_))))
                        (_%K198932198991%_
                         (lambda (_%rest198988%_ _%opt198989%_)
                           (_%lp198913%_
                            _%rest198988%_
                            (cons _%opt198989%_
                                  (cons '"-cc-options" _%opts198916%_)))))
                        (_%K198927198971%_
                         (lambda (_%rest198969%_)
                           (_%lp198913%_ _%rest198969%_ _%opts198916%_)))
                        (_%K198924198957%_
                         (lambda (_%rest198955%_)
                           (_%lp198913%_ _%rest198955%_ _%opts198916%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest198917198943%_))
                        (let ((_%tl198939199019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest198917198943%_)))
                              (_%hd198938199017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest198917198943%_))))
                          (if (equal? _%hd198938199017%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl198939199019%_))
                                  (let ((_%tl198941199024%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198939199019%_)))
                                        (_%hd198940199022%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198939199019%_))))
                                    (if (equal? _%hd198940199022%_ '"-Bstatic")
                                        (let ((_%opt199027%_
                                               _%hd198940199022%_)
                                              (_%rest199029%_
                                               _%tl198941199024%_))
                                          (_%K198937199014%_
                                           _%rest199029%_
                                           _%opt199027%_))
                                        (let ((_%opt199004%_
                                               _%hd198940199022%_)
                                              (_%rest199006%_
                                               _%tl198941199024%_))
                                          (_%K198932198991%_
                                           _%rest199006%_
                                           _%opt199004%_))))
                                  (let ((_%rest198963%_ _%tl198939199019%_))
                                    (_%K198924198957%_ _%rest198963%_)))
                              (if (equal? _%hd198938199017%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl198939199019%_))
                                      (let* ((_%tl198931198979%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl198939199019%_)))
                                             (_%rest198982%_
                                              _%tl198931198979%_))
                                        (_%K198927198971%_ _%rest198982%_))
                                      (let ((_%rest198963%_
                                             _%tl198939199019%_))
                                        (_%K198924198957%_ _%rest198963%_)))
                                  (let ((_%rest198963%_ _%tl198939199019%_))
                                    (_%K198924198957%_ _%rest198963%_)))))
                        (_%else198922198951%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords199034%_ _%static?198902199035%_)
        (let ((_%phi?199037%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords199034%_
           _%static?198902199035%_
           _%phi?199037%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g200343_
        (let ((_g200342_ (let () (declare (not safe)) (##length _g200343_))))
          (cond ((let () (declare (not safe)) (##fx= _g200342_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g200343_))
                ((let () (declare (not safe)) (##fx= _g200342_ 3))
                 (apply gxc#gsc-cc-options__%__% _g200343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g200343_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords199046%_ . _%args199047%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords199046%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199046%_
                  'static:
                  absent-value))
               _%args199047%_)))
    (define gxc#gsc-cc-options
      (lambda _%args198903199053%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args198903199053%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords198751%_ _%static?198747198752%_ _%phi?198754%_)
        (let ((_%static?198756%_
               (if (eq? _%static?198747198752%_ absent-value)
                   '#f
                   _%static?198747198752%_)))
          (if _%phi?198754%_
              '()
              (let _%lp198758%_ ((_%rest198760%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts198761%_ '()))
                (let* ((_%rest198762198788%_ _%rest198760%_)
                       (_%else198767198796%_
                        (lambda () (reverse! _%opts198761%_))))
                  (let ((_%K198782198859%_
                         (lambda (_%rest198856%_ _%opt198857%_)
                           (if _%static?198756%_
                               (_%lp198758%_
                                _%rest198856%_
                                (cons _%opt198857%_
                                      (cons '"-ld-options" _%opts198761%_)))
                               (_%lp198758%_ _%rest198856%_ _%opts198761%_))))
                        (_%K198777198836%_
                         (lambda (_%rest198833%_ _%opt198834%_)
                           (_%lp198758%_
                            _%rest198833%_
                            (cons _%opt198834%_
                                  (cons '"-ld-options" _%opts198761%_)))))
                        (_%K198772198816%_
                         (lambda (_%rest198814%_)
                           (_%lp198758%_ _%rest198814%_ _%opts198761%_)))
                        (_%K198769198802%_
                         (lambda (_%rest198800%_)
                           (_%lp198758%_ _%rest198800%_ _%opts198761%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest198762198788%_))
                        (let ((_%tl198784198864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest198762198788%_)))
                              (_%hd198783198862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest198762198788%_))))
                          (if (equal? _%hd198783198862%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl198784198864%_))
                                  (let ((_%tl198786198869%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198784198864%_)))
                                        (_%hd198785198867%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198784198864%_))))
                                    (if (equal? _%hd198785198867%_ '"-static")
                                        (let ((_%opt198872%_
                                               _%hd198785198867%_)
                                              (_%rest198874%_
                                               _%tl198786198869%_))
                                          (_%K198782198859%_
                                           _%rest198874%_
                                           _%opt198872%_))
                                        (let ((_%opt198849%_
                                               _%hd198785198867%_)
                                              (_%rest198851%_
                                               _%tl198786198869%_))
                                          (_%K198777198836%_
                                           _%rest198851%_
                                           _%opt198849%_))))
                                  (let ((_%rest198808%_ _%tl198784198864%_))
                                    (_%K198769198802%_ _%rest198808%_)))
                              (if (equal? _%hd198783198862%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl198784198864%_))
                                      (let* ((_%tl198776198824%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl198784198864%_)))
                                             (_%rest198827%_
                                              _%tl198776198824%_))
                                        (_%K198772198816%_ _%rest198827%_))
                                      (let ((_%rest198808%_
                                             _%tl198784198864%_))
                                        (_%K198769198802%_ _%rest198808%_)))
                                  (let ((_%rest198808%_ _%tl198784198864%_))
                                    (_%K198769198802%_ _%rest198808%_)))))
                        (_%else198767198796%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords198879%_ _%static?198747198880%_)
        (let ((_%phi?198882%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords198879%_
           _%static?198747198880%_
           _%phi?198882%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g200345_
        (let ((_g200344_ (let () (declare (not safe)) (##length _g200345_))))
          (cond ((let () (declare (not safe)) (##fx= _g200344_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g200345_))
                ((let () (declare (not safe)) (##fx= _g200344_ 3))
                 (apply gxc#gsc-ld-options__%__% _g200345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g200345_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords198891%_ . _%args198892%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords198891%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198891%_
                  'static:
                  absent-value))
               _%args198892%_)))
    (define gxc#gsc-ld-options
      (lambda _%args198748198898%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args198748198898%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir198742%_)
        (let ((_%user-staticdir198744%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir198742%_
                       '" -I "
                       _%user-staticdir198744%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp198654%_ ((_%rest198656%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts198657%_ '()))
          (let* ((_%rest198658198678%_ _%rest198656%_)
                 (_%else198662198686%_ (lambda () _%opts198657%_)))
            (let ((_%K198672198729%_
                   (lambda (_%rest198727%_)
                     (_%lp198654%_ _%rest198727%_ _%opts198657%_)))
                  (_%K198667198707%_
                   (lambda (_%rest198704%_ _%opt198705%_)
                     (_%lp198654%_
                      _%rest198704%_
                      (let ((__tmp200346
                             (let ((__tmp200347
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt198705%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp200347))))
                        (declare (not safe))
                        (##append _%opts198657%_ __tmp200346)))))
                  (_%K198664198692%_
                   (lambda (_%rest198690%_)
                     (_%lp198654%_ _%rest198690%_ _%opts198657%_))))
              (if (let () (declare (not safe)) (##pair? _%rest198658198678%_))
                  (let ((_%tl198674198734%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198658198678%_)))
                        (_%hd198673198732%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198658198678%_))))
                    (if (equal? _%hd198673198732%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl198674198734%_))
                            (let* ((_%tl198676198737%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl198674198734%_)))
                                   (_%rest198740%_ _%tl198676198737%_))
                              (_%K198672198729%_ _%rest198740%_))
                            (let ((_%rest198698%_ _%tl198674198734%_))
                              (_%K198664198692%_ _%rest198698%_)))
                        (if (equal? _%hd198673198732%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl198674198734%_))
                                (let ((_%tl198671198717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl198674198734%_)))
                                      (_%hd198670198715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl198674198734%_))))
                                  (let ((_%opt198720%_ _%hd198670198715%_)
                                        (_%rest198722%_ _%tl198671198717%_))
                                    (_%K198667198707%_
                                     _%rest198722%_
                                     _%opt198720%_)))
                                (let ((_%rest198698%_ _%tl198674198734%_))
                                  (_%K198664198692%_ _%rest198698%_)))
                            (let ((_%rest198698%_ _%tl198674198734%_))
                              (_%K198664198692%_ _%rest198698%_)))))
                  (_%else198662198686%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str198651%_)
        (not (let () (declare (not safe)) (string-empty? _%str198651%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path198644%_ _%phi?198645%_)
        (let ((_%gsc-link-opts198647%_
               (gxc#gsc-link-options__% _%phi?198645%_))
              (_%gsc-cc-opts198648%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?198645%_))
              (_%gsc-ld-opts198649%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?198645%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp200348
                  (let ((__tmp200349
                         (let ((__tmp200350 (cons _%path198644%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp200350
                            _%gsc-link-opts198647%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200349 _%gsc-ld-opts198649%_))))
             (declare (not safe))
             (__foldr1 cons __tmp200348 _%gsc-cc-opts198648%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx198610%_ _%n198611%_ _%ext198612%_)
        (letrec ((_%module-relative-path198614%_
                  (lambda (_%ctx198642%_)
                    (path-strip-directory
                     (let ((__tmp200351
                            (##structure-ref
                             _%ctx198642%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp200351)))))
                 (_%module-source-directory198615%_
                  (lambda (_%ctx198638%_)
                    (path-directory
                     (let ((_%mpath198640%_
                            (##structure-ref
                             _%ctx198638%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath198640%_)
                           _%mpath198640%_
                           (last _%mpath198640%_))))))
                 (_%section-string198616%_
                  (lambda (_%n198632%_)
                    (if (number? _%n198632%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n198632%_))
                        (if (symbol? _%n198632%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n198632%_))
                            (if (string? _%n198632%_)
                                _%n198632%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n198632%_)))))))
                 (_%file-name198617%_
                  (lambda (_%path198630%_)
                    (if _%n198611%_
                        (string-append
                         _%path198630%_
                         '"~"
                         (_%section-string198616%_ _%n198611%_)
                         _%ext198612%_)
                        (string-append _%path198630%_ _%ext198612%_))))
                 (_%file-path198618%_
                  (lambda ()
                    (let ((_%$e198624%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e198624%_
                          ((lambda (_%outdir198627%_)
                             (path-expand
                              (_%file-name198617%_
                               (let ((__tmp200352
                                      (##structure-ref
                                       _%ctx198610%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp200352)))
                              _%outdir198627%_))
                           _%$e198624%_)
                          (path-expand
                           (_%file-name198617%_
                            (_%module-relative-path198614%_ _%ctx198610%_))
                           (_%module-source-directory198615%_
                            _%ctx198610%_)))))))
          (let ((_%path198620%_ (_%file-path198618%_)))
            (let ((__tmp200353
                   (lambda ()
                     (let ((__tmp200354 (path-directory _%path198620%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp200354)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp200353))
            _%path198620%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx198591%_)
        (letrec ((_%file-name198593%_
                  (lambda (_%id198608%_)
                    (let ((__tmp200355 (gxc#static-module-name _%id198608%_)))
                      (declare (not safe))
                      (##string-append __tmp200355 '".scm"))))
                 (_%file-path198594%_
                  (lambda ()
                    (let* ((_%file198600%_
                            (_%file-name198593%_
                             (##structure-ref
                              _%ctx198591%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e198602%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e198602%_
                          ((lambda (_%outdir198605%_)
                             (path-expand
                              _%file198600%_
                              (path-expand '"static" _%outdir198605%_)))
                           _%$e198602%_)
                          (path-expand _%file198600%_ '"static"))))))
          (let ((_%path198596%_ (_%file-path198594%_)))
            (let ((__tmp200356
                   (lambda ()
                     (let ((__tmp200357 (path-directory _%path198596%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp200357)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp200356))
            _%path198596%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx198584%_ _%opts198585%_)
        (let ((_%$e198587%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts198585%_))))
          (if _%$e198587%_
              _%$e198587%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx198584%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr198574%_)
        (if (string? _%idstr198574%_)
            (let* ((_%str198577%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr198574%_)))
                   (_%strs198579%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str198577%_ '#\/))))
              (declare (not safe))
              (string-join _%strs198579%_ '"__"))
            (if (symbol? _%idstr198574%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr198574%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr198574%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp200358
               (let ((__tmp200359 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp200359 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp200358))))
    (define gxc#invoke__%
      (lambda (_%@@keywords198538%_
               _%stdout-redirection198534198539%_
               _%stderr-redirection198535198541%_
               _%program198543%_
               _%args198544%_)
        (let* ((_%stdout-redirection198546%_
                (if (eq? _%stdout-redirection198534198539%_ absent-value)
                    '#f
                    _%stdout-redirection198534198539%_))
               (_%stderr-redirection198548%_
                (if (eq? _%stderr-redirection198535198541%_ absent-value)
                    '#f
                    _%stderr-redirection198535198541%_)))
          (let ((__tmp200360 (cons _%program198543%_ _%args198544%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp200360))
          (let* ((_%proc198550%_
                  (open-process
                   (cons 'path:
                         (cons _%program198543%_
                               (cons 'arguments:
                                     (cons _%args198544%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection198546%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection198548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output198555%_
                  (if (or _%stdout-redirection198546%_
                          _%stderr-redirection198548%_)
                      (read-line _%proc198550%_ '#f)
                      '#f))
                 (_%status198558%_ (process-status _%proc198550%_)))
            (let () (declare (not safe)) (##close-port _%proc198550%_))
            (if (zero? _%status198558%_)
                '#!void
                (begin
                  (display _%output198555%_)
                  (let ((__tmp200361 (cons _%program198543%_ _%args198544%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp200361
                     _%status198558%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords198563%_ . _%args198564%_)
        (apply gxc#invoke__%
               _%@@keywords198563%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198563%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198563%_
                  'stderr-redirection:
                  absent-value))
               _%args198564%_)))
    (define gxc#invoke
      (lambda _%args198536198570%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args198536198570%_)))))
