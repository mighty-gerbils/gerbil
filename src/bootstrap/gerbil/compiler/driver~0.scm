(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1713044323)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp200942 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp200942))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp200943 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp200943))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path200799%_ _%fun200800%_)
        (with-output-to-file
         (cons 'path: (cons _%path200799%_ gxc#scheme-file-settings))
         _%fun200800%_)))
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
      (lambda (_%gerbil-libdir200794%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir200794%_)))
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
      (lambda (_%dir200792%_) (delete-file-or-directory _%dir200792%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath200765%_ _%opts200766%_)
        (if (string? _%srcpath200765%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200765%_)))
        (let ((_%outdir200768%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200766%_)))
              (_%invoke-gsc?200769%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200766%_)))
              (_%gsc-options200770%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200766%_)))
              (_%keep-scm?200771%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200766%_)))
              (_%verbosity200772%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200766%_)))
              (_%optimize200773%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts200766%_)))
              (_%debug200774%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200766%_)))
              (_%gen-ssxi200775%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts200766%_)))
              (_%parallel?200776%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200766%_))))
          (if _%outdir200768%_
              (let ((__tmp200944
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200768%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200944))
              '#!void)
          (if _%optimize200773%_
              (let ((__tmp200945
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200945))
              '#!void)
          (let ((__tmp200948
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath200765%_))
                   (gxc#compile-top-module
                    (let ((__tmp200949
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200765%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200949)))))
                (__tmp200947 (gxc#compile-timestamp))
                (__tmp200946
                 (cons 'compile-module (cons _%srcpath200765%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200948
             gxc#current-compile-output-dir
             _%outdir200768%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200769%_
             gxc#current-compile-gsc-options
             _%gsc-options200770%_
             gxc#current-compile-keep-scm
             _%keep-scm?200771%_
             gxc#current-compile-verbose
             _%verbosity200772%_
             gxc#current-compile-optimize
             _%optimize200773%_
             gxc#current-compile-debug
             _%debug200774%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi200775%_
             gxc#current-compile-timestamp
             __tmp200947
             gxc#current-compile-context
             __tmp200946
             gxc#current-compile-parallel
             _%parallel?200776%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath200785%_)
        (let ((_%opts200787%_ '()))
          (gxc#compile-module__% _%srcpath200785%_ _%opts200787%_))))
    (define gxc#compile-module
      (lambda _g200951_
        (let ((_g200950_ (let () (declare (not safe)) (##length _g200951_))))
          (cond ((let () (declare (not safe)) (##fx= _g200950_ 1))
                 (apply gxc#compile-module__0 _g200951_))
                ((let () (declare (not safe)) (##fx= _g200950_ 2))
                 (apply gxc#compile-module__% _g200951_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g200951_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath200740%_ _%opts200741%_)
        (if (string? _%srcpath200740%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200740%_)))
        (let ((_%outdir200743%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200741%_)))
              (_%invoke-gsc?200744%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200741%_)))
              (_%gsc-options200745%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200741%_)))
              (_%keep-scm?200746%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200741%_)))
              (_%verbosity200747%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200741%_)))
              (_%debug200748%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200741%_)))
              (_%parallel?200749%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200741%_))))
          (if _%outdir200743%_
              (let ((__tmp200952
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200743%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200952))
              '#!void)
          (let ((__tmp200955
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath200740%_))
                   (gxc#compile-executable-module
                    (let ((__tmp200956
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200740%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200956))
                    _%opts200741%_)))
                (__tmp200954 (gxc#compile-timestamp))
                (__tmp200953 (cons 'compile-exe (cons _%srcpath200740%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200955
             gxc#current-compile-output-dir
             _%outdir200743%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200744%_
             gxc#current-compile-gsc-options
             _%gsc-options200745%_
             gxc#current-compile-keep-scm
             _%keep-scm?200746%_
             gxc#current-compile-verbose
             _%verbosity200747%_
             gxc#current-compile-debug
             _%debug200748%_
             gxc#current-compile-timestamp
             __tmp200954
             gxc#current-compile-context
             __tmp200953
             gxc#current-compile-parallel
             _%parallel?200749%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath200757%_)
        (let ((_%opts200759%_ '()))
          (gxc#compile-exe__% _%srcpath200757%_ _%opts200759%_))))
    (define gxc#compile-exe
      (lambda _g200958_
        (let ((_g200957_ (let () (declare (not safe)) (##length _g200958_))))
          (cond ((let () (declare (not safe)) (##fx= _g200957_ 1))
                 (apply gxc#compile-exe__0 _g200958_))
                ((let () (declare (not safe)) (##fx= _g200957_ 2))
                 (apply gxc#compile-exe__% _g200958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g200958_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx200736%_ _%opts200737%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts200737%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx200736%_
             _%opts200737%_)
            (gxc#compile-executable-module/separate
             _%ctx200736%_
             _%opts200737%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx200526%_ _%opts200527%_)
        (letrec ((_%generate-stub200529%_
                  (lambda (_%builtin-modules200732%_)
                    (let ((_%mod-main200734%_
                           (gxc#find-runtime-symbol _%ctx200526%_ 'main)))
                      (let ((__tmp200959
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules200732%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp200959))
                      (let ((__tmp200960
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main200734%_
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
                        (##write __tmp200960))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts200530%_
                  (lambda (_%gerbil-libdir200730%_)
                    (let ((__tmp200961
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir200730%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp200961 read))))
                 (_%replace-extension200531%_
                  (lambda (_%path200727%_ _%ext200728%_)
                    (string-append
                     (path-strip-extension _%path200727%_)
                     _%ext200728%_)))
                 (_%userlib-module?200532%_
                  (lambda (_%ctx200725%_)
                    (if (_%exclude-module?200534%_ _%ctx200725%_)
                        '#f
                        (not (_%libgerbil-module?200533%_ _%ctx200725%_)))))
                 (_%libgerbil-module?200533%_
                  (lambda (_%ctx200718%_)
                    (let ((_%id-str200720%_
                           (symbol->string
                            (##structure-ref
                             _%ctx200718%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?200534%_ _%id-str200720%_)
                          '#f
                          (let ((_%$e200722%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str200720%_))))
                            (if _%$e200722%_
                                _%$e200722%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str200720%_))))))))
                 (_%exclude-module?200534%_
                  (lambda (_%ctx-or-str200714%_)
                    (let ((_%str200716%_
                           (if (string? _%ctx-or-str200714%_)
                               _%ctx-or-str200714%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str200714%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str200716%_))))
                 (_%not-file-empty?200535%_
                  (lambda (_%path200712%_)
                    (not (gxc#file-empty? _%path200712%_))))
                 (_%fold-libgerbil-runtime-scm200536%_
                  (lambda (_%gerbil-staticdir200705%_ _%libgerbil-scm200706%_)
                    (let ((_%gerbil-runtime-scm200710%_
                           (let ((__tmp200962
                                  (lambda (_%rtm200708%_)
                                    (path-expand
                                     (let ((__tmp200963
                                            (let ((__tmp200964
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm200708%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp200964
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp200963 '".scm"))
                                     _%gerbil-staticdir200705%_))))
                             (declare (not safe))
                             (##map __tmp200962 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates200537%_
                       (append _%gerbil-runtime-scm200710%_
                               _%libgerbil-scm200706%_)))))
                 (_%remove-duplicates200537%_
                  (lambda (_%strlst200665%_)
                    (let _%loop200667%_ ((_%rest200669%_ _%strlst200665%_)
                                         (_%result200670%_ '()))
                      (let* ((_%rest200671200679%_ _%rest200669%_)
                             (_%else200673200687%_
                              (lambda () (reverse! _%result200670%_)))
                             (_%K200675200693%_
                              (lambda (_%rest200690%_ _%path200691%_)
                                (if (member _%path200691%_ _%result200670%_)
                                    (_%loop200667%_
                                     _%rest200690%_
                                     _%result200670%_)
                                    (_%loop200667%_
                                     _%rest200690%_
                                     (cons _%path200691%_
                                           _%result200670%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest200671200679%_))
                            (let ((_%hd200676200696%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200671200679%_)))
                                  (_%tl200677200698%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200671200679%_))))
                              (let* ((_%path200701%_ _%hd200676200696%_)
                                     (_%rest200703%_ _%tl200677200698%_))
                                (_%K200675200693%_
                                 _%rest200703%_
                                 _%path200701%_)))
                            (_%else200673200687%_))))))
                 (_%compile-stub200538%_
                  (lambda (_%output-scm200545%_ _%output-bin200546%_)
                    (let* ((_%gerbil-home200548%_
                            (let ((__tmp200965
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200965)))
                           (_%gerbil-libdir200550%_
                            (path-expand '"lib" _%gerbil-home200548%_))
                           (_%gerbil-staticdir200552%_
                            (path-expand '"static" _%gerbil-libdir200550%_))
                           (_%deps200554%_
                            (gxc#find-runtime-module-deps _%ctx200526%_))
                           (_%libgerbil-deps200556%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?200533%_
                               _%deps200554%_)))
                           (_%libgerbil-scm200558%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps200556%_)))
                           (_%libgerbil-scm200560%_
                            (_%fold-libgerbil-runtime-scm200536%_
                             _%gerbil-staticdir200552%_
                             _%libgerbil-scm200558%_))
                           (_%libgerbil-c200566%_
                            (map (lambda (_%g200561200563%_)
                                   (_%replace-extension200531%_
                                    _%g200561200563%_
                                    '".c"))
                                 _%libgerbil-scm200560%_))
                           (_%libgerbil-o200572%_
                            (map (lambda (_%g200567200569%_)
                                   (_%replace-extension200531%_
                                    _%g200567200569%_
                                    '".o"))
                                 _%libgerbil-scm200560%_))
                           (_%src-deps200574%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?200532%_
                               _%deps200554%_)))
                           (_%src-deps-scm200576%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps200574%_)))
                           (_%src-deps-scm200578%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?200535%_
                               _%src-deps-scm200576%_)))
                           (_%src-deps-scm200580%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm200578%_)))
                           (_%src-deps-c200586%_
                            (let ((__tmp200966
                                   (lambda (_%g200581200583%_)
                                     (_%replace-extension200531%_
                                      _%g200581200583%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp200966 _%src-deps-scm200580%_)))
                           (_%src-deps-o200592%_
                            (let ((__tmp200967
                                   (lambda (_%g200587200589%_)
                                     (_%replace-extension200531%_
                                      _%g200587200589%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp200967 _%src-deps-scm200580%_)))
                           (_%src-bin-scm200594%_
                            (gxc#find-static-module-file _%ctx200526%_))
                           (_%src-bin-scm200596%_
                            (path-expand _%src-bin-scm200594%_))
                           (_%src-bin-c200598%_
                            (_%replace-extension200531%_
                             _%src-bin-scm200596%_
                             '".c"))
                           (_%src-bin-o200600%_
                            (_%replace-extension200531%_
                             _%src-bin-scm200596%_
                             '".o"))
                           (_%output-bin200602%_
                            (path-expand _%output-bin200546%_))
                           (_%output-scm200604%_
                            (path-expand _%output-scm200545%_))
                           (_%output-c200606%_
                            (_%replace-extension200531%_
                             _%output-scm200604%_
                             '".c"))
                           (_%output-o200608%_
                            (_%replace-extension200531%_
                             _%output-scm200604%_
                             '".o"))
                           (_%output_-c200610%_
                            (_%replace-extension200531%_
                             _%output-scm200604%_
                             '"_.c"))
                           (_%output_-o200612%_
                            (_%replace-extension200531%_
                             _%output-scm200604%_
                             '"_.o"))
                           (_%gsc-link-opts200614%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200616%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200618%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir200552%_))
                           (_%output-ld-opts200620%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts200622%_
                            (_%get-libgerbil-ld-opts200530%_
                             _%gerbil-libdir200550%_))
                           (_%rpath200624%_
                            (gxc#gerbil-rpath _%gerbil-libdir200550%_))
                           (_%builtin-modules200628%_
                            (_%remove-duplicates200537%_
                             (let ((__tmp200968
                                    (let ((__tmp200970
                                           (lambda (_%mod200626%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod200626%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp200969
                                           (cons _%ctx200526%_
                                                 _%deps200554%_)))
                                      (declare (not safe))
                                      (##map __tmp200970 __tmp200969))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp200968)))))
                      (letrec ((_%compile-obj200631%_
                                (lambda (_%scm-path200638%_ _%c-path200639%_)
                                  (let* ((_%o-path200641%_
                                          (_%replace-extension200531%_
                                           _%c-path200639%_
                                           '".o"))
                                         (_%lock200643%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path200641%_
                                             '".lock")))
                                         (_%locked200645%_ '#f)
                                         (_%unlock200648%_
                                          (lambda ()
                                            (close-port _%locked200645%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock200643%_)))))
                                    (let _%retry200651%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock200643%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry200651%_))
                                          (begin
                                            (set! _%locked200645%_
                                                  (let ((__tmp200971
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock200643%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp200971)))
                                            (if _%locked200645%_
                                                '#!void
                                                (_%retry200651%_)))))
                                    (let ((__tmp200973
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path200641%_)))
                                                     (not _%scm-path200638%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path200638%_
                                                        _%o-path200641%_)))
                                                 (let ((_%gsc-cc-opts200662%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp200974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp200975 (cons _%c-path200639%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp200975
                            _%gsc-static-opts200618%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200974 _%gsc-cc-opts200662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp200972
                                           (lambda () (_%unlock200648%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp200973
                                       __tmp200972))))))
                        (let ((__tmp200976
                               (lambda ()
                                 (let ((__tmp200977
                                        (path-directory _%output-bin200602%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp200977)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp200976))
                        (gxc#with-output-to-scheme-file
                         _%output-scm200604%_
                         (lambda ()
                           (_%generate-stub200529%_
                            _%builtin-modules200628%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it200636%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp200978
                                                   (let ((__tmp200979
                                                          (let ((__tmp200980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm200596%_
                               (cons _%output-scm200604%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200980 _%src-deps-scm200580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp200979
                                                      _%libgerbil-c200566%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp200978
                                               _%gsc-link-opts200614%_))))
                                     (for-each
                                      _%compile-obj200631%_
                                      (let ((__tmp200981
                                             (cons _%src-bin-scm200596%_
                                                   (cons _%output-scm200604%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200981
                                         _%src-deps-scm200580%_))
                                      (let ((__tmp200982
                                             (cons _%src-bin-c200598%_
                                                   (cons _%output-c200606%_
                                                         (cons _%output_-c200610%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200982
                                         _%src-deps-c200586%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin200602%_
                                                        (let ((__tmp200983
                                                               (cons _%src-bin-o200600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o200608%_
                                   (cons _%output_-o200612%_
                                         (let ((__tmp200984
                                                (let ((__tmp200985
                                                       (let ((__tmp200987
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir200550%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts200622%_))))
                     (__tmp200986
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath200624%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp200987 __tmp200986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp200985
                                                   _%output-ld-opts200620%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp200984
                                            _%libgerbil-o200572%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp200983 _%src-deps-o200592%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp200988
                                            (cons _%output-c200606%_
                                                  (cons _%output_-c200610%_
                                                        (cons _%output-o200608%_
                                                              (cons _%output_-o200612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp200988)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it200636%_))
                                  (_%compile-it200636%_)))
                            '#!void))))))
          (let* ((_%output-bin200540%_
                  (gxc#compile-exe-output-file _%ctx200526%_ _%opts200527%_))
                 (_%output-scm200542%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200540%_ '"__exe.scm"))))
            (_%compile-stub200538%_
             _%output-scm200542%_
             _%output-bin200540%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx200348%_ _%opts200349%_)
        (letrec ((_%reset-declare200351%_
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
                 (_%generate-stub200352%_
                  (lambda (_%deps200517%_)
                    (let ((_%mod-main200519%_
                           (gxc#find-runtime-symbol _%ctx200348%_ 'main))
                          (_%reset-decl200520%_ (_%reset-declare200351%_))
                          (_%user-decl200521%_ (_%user-declare200353%_)))
                      (for-each
                       (lambda (_%dep200523%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl200520%_))
                         (newline)
                         (if _%user-decl200521%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl200521%_))
                               (newline))
                             '#!void)
                         (let ((__tmp200989
                                (cons 'include (cons _%dep200523%_ '()))))
                           (declare (not safe))
                           (##write __tmp200989))
                         (newline))
                       _%deps200517%_)
                      (let ((__tmp200990
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main200519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp200990))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare200353%_
                  (lambda ()
                    (let* ((_%gsc-opts200422%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts200349%_)))
                           (_%gsc-prelude200424%_
                            (if _%gsc-opts200422%_
                                (member '"-prelude" _%gsc-opts200422%_)
                                '#f))
                           (_%gsc-prelude200426%_
                            (if _%gsc-prelude200424%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude200424%_)))
                                '#f)))
                      (let _%lp200429%_ ((_%rest200431%_
                                          (cons _%gsc-prelude200426%_ '()))
                                         (_%user-decls200432%_ '()))
                        (let* ((_%rest200433200441%_ _%rest200431%_)
                               (_%else200435200449%_
                                (lambda ()
                                  (if (null? _%user-decls200432%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls200432%_)))))
                               (_%K200437200505%_
                                (lambda (_%rest200452%_ _%expr200453%_)
                                  (let* ((_%expr200454200466%_ _%expr200453%_)
                                         (_%else200457200474%_
                                          (lambda ()
                                            (_%lp200429%_
                                             _%rest200452%_
                                             _%user-decls200432%_))))
                                    (let ((_%K200462200495%_
                                           (lambda (_%decls200493%_)
                                             (_%lp200429%_
                                              _%rest200452%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls200432%_
                                                 _%decls200493%_)))))
                                          (_%K200459200480%_
                                           (lambda (_%exprs200478%_)
                                             (_%lp200429%_
                                              (append _%exprs200478%_
                                                      _%rest200452%_)
                                              _%user-decls200432%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr200454200466%_))
                                          (let ((_%tl200464200500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr200454200466%_)))
                                                (_%hd200463200498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr200454200466%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200463200498%_
                                                         'declare))
                                                (let ((_%decls200503%_
                                                       _%tl200464200500%_))
                                                  (_%K200462200495%_
                                                   _%decls200503%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd200463200498%_
                                                             'begin))
                                                    (let ((_%exprs200488%_
                                                           _%tl200464200500%_))
                                                      (_%K200459200480%_
                                                       _%exprs200488%_))
                                                    (_%else200457200474%_))))
                                          (_%else200457200474%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest200433200441%_))
                              (let ((_%hd200438200508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest200433200441%_)))
                                    (_%tl200439200510%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest200433200441%_))))
                                (let* ((_%expr200513%_ _%hd200438200508%_)
                                       (_%rest200515%_ _%tl200439200510%_))
                                  (_%K200437200505%_
                                   _%rest200515%_
                                   _%expr200513%_)))
                              (_%else200435200449%_)))))))
                 (_%compile-stub200354%_
                  (lambda (_%output-scm200361%_ _%output-bin200362%_)
                    (let* ((_%gerbil-home200364%_
                            (let ((__tmp200991
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200991)))
                           (_%gerbil-libdir200366%_
                            (path-expand '"lib" _%gerbil-home200364%_))
                           (_%runtime200368%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp200370%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home200364%_))
                           (_%include-gambit-sharp200372%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp200370%_
                               '"\")")))
                           (_%bin-scm200374%_
                            (gxc#find-static-module-file _%ctx200348%_))
                           (_%deps200376%_
                            (gxc#find-runtime-module-deps _%ctx200348%_))
                           (_%deps200378%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps200376%_)))
                           (_%deps200383%_
                            (let ((__tmp200992
                                   (lambda (_%$obj200380%_)
                                     (not (gxc#file-empty? _%$obj200380%_)))))
                              (declare (not safe))
                              (##filter __tmp200992 _%deps200378%_)))
                           (_%deps200387%_
                            (let ((__tmp200993
                                   (lambda (_%f200385%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f200385%_
                                             _%runtime200368%_))))))
                              (declare (not safe))
                              (##filter __tmp200993 _%deps200383%_)))
                           (_%output-base200389%_
                            (let ((__tmp200994
                                   (path-strip-extension
                                    _%output-scm200361%_)))
                              (declare (not safe))
                              (##string-append __tmp200994)))
                           (_%output-c200391%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200389%_ '".c")))
                           (_%output-o200393%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200389%_ '".o")))
                           (_%output-c_200395%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200389%_ '"_.c")))
                           (_%output-o_200397%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200389%_ '"_.o")))
                           (_%gsc-link-opts200399%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200401%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200403%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir200366%_)))
                           (_%output-ld-opts200405%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros200407%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp200372%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp200372%_
                                            '()))))
                           (_%gsc-link-opts200409%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts200399%_
                               _%gsc-gx-macros200407%_)))
                           (_%rpath200411%_
                            (gxc#gerbil-rpath _%gerbil-libdir200366%_))
                           (_%default-ld-options200413%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp200995
                             (lambda ()
                               (let ((__tmp200996
                                      (path-directory _%output-bin200362%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp200996)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp200995))
                      (gxc#with-output-to-scheme-file
                       _%output-scm200361%_
                       (lambda ()
                         (_%generate-stub200352%_
                          (let ((__tmp200997
                                 (let ((__tmp200998
                                        (cons _%bin-scm200374%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp200998
                                    _%deps200387%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp200997 _%runtime200368%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it200419%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_200395%_
                                                      (let ((__tmp200999
                                                             (cons _%output-scm200361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp200999 _%gsc-link-opts200409%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp201000
                                                 (let ((__tmp201001
                                                        (cons _%output-c200391%_
                                                              (cons _%output-c_200395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp201001
                                                    _%gsc-static-opts200403%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp201000
                                             _%gsc-cc-opts200401%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin200362%_
                                                      (cons _%output-o200393%_
                                                            (cons _%output-o_200397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201002
                                 (let ((__tmp201004
                                        (cons '"-L"
                                              (cons _%gerbil-libdir200366%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options200413%_))))
                                       (__tmp201003
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath200411%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp201004 __tmp201003))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp201002
                             _%output-ld-opts200405%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it200419%_))
                                (_%compile-it200419%_)))
                          '#!void)))))
          (let* ((_%output-bin200356%_
                  (gxc#compile-exe-output-file _%ctx200348%_ _%opts200349%_))
                 (_%output-scm200358%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200356%_ '"__exe.scm"))))
            (_%compile-stub200354%_
             _%output-scm200358%_
             _%output-bin200356%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx200297%_ _%id200298%_)
        (let ((_%$e200344%_
               (let ((__tmp201006
                      (lambda (_%e200299200301%_)
                        (let* ((_%g200303200313%_ _%e200299200301%_)
                               (_%else200305200321%_ (lambda () '#f))
                               (_%K200307200325%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g200303200313%_
                                 'gx#module-export::t))
                              (let* ((_%e200308200328%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200303200313%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e200309200331%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200303200313%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e200310200334%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200303200313%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e200310200334%_ '0))
                                    (let ((_%e200311200337%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g200303200313%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g200339200341%_)
                                             (eq? _%g200339200341%_
                                                  _%id200298%_))
                                           _%e200311200337%_)
                                          (_%K200307200325%_)
                                          (_%else200305200321%_)))
                                    (_%else200305200321%_)))
                              (_%else200305200321%_)))))
                     (__tmp201005
                      (##structure-ref
                       _%ctx200297%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp201006 __tmp201005))))
          (if _%$e200344%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e200344%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx200288%_ _%id200289%_)
        (let ((_%$e200291%_
               (gxc#find-export-binding _%ctx200288%_ _%id200289%_)))
          (if _%$e200291%_
              ((lambda (_%bind200294%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind200294%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id200289%_)))
                 (##structure-ref _%bind200294%_ '1 gx#binding::t '#f))
               _%$e200291%_)
              (let ((__tmp201007
                     (##structure-ref
                      _%ctx200288%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp201007
                 _%id200289%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx200154%_)
        (letrec* ((_%ht200156%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template200157%_
                   (lambda (_%in200233%_ _%phi200234%_)
                     (let ((_%iphi200236%_
                            (fx+ _%phi200234%_
                                 (##direct-structure-ref
                                  _%in200233%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports200237%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in200233%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp200239%_ ((_%rest200241%_ _%imports200237%_)
                                          (_%r200242%_ '()))
                         (let* ((_%rest200243200251%_ _%rest200241%_)
                                (_%else200245200259%_ (lambda () _%r200242%_))
                                (_%K200247200276%_
                                 (lambda (_%rest200262%_ _%in200263%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in200263%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi200236%_))
                                           (_%lp200239%_
                                            _%rest200262%_
                                            (cons _%in200263%_ _%r200242%_))
                                           (_%lp200239%_
                                            _%rest200262%_
                                            _%r200242%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in200263%_
                                              'gx#module-import::t))
                                           (let ((_%iphi200267%_
                                                  (fx+ _%phi200234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in200263%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi200267%_))
                                                 (_%lp200239%_
                                                  _%rest200262%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in200263%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r200242%_))
                                                 (_%lp200239%_
                                                  _%rest200262%_
                                                  _%r200242%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in200263%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi200270%_
                                                      (fx+ _%iphi200236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in200263%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi200270%_))
                                                     (_%lp200239%_
                                                      _%rest200262%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in200263%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r200242%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi200270%_))
                                                         (_%lp200239%_
                                                          _%rest200262%_
                                                          (let ((__tmp201008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template200157%_
                          _%in200263%_
                          _%iphi200236%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r200242%_ __tmp201008)))
                 (_%lp200239%_ _%rest200262%_ _%r200242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp200239%_
                                                _%rest200262%_
                                                _%r200242%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest200243200251%_))
                               (let ((_%hd200248200279%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest200243200251%_)))
                                     (_%tl200249200281%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest200243200251%_))))
                                 (let* ((_%in200284%_ _%hd200248200279%_)
                                        (_%rest200286%_ _%tl200249200281%_))
                                   (_%K200247200276%_
                                    _%rest200286%_
                                    _%in200284%_)))
                               (_%else200245200259%_)))))))
                  (_%find-deps200158%_
                   (lambda (_%rest200166%_ _%deps200167%_)
                     (let* ((_%rest200168200176%_ _%rest200166%_)
                            (_%else200170200184%_ (lambda () _%deps200167%_))
                            (_%K200172200221%_
                             (lambda (_%rest200187%_ _%hd200188%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd200188%_
                                      'gx#module-context::t))
                                   (let ((_%id200191%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd200188%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports200192%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd200188%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht200156%_
                                            _%id200191%_))
                                         (_%find-deps200158%_
                                          _%rest200187%_
                                          _%deps200167%_)
                                         (let ((_%$e200195%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd200188%_))))
                                           (if _%$e200195%_
                                               ((lambda (_%pre200198%_)
                                                  (let ((_%xdeps200200%_
                                                         (_%find-deps200158%_
                                                          (cons _%pre200198%_
                                                                _%imports200192%_)
                                                          _%deps200167%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht200156%_
                                                       _%id200191%_
                                                       _%hd200188%_))
                                                    (_%find-deps200158%_
                                                     _%rest200187%_
                                                     (cons _%hd200188%_
                                                           _%xdeps200200%_))))
                                                _%$e200195%_)
                                               (let ((_%xdeps200203%_
                                                      (_%find-deps200158%_
                                                       _%imports200192%_
                                                       _%deps200167%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht200156%_
                                                    _%id200191%_
                                                    _%hd200188%_))
                                                 (_%find-deps200158%_
                                                  _%rest200187%_
                                                  (cons _%hd200188%_
                                                        _%xdeps200203%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd200188%_
                                          'gx#prelude-context::t))
                                       (let ((_%id200206%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd200188%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht200156%_
                                                _%id200206%_))
                                             (_%find-deps200158%_
                                              _%rest200187%_
                                              _%deps200167%_)
                                             (let ((_%xdeps200210%_
                                                    (_%find-deps200158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd200188%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps200167%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht200156%_
                                                      _%id200206%_))
                                                   (_%find-deps200158%_
                                                    _%rest200187%_
                                                    _%xdeps200210%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht200156%_
                                                        _%id200206%_
                                                        _%hd200188%_))
                                                     (_%find-deps200158%_
                                                      _%rest200187%_
                                                      (cons _%hd200188%_
                                                            _%xdeps200210%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd200188%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd200188%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps200158%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd200188%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest200187%_)
                                                _%deps200167%_)
                                               (_%find-deps200158%_
                                                _%rest200187%_
                                                _%deps200167%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd200188%_
                                                  'gx#module-export::t))
                                               (_%find-deps200158%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd200188%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest200187%_)
                                                _%deps200167%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd200188%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd200188%_ '2 '#f '#f)))
               (_%find-deps200158%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd200188%_ '1 '#f '#f))
                      _%rest200187%_)
                _%deps200167%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd200188%_ '2 '#f '#f)))
                   (let ((_%xdeps200217%_
                          (_%import-set-template200157%_ _%hd200188%_ '0)))
                     (_%find-deps200158%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest200187%_ _%xdeps200217%_))
                      _%deps200167%_))
                   (_%find-deps200158%_ _%rest200187%_ _%deps200167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd200188%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest200168200176%_))
                           (let ((_%hd200173200224%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest200168200176%_)))
                                 (_%tl200174200226%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest200168200176%_))))
                             (let* ((_%hd200229%_ _%hd200173200224%_)
                                    (_%rest200231%_ _%tl200174200226%_))
                               (_%K200172200221%_
                                _%rest200231%_
                                _%hd200229%_)))
                           (_%else200170200184%_))))))
          (let ((__tmp201009
                 (filter gx#expander-context-id
                         (_%find-deps200158%_
                          (let ((_%$e200160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx200154%_))))
                            (if _%$e200160%_
                                ((lambda (_%pre200163%_)
                                   (cons _%pre200163%_
                                         (##structure-ref
                                          _%ctx200154%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e200160%_)
                                (##structure-ref
                                 _%ctx200154%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp201009)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx200084%_)
        (let* ((_%context-id200086%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx200084%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx200084%_ '1 '#f '#f))
                    (string->symbol _%ctx200084%_)))
               (_%scm200088%_
                (let ((__tmp201010
                       (gxc#static-module-name _%context-id200086%_)))
                  (declare (not safe))
                  (##string-append __tmp201010 '".scm")))
               (_%dirs200090%_ (let () (declare (not safe)) (load-path)))
               (_%dirs200096%_
                (let ((_%user-libpath200092%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath200092%_
                      (let ((_%user-libpath200094%_
                             (path-expand '"lib" _%user-libpath200092%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath200094%_ _%dirs200090%_))
                            _%dirs200090%_
                            (cons _%user-libpath200094%_ _%dirs200090%_)))
                      _%dirs200090%_)))
               (_%dirs200106%_
                (let ((_%$e200098%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e200098%_
                      ((lambda (_%g200100200102%_)
                         (cons _%g200100200102%_ _%dirs200096%_))
                       _%$e200098%_)
                      _%dirs200096%_)))
               (_%dirs200112%_
                (let ((__tmp201011
                       (lambda (_%g200107200109%_)
                         (path-expand '"static" _%g200107200109%_))))
                  (declare (not safe))
                  (##map __tmp201011 _%dirs200106%_))))
          (let _%lp200115%_ ((_%rest200117%_ _%dirs200112%_))
            (let* ((_%rest200118200126%_ _%rest200117%_)
                   (_%else200120200134%_
                    (lambda ()
                      (let ((__tmp201012
                             (##structure-ref
                              _%ctx200084%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp201012
                         _%scm200088%_))))
                   (_%K200122200142%_
                    (lambda (_%rest200137%_ _%dir200138%_)
                      (let ((_%path200140%_
                             (path-expand _%scm200088%_ _%dir200138%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path200140%_))
                            _%path200140%_
                            (_%lp200115%_ _%rest200137%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest200118200126%_))
                  (let ((_%hd200123200145%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200118200126%_)))
                        (_%tl200124200147%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200118200126%_))))
                    (let* ((_%dir200150%_ _%hd200123200145%_)
                           (_%rest200152%_ _%tl200124200147%_))
                      (_%K200122200142%_ _%rest200152%_ _%dir200150%_)))
                  (_%else200120200134%_)))))))
    (define gxc#file-empty?
      (lambda (_%path200082%_)
        (zero? (let ((__tmp201013 (file-info _%path200082%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp201013)))))
    (define gxc#compile-top-module
      (lambda (_%ctx200078%_)
        (let ((__tmp201017
               (lambda ()
                 (let ((__tmp201018
                        (##structure-ref
                         _%ctx200078%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp201018))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp201019
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx200078%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp201019))
                     '#!void)
                 (gxc#collect-bindings _%ctx200078%_)
                 (gxc#compile-runtime-code _%ctx200078%_)
                 (gxc#compile-meta-code _%ctx200078%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx200078%_)
                     '#!void)))
              (__tmp201016
               (let ((__obj200940
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj200940))
                 __obj200940))
              (__tmp201015 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201014
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
           __tmp201017
           gx#current-expander-context
           _%ctx200078%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp201016
           gxc#current-compile-runtime-sections
           __tmp201015
           gxc#current-compile-runtime-names
           __tmp201014))))
    (define gxc#collect-bindings
      (lambda (_%ctx200076%_)
        (let ((__tmp201020
               (##structure-ref _%ctx200076%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp201020))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx200024%_)
        (letrec ((_%compile1200026%_
                  (lambda (_%ctx200065%_)
                    (let* ((_%code200067%_
                            (##structure-ref
                             _%ctx200065%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm200071%_
                            (let ((_%idstr200069%_
                                   (let ((__tmp201021
                                          (##structure-ref
                                           _%ctx200065%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp201021))))
                              (declare (not safe))
                              (##string-append _%idstr200069%_ '"~0")))
                           (_%rtc?200073%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code200067%_))))
                      (if _%rtc?200073%_
                          (let ((__tmp201022
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp201022
                             _%ctx200065%_
                             _%rtm200071%_))
                          '#!void)
                      (_%generate-runtime-code200028%_
                       _%ctx200065%_
                       _%code200067%_
                       (if _%rtc?200073%_ _%rtm200071%_ '#f)))))
                 (_%context-timestamp200027%_
                  (lambda (_%ctx200063%_)
                    (let ((__tmp201023
                           (let ((__tmp201024
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx200063%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp201024 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp201023))))
                 (_%generate-runtime-code200028%_
                  (lambda (_%ctx200035%_ _%code200036%_ _%rtm200037%_)
                    (let* ((_%runtime-code?200039%_ (if _%rtm200037%_ '#t '#f))
                           (_%lifts200041%_ (box '()))
                           (_%runtime-code200044%_
                            (if _%runtime-code?200039%_
                                (let ((__tmp201027
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code200036%_))))
                                      (__tmp201026
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp201025
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp201027
                                   gx#current-expander-context
                                   _%ctx200035%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts200041%_
                                   gxc#current-compile-marks
                                   __tmp201026
                                   gxc#current-compile-identifiers
                                   __tmp201025))
                                '#f))
                           (_%runtime-code200046%_
                            (if _%runtime-code?200039%_
                                (if (null? (unbox _%lifts200041%_))
                                    _%runtime-code200044%_
                                    (cons 'begin
                                          (let ((__tmp201029
                                                 (cons _%runtime-code200044%_
                                                       '()))
                                                (__tmp201028
                                                 (reverse (unbox _%lifts200041%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp201029
                                             __tmp201028))))
                                '#f))
                           (_%runtime-code200048%_
                            (if _%runtime-code?200039%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp200027%_
                                                         _%ctx200035%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code200046%_ '())))
                                '#f))
                           (_%loader-code200051%_
                            (let ((__tmp201030
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code200036%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp201030
                               gx#current-expander-context
                               _%ctx200035%_)))
                           (_%loader-code200053%_
                            (cons 'begin
                                  (cons _%loader-code200051%_
                                        (cons (if _%runtime-code?200039%_
                                                  (cons 'load-module
                                                        (cons _%rtm200037%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0200055%_
                            (gxc#compile-output-file _%ctx200035%_ '0 '".scm"))
                           (_%scmrt200057%_
                            (gxc#compile-output-file
                             _%ctx200035%_
                             '#f
                             '".scm"))
                           (_%scms200059%_
                            (gxc#compile-static-output-file _%ctx200035%_)))
                      (if _%runtime-code?200039%_
                          (gxc#compile-scm-file__0
                           _%scm0200055%_
                           _%runtime-code200048%_)
                          '#!void)
                      (let ((__tmp201031
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt200057%_
                                _%loader-code200053%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp201031
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms200059%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms200059%_))
                          '#!void)
                      (if _%runtime-code?200039%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0200055%_ _%scms200059%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms200059%_ void)))))))
          (let* ((_%all-modules200030%_
                  (cons _%ctx200024%_ (gxc#lift-nested-modules _%ctx200024%_)))
                 (__tmp201032
                  (lambda (_%ctx200032%_)
                    (let ((__tmp201033
                           (lambda () (_%compile1200026%_ _%ctx200032%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp201033
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp201032 _%all-modules200030%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx199924%_)
        (letrec ((_%compile-ssi199926%_
                  (lambda (_%code199992%_)
                    (let* ((_%path199994%_
                            (gxc#compile-output-file
                             _%ctx199924%_
                             '#f
                             '".ssi"))
                           (_%prelude200006%_
                            (let* ((_%super199996%_
                                    (##structure-ref
                                     _%ctx199924%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e199998%_
                                    (##structure-ref
                                     _%super199996%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e199998%_
                                  ((lambda (_%g200000200002%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g200000200002%_)))
                                   _%$e199998%_)
                                  ':<root>)))
                           (_%ns200008%_
                            (##structure-ref
                             _%ctx199924%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr200010%_
                            (symbol->string
                             (##structure-ref
                              _%ctx199924%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg200018%_
                            (let ((_%$e200012%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr200010%_ '#\/))))
                              (if _%$e200012%_
                                  ((lambda (_%x200015%_)
                                     (let ((__tmp201034
                                            (substring
                                             _%idstr200010%_
                                             '0
                                             _%x200015%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp201034)))
                                   _%$e200012%_)
                                  '#f)))
                           (_%rt200020%_
                            (let ((__tmp201035
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp201035 _%ctx199924%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path199994%_))
                      (gxc#with-output-to-scheme-file
                       _%path199994%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude200006%_))
                         (if _%pkg200018%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg200018%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns200008%_))
                         (newline)
                         (pretty-print _%code199992%_)
                         (if _%rt200020%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt200020%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi199927%_
                  (lambda (_%part199932%_)
                    (let* ((_%part199933199946%_ _%part199932%_)
                           (_%E199935199950%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part199933199946%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K199936199961%_
                            (lambda (_%code199953%_
                                     _%n199954%_
                                     _%phi199955%_
                                     _%phi-ctx199956%_)
                              (let ((_%code199959%_
                                     (let ((__tmp201036
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code199953%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201036
                                        gx#current-expander-context
                                        _%phi-ctx199956%_
                                        gx#current-expander-phi
                                        _%phi199955%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx199924%_
                                  _%n199954%_
                                  '".scm")
                                 _%code199959%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part199933199946%_))
                          (let ((_%hd199937199964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part199933199946%_)))
                                (_%tl199938199966%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part199933199946%_))))
                            (let ((_%phi-ctx199969%_ _%hd199937199964%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199938199966%_))
                                  (let ((_%hd199939199971%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199938199966%_)))
                                        (_%tl199940199973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199938199966%_))))
                                    (let ((_%phi199976%_ _%hd199939199971%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl199940199973%_))
                                          (let ((_%hd199941199978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl199940199973%_)))
                                                (_%tl199942199980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199940199973%_))))
                                            (let ((_%n199983%_
                                                   _%hd199941199978%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl199942199980%_))
                                                  (let ((_%hd199943199985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl199942199980%_)))
                                                        (_%tl199944199987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl199942199980%_))))
                                                    (let ((_%code199990%_
                                                           _%hd199943199985%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl199944199987%_))
                                                          (_%K199936199961%_
                                                           _%code199990%_
                                                           _%n199983%_
                                                           _%phi199976%_
                                                           _%phi-ctx199969%_)
                                                          (_%E199935199950%_))))
                                                  (_%E199935199950%_))))
                                          (_%E199935199950%_))))
                                  (_%E199935199950%_))))
                          (_%E199935199950%_))))))
          (let ((_g201037_ (gxc#generate-meta-code _%ctx199924%_)))
            (begin
              (let ((_g201038_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g201037_)
                           (##vector-length _g201037_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g201038_ 2)))
                    (error "Context expects 2 values" _g201038_)))
              (let ((_%ssi-code199929%_
                     (let () (declare (not safe)) (##vector-ref _g201037_ 0)))
                    (_%phi-code199930%_
                     (let () (declare (not safe)) (##vector-ref _g201037_ 1))))
                (begin
                  (_%compile-ssi199926%_ _%ssi-code199929%_)
                  (for-each _%compile-phi199927%_ _%phi-code199930%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx199906%_)
        (let* ((_%path199908%_
                (gxc#compile-output-file _%ctx199906%_ '#f '".ssxi.ss"))
               (_%code199910%_
                (let ((__tmp201039
                       (##structure-ref
                        _%ctx199906%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp201039)))
               (_%idstr199912%_
                (symbol->string
                 (##structure-ref
                  _%ctx199906%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg199920%_
                (let ((_%$e199914%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr199912%_ '#\/))))
                  (if _%$e199914%_
                      ((lambda (_%x199917%_)
                         (let ((__tmp201040
                                (substring _%idstr199912%_ '0 _%x199917%_)))
                           (declare (not safe))
                           (##string->symbol __tmp201040)))
                       _%$e199914%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path199908%_))
          (gxc#with-output-to-scheme-file
           _%path199908%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg199920%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg199920%_))
                 '#!void)
             (newline)
             (pretty-print _%code199910%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx199899%_)
        (let* ((_%state199901%_
                (let ((__obj200941
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj200941 _%ctx199899%_))
                  __obj200941))
               (_%ssi-code199903%_
                (let ((__tmp201041
                       (##structure-ref
                        _%ctx199899%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state199901%_
                   __tmp201041))))
          (values _%ssi-code199903%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state199901%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx199892%_)
        (let ((_%lifts199894%_ (box '())))
          (let ((__tmp201044
                 (lambda ()
                   (let ((_%code199897%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx199892%_))))
                     (if (null? (unbox _%lifts199894%_))
                         _%code199897%_
                         (cons 'begin
                               (let ((__tmp201046 (cons _%code199897%_ '()))
                                     (__tmp201045
                                      (reverse (unbox _%lifts199894%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp201046 __tmp201045)))))))
                (__tmp201043
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp201042
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp201044
             gxc#current-compile-lift
             _%lifts199894%_
             gxc#current-compile-marks
             __tmp201043
             gxc#current-compile-identifiers
             __tmp201042)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx199888%_)
        (let ((_%modules199890%_ (box '())))
          (let ((__tmp201047
                 (##structure-ref _%ctx199888%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules199890%_ __tmp201047))
          (reverse (unbox _%modules199890%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path199868%_ _%code199869%_ _%phi?199870%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path199868%_))
        (gxc#with-output-to-scheme-file
         _%path199868%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp201048
                                           (if _%phi?199870%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp201048)))))))
           (pretty-print _%code199869%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it199874%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path199868%_ _%phi?199870%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp201049
                         (cons 'compile-file (cons _%path199868%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it199874%_ __tmp201049))
                  (_%compile-it199874%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path199879%_ _%code199880%_)
        (let ((_%phi?199882%_ '#f))
          (gxc#compile-scm-file__%
           _%path199879%_
           _%code199880%_
           _%phi?199882%_))))
    (define gxc#compile-scm-file
      (lambda _g201051_
        (let ((_g201050_ (let () (declare (not safe)) (##length _g201051_))))
          (cond ((let () (declare (not safe)) (##fx= _g201050_ 2))
                 (apply gxc#compile-scm-file__0 _g201051_))
                ((let () (declare (not safe)) (##fx= _g201050_ 3))
                 (apply gxc#compile-scm-file__% _g201051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g201051_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?199769%_)
        (let _%lp199771%_ ((_%rest199773%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199774%_ '()))
          (let* ((_%rest199775199795%_ _%rest199773%_)
                 (_%else199779199803%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts199774%_)))
                        (reverse _%opts199774%_)))))
            (let ((_%K199789199846%_
                   (lambda (_%rest199844%_)
                     (_%lp199771%_ _%rest199844%_ _%opts199774%_)))
                  (_%K199784199828%_
                   (lambda (_%rest199826%_)
                     (_%lp199771%_ _%rest199826%_ _%opts199774%_)))
                  (_%K199781199810%_
                   (lambda (_%rest199807%_ _%opt199808%_)
                     (_%lp199771%_
                      _%rest199807%_
                      (cons _%opt199808%_ _%opts199774%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest199775199795%_))
                  (let ((_%tl199791199851%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199775199795%_)))
                        (_%hd199790199849%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199775199795%_))))
                    (if (equal? _%hd199790199849%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199791199851%_))
                            (let* ((_%tl199793199854%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199791199851%_)))
                                   (_%rest199857%_ _%tl199793199854%_))
                              (_%K199789199846%_ _%rest199857%_))
                            (let ((_%opt199818%_ _%hd199790199849%_)
                                  (_%rest199820%_ _%tl199791199851%_))
                              (_%K199781199810%_
                               _%rest199820%_
                               _%opt199818%_)))
                        (if (equal? _%hd199790199849%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199791199851%_))
                                (let* ((_%tl199788199836%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl199791199851%_)))
                                       (_%rest199839%_ _%tl199788199836%_))
                                  (_%K199784199828%_ _%rest199839%_))
                                (let ((_%opt199818%_ _%hd199790199849%_)
                                      (_%rest199820%_ _%tl199791199851%_))
                                  (_%K199781199810%_
                                   _%rest199820%_
                                   _%opt199818%_)))
                            (let ((_%opt199818%_ _%hd199790199849%_)
                                  (_%rest199820%_ _%tl199791199851%_))
                              (_%K199781199810%_
                               _%rest199820%_
                               _%opt199818%_)))))
                  (_%else199779199803%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?199863%_ '#f)) (gxc#gsc-link-options__% _%phi?199863%_))))
    (define gxc#gsc-link-options
      (lambda _g201053_
        (let ((_g201052_ (let () (declare (not safe)) (##length _g201053_))))
          (cond ((let () (declare (not safe)) (##fx= _g201052_ 0))
                 (apply gxc#gsc-link-options__0 _g201053_))
                ((let () (declare (not safe)) (##fx= _g201052_ 1))
                 (apply gxc#gsc-link-options__% _g201053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g201053_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords199618%_ _%static?199614199619%_ _%phi?199621%_)
        (let ((_%static?199623%_
               (if (eq? _%static?199614199619%_ absent-value)
                   '#f
                   _%static?199614199619%_)))
          (if _%phi?199621%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp199625%_ ((_%rest199627%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199628%_ '()))
                (let* ((_%rest199629199655%_ _%rest199627%_)
                       (_%else199634199663%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts199628%_)))
                              (reverse! _%opts199628%_)))))
                  (let ((_%K199649199726%_
                         (lambda (_%rest199723%_ _%opt199724%_)
                           (if _%static?199623%_
                               (_%lp199625%_
                                _%rest199723%_
                                (cons _%opt199724%_
                                      (cons '"-cc-options" _%opts199628%_)))
                               (_%lp199625%_ _%rest199723%_ _%opts199628%_))))
                        (_%K199644199703%_
                         (lambda (_%rest199700%_ _%opt199701%_)
                           (_%lp199625%_
                            _%rest199700%_
                            (cons _%opt199701%_
                                  (cons '"-cc-options" _%opts199628%_)))))
                        (_%K199639199683%_
                         (lambda (_%rest199681%_)
                           (_%lp199625%_ _%rest199681%_ _%opts199628%_)))
                        (_%K199636199669%_
                         (lambda (_%rest199667%_)
                           (_%lp199625%_ _%rest199667%_ _%opts199628%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199629199655%_))
                        (let ((_%tl199651199731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199629199655%_)))
                              (_%hd199650199729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199629199655%_))))
                          (if (equal? _%hd199650199729%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199651199731%_))
                                  (let ((_%tl199653199736%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199651199731%_)))
                                        (_%hd199652199734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199651199731%_))))
                                    (if (equal? _%hd199652199734%_ '"-Bstatic")
                                        (let ((_%opt199739%_
                                               _%hd199652199734%_)
                                              (_%rest199741%_
                                               _%tl199653199736%_))
                                          (_%K199649199726%_
                                           _%rest199741%_
                                           _%opt199739%_))
                                        (let ((_%opt199716%_
                                               _%hd199652199734%_)
                                              (_%rest199718%_
                                               _%tl199653199736%_))
                                          (_%K199644199703%_
                                           _%rest199718%_
                                           _%opt199716%_))))
                                  (let ((_%rest199675%_ _%tl199651199731%_))
                                    (_%K199636199669%_ _%rest199675%_)))
                              (if (equal? _%hd199650199729%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199651199731%_))
                                      (let* ((_%tl199643199691%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199651199731%_)))
                                             (_%rest199694%_
                                              _%tl199643199691%_))
                                        (_%K199639199683%_ _%rest199694%_))
                                      (let ((_%rest199675%_
                                             _%tl199651199731%_))
                                        (_%K199636199669%_ _%rest199675%_)))
                                  (let ((_%rest199675%_ _%tl199651199731%_))
                                    (_%K199636199669%_ _%rest199675%_)))))
                        (_%else199634199663%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords199746%_ _%static?199614199747%_)
        (let ((_%phi?199749%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords199746%_
           _%static?199614199747%_
           _%phi?199749%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g201055_
        (let ((_g201054_ (let () (declare (not safe)) (##length _g201055_))))
          (cond ((let () (declare (not safe)) (##fx= _g201054_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g201055_))
                ((let () (declare (not safe)) (##fx= _g201054_ 3))
                 (apply gxc#gsc-cc-options__%__% _g201055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g201055_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords199758%_ . _%args199759%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords199758%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199758%_
                  'static:
                  absent-value))
               _%args199759%_)))
    (define gxc#gsc-cc-options
      (lambda _%args199615199765%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args199615199765%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords199463%_ _%static?199459199464%_ _%phi?199466%_)
        (let ((_%static?199468%_
               (if (eq? _%static?199459199464%_ absent-value)
                   '#f
                   _%static?199459199464%_)))
          (if _%phi?199466%_
              '()
              (let _%lp199470%_ ((_%rest199472%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199473%_ '()))
                (let* ((_%rest199474199500%_ _%rest199472%_)
                       (_%else199479199508%_
                        (lambda () (reverse! _%opts199473%_))))
                  (let ((_%K199494199571%_
                         (lambda (_%rest199568%_ _%opt199569%_)
                           (if _%static?199468%_
                               (_%lp199470%_
                                _%rest199568%_
                                (cons _%opt199569%_
                                      (cons '"-ld-options" _%opts199473%_)))
                               (_%lp199470%_ _%rest199568%_ _%opts199473%_))))
                        (_%K199489199548%_
                         (lambda (_%rest199545%_ _%opt199546%_)
                           (_%lp199470%_
                            _%rest199545%_
                            (cons _%opt199546%_
                                  (cons '"-ld-options" _%opts199473%_)))))
                        (_%K199484199528%_
                         (lambda (_%rest199526%_)
                           (_%lp199470%_ _%rest199526%_ _%opts199473%_)))
                        (_%K199481199514%_
                         (lambda (_%rest199512%_)
                           (_%lp199470%_ _%rest199512%_ _%opts199473%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199474199500%_))
                        (let ((_%tl199496199576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199474199500%_)))
                              (_%hd199495199574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199474199500%_))))
                          (if (equal? _%hd199495199574%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199496199576%_))
                                  (let ((_%tl199498199581%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199496199576%_)))
                                        (_%hd199497199579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199496199576%_))))
                                    (if (equal? _%hd199497199579%_ '"-static")
                                        (let ((_%opt199584%_
                                               _%hd199497199579%_)
                                              (_%rest199586%_
                                               _%tl199498199581%_))
                                          (_%K199494199571%_
                                           _%rest199586%_
                                           _%opt199584%_))
                                        (let ((_%opt199561%_
                                               _%hd199497199579%_)
                                              (_%rest199563%_
                                               _%tl199498199581%_))
                                          (_%K199489199548%_
                                           _%rest199563%_
                                           _%opt199561%_))))
                                  (let ((_%rest199520%_ _%tl199496199576%_))
                                    (_%K199481199514%_ _%rest199520%_)))
                              (if (equal? _%hd199495199574%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199496199576%_))
                                      (let* ((_%tl199488199536%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199496199576%_)))
                                             (_%rest199539%_
                                              _%tl199488199536%_))
                                        (_%K199484199528%_ _%rest199539%_))
                                      (let ((_%rest199520%_
                                             _%tl199496199576%_))
                                        (_%K199481199514%_ _%rest199520%_)))
                                  (let ((_%rest199520%_ _%tl199496199576%_))
                                    (_%K199481199514%_ _%rest199520%_)))))
                        (_%else199479199508%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords199591%_ _%static?199459199592%_)
        (let ((_%phi?199594%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords199591%_
           _%static?199459199592%_
           _%phi?199594%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g201057_
        (let ((_g201056_ (let () (declare (not safe)) (##length _g201057_))))
          (cond ((let () (declare (not safe)) (##fx= _g201056_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g201057_))
                ((let () (declare (not safe)) (##fx= _g201056_ 3))
                 (apply gxc#gsc-ld-options__%__% _g201057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g201057_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords199603%_ . _%args199604%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords199603%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199603%_
                  'static:
                  absent-value))
               _%args199604%_)))
    (define gxc#gsc-ld-options
      (lambda _%args199460199610%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args199460199610%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir199454%_)
        (let ((_%user-staticdir199456%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir199454%_
                       '" -I "
                       _%user-staticdir199456%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp199366%_ ((_%rest199368%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199369%_ '()))
          (let* ((_%rest199370199390%_ _%rest199368%_)
                 (_%else199374199398%_ (lambda () _%opts199369%_)))
            (let ((_%K199384199441%_
                   (lambda (_%rest199439%_)
                     (_%lp199366%_ _%rest199439%_ _%opts199369%_)))
                  (_%K199379199419%_
                   (lambda (_%rest199416%_ _%opt199417%_)
                     (_%lp199366%_
                      _%rest199416%_
                      (let ((__tmp201058
                             (let ((__tmp201059
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt199417%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp201059))))
                        (declare (not safe))
                        (##append _%opts199369%_ __tmp201058)))))
                  (_%K199376199404%_
                   (lambda (_%rest199402%_)
                     (_%lp199366%_ _%rest199402%_ _%opts199369%_))))
              (if (let () (declare (not safe)) (##pair? _%rest199370199390%_))
                  (let ((_%tl199386199446%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199370199390%_)))
                        (_%hd199385199444%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199370199390%_))))
                    (if (equal? _%hd199385199444%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199386199446%_))
                            (let* ((_%tl199388199449%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199386199446%_)))
                                   (_%rest199452%_ _%tl199388199449%_))
                              (_%K199384199441%_ _%rest199452%_))
                            (let ((_%rest199410%_ _%tl199386199446%_))
                              (_%K199376199404%_ _%rest199410%_)))
                        (if (equal? _%hd199385199444%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199386199446%_))
                                (let ((_%tl199383199429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199386199446%_)))
                                      (_%hd199382199427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199386199446%_))))
                                  (let ((_%opt199432%_ _%hd199382199427%_)
                                        (_%rest199434%_ _%tl199383199429%_))
                                    (_%K199379199419%_
                                     _%rest199434%_
                                     _%opt199432%_)))
                                (let ((_%rest199410%_ _%tl199386199446%_))
                                  (_%K199376199404%_ _%rest199410%_)))
                            (let ((_%rest199410%_ _%tl199386199446%_))
                              (_%K199376199404%_ _%rest199410%_)))))
                  (_%else199374199398%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str199363%_)
        (not (let () (declare (not safe)) (string-empty? _%str199363%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path199356%_ _%phi?199357%_)
        (let ((_%gsc-link-opts199359%_
               (gxc#gsc-link-options__% _%phi?199357%_))
              (_%gsc-cc-opts199360%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?199357%_))
              (_%gsc-ld-opts199361%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?199357%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp201060
                  (let ((__tmp201061
                         (let ((__tmp201062 (cons _%path199356%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp201062
                            _%gsc-link-opts199359%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201061 _%gsc-ld-opts199361%_))))
             (declare (not safe))
             (__foldr1 cons __tmp201060 _%gsc-cc-opts199360%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx199322%_ _%n199323%_ _%ext199324%_)
        (letrec ((_%module-relative-path199326%_
                  (lambda (_%ctx199354%_)
                    (path-strip-directory
                     (let ((__tmp201063
                            (##structure-ref
                             _%ctx199354%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp201063)))))
                 (_%module-source-directory199327%_
                  (lambda (_%ctx199350%_)
                    (path-directory
                     (let ((_%mpath199352%_
                            (##structure-ref
                             _%ctx199350%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath199352%_)
                           _%mpath199352%_
                           (last _%mpath199352%_))))))
                 (_%section-string199328%_
                  (lambda (_%n199344%_)
                    (if (number? _%n199344%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n199344%_))
                        (if (symbol? _%n199344%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n199344%_))
                            (if (string? _%n199344%_)
                                _%n199344%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n199344%_)))))))
                 (_%file-name199329%_
                  (lambda (_%path199342%_)
                    (if _%n199323%_
                        (string-append
                         _%path199342%_
                         '"~"
                         (_%section-string199328%_ _%n199323%_)
                         _%ext199324%_)
                        (string-append _%path199342%_ _%ext199324%_))))
                 (_%file-path199330%_
                  (lambda ()
                    (let ((_%$e199336%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e199336%_
                          ((lambda (_%outdir199339%_)
                             (path-expand
                              (_%file-name199329%_
                               (let ((__tmp201064
                                      (##structure-ref
                                       _%ctx199322%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp201064)))
                              _%outdir199339%_))
                           _%$e199336%_)
                          (path-expand
                           (_%file-name199329%_
                            (_%module-relative-path199326%_ _%ctx199322%_))
                           (_%module-source-directory199327%_
                            _%ctx199322%_)))))))
          (let ((_%path199332%_ (_%file-path199330%_)))
            (let ((__tmp201065
                   (lambda ()
                     (let ((__tmp201066 (path-directory _%path199332%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp201066)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp201065))
            _%path199332%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx199303%_)
        (letrec ((_%file-name199305%_
                  (lambda (_%id199320%_)
                    (let ((__tmp201067 (gxc#static-module-name _%id199320%_)))
                      (declare (not safe))
                      (##string-append __tmp201067 '".scm"))))
                 (_%file-path199306%_
                  (lambda ()
                    (let* ((_%file199312%_
                            (_%file-name199305%_
                             (##structure-ref
                              _%ctx199303%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e199314%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e199314%_
                          ((lambda (_%outdir199317%_)
                             (path-expand
                              _%file199312%_
                              (path-expand '"static" _%outdir199317%_)))
                           _%$e199314%_)
                          (path-expand _%file199312%_ '"static"))))))
          (let ((_%path199308%_ (_%file-path199306%_)))
            (let ((__tmp201068
                   (lambda ()
                     (let ((__tmp201069 (path-directory _%path199308%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp201069)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp201068))
            _%path199308%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx199296%_ _%opts199297%_)
        (let ((_%$e199299%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts199297%_))))
          (if _%$e199299%_
              _%$e199299%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx199296%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr199286%_)
        (if (string? _%idstr199286%_)
            (let* ((_%str199289%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr199286%_)))
                   (_%strs199291%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str199289%_ '#\/))))
              (declare (not safe))
              (string-join _%strs199291%_ '"__"))
            (if (symbol? _%idstr199286%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr199286%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr199286%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp201070
               (let ((__tmp201071 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp201071 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp201070))))
    (define gxc#invoke__%
      (lambda (_%@@keywords199250%_
               _%stdout-redirection199246199251%_
               _%stderr-redirection199247199253%_
               _%program199255%_
               _%args199256%_)
        (let* ((_%stdout-redirection199258%_
                (if (eq? _%stdout-redirection199246199251%_ absent-value)
                    '#f
                    _%stdout-redirection199246199251%_))
               (_%stderr-redirection199260%_
                (if (eq? _%stderr-redirection199247199253%_ absent-value)
                    '#f
                    _%stderr-redirection199247199253%_)))
          (let ((__tmp201072 (cons _%program199255%_ _%args199256%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp201072))
          (let* ((_%proc199262%_
                  (open-process
                   (cons 'path:
                         (cons _%program199255%_
                               (cons 'arguments:
                                     (cons _%args199256%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection199258%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection199260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output199267%_
                  (if (or _%stdout-redirection199258%_
                          _%stderr-redirection199260%_)
                      (read-line _%proc199262%_ '#f)
                      '#f))
                 (_%status199270%_ (process-status _%proc199262%_)))
            (let () (declare (not safe)) (##close-port _%proc199262%_))
            (if (zero? _%status199270%_)
                '#!void
                (begin
                  (display _%output199267%_)
                  (let ((__tmp201073 (cons _%program199255%_ _%args199256%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp201073
                     _%status199270%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords199275%_ . _%args199276%_)
        (apply gxc#invoke__%
               _%@@keywords199275%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199275%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199275%_
                  'stderr-redirection:
                  absent-value))
               _%args199276%_)))
    (define gxc#invoke
      (lambda _%args199248199282%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args199248199282%_)))))
