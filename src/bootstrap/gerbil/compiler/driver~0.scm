(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1713001415)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp200883 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp200883))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp200884 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp200884))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path200740%_ _%fun200741%_)
        (with-output-to-file
         (cons 'path: (cons _%path200740%_ gxc#scheme-file-settings))
         _%fun200741%_)))
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
      (lambda (_%gerbil-libdir200735%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir200735%_)))
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
      (lambda (_%dir200733%_) (delete-file-or-directory _%dir200733%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath200706%_ _%opts200707%_)
        (if (string? _%srcpath200706%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200706%_)))
        (let ((_%outdir200709%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200707%_)))
              (_%invoke-gsc?200710%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200707%_)))
              (_%gsc-options200711%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200707%_)))
              (_%keep-scm?200712%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200707%_)))
              (_%verbosity200713%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200707%_)))
              (_%optimize200714%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts200707%_)))
              (_%debug200715%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200707%_)))
              (_%gen-ssxi200716%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts200707%_)))
              (_%parallel?200717%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200707%_))))
          (if _%outdir200709%_
              (let ((__tmp200885
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200709%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200885))
              '#!void)
          (if _%optimize200714%_
              (let ((__tmp200886
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200886))
              '#!void)
          (let ((__tmp200889
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath200706%_))
                   (gxc#compile-top-module
                    (let ((__tmp200890
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200706%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200890)))))
                (__tmp200888 (gxc#compile-timestamp))
                (__tmp200887
                 (cons 'compile-module (cons _%srcpath200706%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200889
             gxc#current-compile-output-dir
             _%outdir200709%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200710%_
             gxc#current-compile-gsc-options
             _%gsc-options200711%_
             gxc#current-compile-keep-scm
             _%keep-scm?200712%_
             gxc#current-compile-verbose
             _%verbosity200713%_
             gxc#current-compile-optimize
             _%optimize200714%_
             gxc#current-compile-debug
             _%debug200715%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi200716%_
             gxc#current-compile-timestamp
             __tmp200888
             gxc#current-compile-context
             __tmp200887
             gxc#current-compile-parallel
             _%parallel?200717%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath200726%_)
        (let ((_%opts200728%_ '()))
          (gxc#compile-module__% _%srcpath200726%_ _%opts200728%_))))
    (define gxc#compile-module
      (lambda _g200892_
        (let ((_g200891_ (let () (declare (not safe)) (##length _g200892_))))
          (cond ((let () (declare (not safe)) (##fx= _g200891_ 1))
                 (apply gxc#compile-module__0 _g200892_))
                ((let () (declare (not safe)) (##fx= _g200891_ 2))
                 (apply gxc#compile-module__% _g200892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g200892_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath200681%_ _%opts200682%_)
        (if (string? _%srcpath200681%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200681%_)))
        (let ((_%outdir200684%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200682%_)))
              (_%invoke-gsc?200685%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200682%_)))
              (_%gsc-options200686%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200682%_)))
              (_%keep-scm?200687%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200682%_)))
              (_%verbosity200688%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200682%_)))
              (_%debug200689%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200682%_)))
              (_%parallel?200690%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200682%_))))
          (if _%outdir200684%_
              (let ((__tmp200893
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200684%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200893))
              '#!void)
          (let ((__tmp200896
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath200681%_))
                   (gxc#compile-executable-module
                    (let ((__tmp200897
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200681%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200897))
                    _%opts200682%_)))
                (__tmp200895 (gxc#compile-timestamp))
                (__tmp200894 (cons 'compile-exe (cons _%srcpath200681%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200896
             gxc#current-compile-output-dir
             _%outdir200684%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200685%_
             gxc#current-compile-gsc-options
             _%gsc-options200686%_
             gxc#current-compile-keep-scm
             _%keep-scm?200687%_
             gxc#current-compile-verbose
             _%verbosity200688%_
             gxc#current-compile-debug
             _%debug200689%_
             gxc#current-compile-timestamp
             __tmp200895
             gxc#current-compile-context
             __tmp200894
             gxc#current-compile-parallel
             _%parallel?200690%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath200698%_)
        (let ((_%opts200700%_ '()))
          (gxc#compile-exe__% _%srcpath200698%_ _%opts200700%_))))
    (define gxc#compile-exe
      (lambda _g200899_
        (let ((_g200898_ (let () (declare (not safe)) (##length _g200899_))))
          (cond ((let () (declare (not safe)) (##fx= _g200898_ 1))
                 (apply gxc#compile-exe__0 _g200899_))
                ((let () (declare (not safe)) (##fx= _g200898_ 2))
                 (apply gxc#compile-exe__% _g200899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g200899_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx200677%_ _%opts200678%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts200678%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx200677%_
             _%opts200678%_)
            (gxc#compile-executable-module/separate
             _%ctx200677%_
             _%opts200678%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx200467%_ _%opts200468%_)
        (letrec ((_%generate-stub200470%_
                  (lambda (_%builtin-modules200673%_)
                    (let ((_%mod-main200675%_
                           (gxc#find-runtime-symbol _%ctx200467%_ 'main)))
                      (let ((__tmp200900
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules200673%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp200900))
                      (let ((__tmp200901
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main200675%_
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
                        (##write __tmp200901))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts200471%_
                  (lambda (_%gerbil-libdir200671%_)
                    (let ((__tmp200902
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir200671%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp200902 read))))
                 (_%replace-extension200472%_
                  (lambda (_%path200668%_ _%ext200669%_)
                    (string-append
                     (path-strip-extension _%path200668%_)
                     _%ext200669%_)))
                 (_%userlib-module?200473%_
                  (lambda (_%ctx200666%_)
                    (if (_%exclude-module?200475%_ _%ctx200666%_)
                        '#f
                        (not (_%libgerbil-module?200474%_ _%ctx200666%_)))))
                 (_%libgerbil-module?200474%_
                  (lambda (_%ctx200659%_)
                    (let ((_%id-str200661%_
                           (symbol->string
                            (##structure-ref
                             _%ctx200659%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?200475%_ _%id-str200661%_)
                          '#f
                          (let ((_%$e200663%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str200661%_))))
                            (if _%$e200663%_
                                _%$e200663%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str200661%_))))))))
                 (_%exclude-module?200475%_
                  (lambda (_%ctx-or-str200655%_)
                    (let ((_%str200657%_
                           (if (string? _%ctx-or-str200655%_)
                               _%ctx-or-str200655%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str200655%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str200657%_))))
                 (_%not-file-empty?200476%_
                  (lambda (_%path200653%_)
                    (not (gxc#file-empty? _%path200653%_))))
                 (_%fold-libgerbil-runtime-scm200477%_
                  (lambda (_%gerbil-staticdir200646%_ _%libgerbil-scm200647%_)
                    (let ((_%gerbil-runtime-scm200651%_
                           (let ((__tmp200903
                                  (lambda (_%rtm200649%_)
                                    (path-expand
                                     (let ((__tmp200904
                                            (let ((__tmp200905
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm200649%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp200905
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp200904 '".scm"))
                                     _%gerbil-staticdir200646%_))))
                             (declare (not safe))
                             (##map __tmp200903 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates200478%_
                       (append _%gerbil-runtime-scm200651%_
                               _%libgerbil-scm200647%_)))))
                 (_%remove-duplicates200478%_
                  (lambda (_%strlst200606%_)
                    (let _%loop200608%_ ((_%rest200610%_ _%strlst200606%_)
                                         (_%result200611%_ '()))
                      (let* ((_%rest200612200620%_ _%rest200610%_)
                             (_%else200614200628%_
                              (lambda () (reverse! _%result200611%_)))
                             (_%K200616200634%_
                              (lambda (_%rest200631%_ _%path200632%_)
                                (if (member _%path200632%_ _%result200611%_)
                                    (_%loop200608%_
                                     _%rest200631%_
                                     _%result200611%_)
                                    (_%loop200608%_
                                     _%rest200631%_
                                     (cons _%path200632%_
                                           _%result200611%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest200612200620%_))
                            (let ((_%hd200617200637%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200612200620%_)))
                                  (_%tl200618200639%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200612200620%_))))
                              (let* ((_%path200642%_ _%hd200617200637%_)
                                     (_%rest200644%_ _%tl200618200639%_))
                                (_%K200616200634%_
                                 _%rest200644%_
                                 _%path200642%_)))
                            (_%else200614200628%_))))))
                 (_%compile-stub200479%_
                  (lambda (_%output-scm200486%_ _%output-bin200487%_)
                    (let* ((_%gerbil-home200489%_
                            (let ((__tmp200906
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200906)))
                           (_%gerbil-libdir200491%_
                            (path-expand '"lib" _%gerbil-home200489%_))
                           (_%gerbil-staticdir200493%_
                            (path-expand '"static" _%gerbil-libdir200491%_))
                           (_%deps200495%_
                            (gxc#find-runtime-module-deps _%ctx200467%_))
                           (_%libgerbil-deps200497%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?200474%_
                               _%deps200495%_)))
                           (_%libgerbil-scm200499%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps200497%_)))
                           (_%libgerbil-scm200501%_
                            (_%fold-libgerbil-runtime-scm200477%_
                             _%gerbil-staticdir200493%_
                             _%libgerbil-scm200499%_))
                           (_%libgerbil-c200507%_
                            (map (lambda (_%g200502200504%_)
                                   (_%replace-extension200472%_
                                    _%g200502200504%_
                                    '".c"))
                                 _%libgerbil-scm200501%_))
                           (_%libgerbil-o200513%_
                            (map (lambda (_%g200508200510%_)
                                   (_%replace-extension200472%_
                                    _%g200508200510%_
                                    '".o"))
                                 _%libgerbil-scm200501%_))
                           (_%src-deps200515%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?200473%_
                               _%deps200495%_)))
                           (_%src-deps-scm200517%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps200515%_)))
                           (_%src-deps-scm200519%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?200476%_
                               _%src-deps-scm200517%_)))
                           (_%src-deps-scm200521%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm200519%_)))
                           (_%src-deps-c200527%_
                            (let ((__tmp200907
                                   (lambda (_%g200522200524%_)
                                     (_%replace-extension200472%_
                                      _%g200522200524%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp200907 _%src-deps-scm200521%_)))
                           (_%src-deps-o200533%_
                            (let ((__tmp200908
                                   (lambda (_%g200528200530%_)
                                     (_%replace-extension200472%_
                                      _%g200528200530%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp200908 _%src-deps-scm200521%_)))
                           (_%src-bin-scm200535%_
                            (gxc#find-static-module-file _%ctx200467%_))
                           (_%src-bin-scm200537%_
                            (path-expand _%src-bin-scm200535%_))
                           (_%src-bin-c200539%_
                            (_%replace-extension200472%_
                             _%src-bin-scm200537%_
                             '".c"))
                           (_%src-bin-o200541%_
                            (_%replace-extension200472%_
                             _%src-bin-scm200537%_
                             '".o"))
                           (_%output-bin200543%_
                            (path-expand _%output-bin200487%_))
                           (_%output-scm200545%_
                            (path-expand _%output-scm200486%_))
                           (_%output-c200547%_
                            (_%replace-extension200472%_
                             _%output-scm200545%_
                             '".c"))
                           (_%output-o200549%_
                            (_%replace-extension200472%_
                             _%output-scm200545%_
                             '".o"))
                           (_%output_-c200551%_
                            (_%replace-extension200472%_
                             _%output-scm200545%_
                             '"_.c"))
                           (_%output_-o200553%_
                            (_%replace-extension200472%_
                             _%output-scm200545%_
                             '"_.o"))
                           (_%gsc-link-opts200555%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200557%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200559%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir200493%_))
                           (_%output-ld-opts200561%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts200563%_
                            (_%get-libgerbil-ld-opts200471%_
                             _%gerbil-libdir200491%_))
                           (_%rpath200565%_
                            (gxc#gerbil-rpath _%gerbil-libdir200491%_))
                           (_%builtin-modules200569%_
                            (_%remove-duplicates200478%_
                             (let ((__tmp200909
                                    (let ((__tmp200911
                                           (lambda (_%mod200567%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod200567%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp200910
                                           (cons _%ctx200467%_
                                                 _%deps200495%_)))
                                      (declare (not safe))
                                      (##map __tmp200911 __tmp200910))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp200909)))))
                      (letrec ((_%compile-obj200572%_
                                (lambda (_%scm-path200579%_ _%c-path200580%_)
                                  (let* ((_%o-path200582%_
                                          (_%replace-extension200472%_
                                           _%c-path200580%_
                                           '".o"))
                                         (_%lock200584%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path200582%_
                                             '".lock")))
                                         (_%locked200586%_ '#f)
                                         (_%unlock200589%_
                                          (lambda ()
                                            (close-port _%locked200586%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock200584%_)))))
                                    (let _%retry200592%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock200584%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry200592%_))
                                          (begin
                                            (set! _%locked200586%_
                                                  (let ((__tmp200912
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock200584%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp200912)))
                                            (if _%locked200586%_
                                                '#!void
                                                (_%retry200592%_)))))
                                    (let ((__tmp200914
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path200582%_)))
                                                     (not _%scm-path200579%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path200579%_
                                                        _%o-path200582%_)))
                                                 (let ((_%gsc-cc-opts200603%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp200915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp200916 (cons _%c-path200580%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp200916
                            _%gsc-static-opts200559%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200915 _%gsc-cc-opts200603%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp200913
                                           (lambda () (_%unlock200589%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp200914
                                       __tmp200913))))))
                        (let ((__tmp200917
                               (lambda ()
                                 (let ((__tmp200918
                                        (path-directory _%output-bin200543%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp200918)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp200917))
                        (gxc#with-output-to-scheme-file
                         _%output-scm200545%_
                         (lambda ()
                           (_%generate-stub200470%_
                            _%builtin-modules200569%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it200577%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp200919
                                                   (let ((__tmp200920
                                                          (let ((__tmp200921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm200537%_
                               (cons _%output-scm200545%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200921 _%src-deps-scm200521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp200920
                                                      _%libgerbil-c200507%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp200919
                                               _%gsc-link-opts200555%_))))
                                     (for-each
                                      _%compile-obj200572%_
                                      (let ((__tmp200922
                                             (cons _%src-bin-scm200537%_
                                                   (cons _%output-scm200545%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200922
                                         _%src-deps-scm200521%_))
                                      (let ((__tmp200923
                                             (cons _%src-bin-c200539%_
                                                   (cons _%output-c200547%_
                                                         (cons _%output_-c200551%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200923
                                         _%src-deps-c200527%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin200543%_
                                                        (let ((__tmp200924
                                                               (cons _%src-bin-o200541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o200549%_
                                   (cons _%output_-o200553%_
                                         (let ((__tmp200925
                                                (let ((__tmp200926
                                                       (let ((__tmp200928
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir200491%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts200563%_))))
                     (__tmp200927
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath200565%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp200928 __tmp200927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp200926
                                                   _%output-ld-opts200561%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp200925
                                            _%libgerbil-o200513%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp200924 _%src-deps-o200533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp200929
                                            (cons _%output-c200547%_
                                                  (cons _%output_-c200551%_
                                                        (cons _%output-o200549%_
                                                              (cons _%output_-o200553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp200929)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it200577%_))
                                  (_%compile-it200577%_)))
                            '#!void))))))
          (let* ((_%output-bin200481%_
                  (gxc#compile-exe-output-file _%ctx200467%_ _%opts200468%_))
                 (_%output-scm200483%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200481%_ '"__exe.scm"))))
            (_%compile-stub200479%_
             _%output-scm200483%_
             _%output-bin200481%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx200289%_ _%opts200290%_)
        (letrec ((_%reset-declare200292%_
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
                 (_%generate-stub200293%_
                  (lambda (_%deps200458%_)
                    (let ((_%mod-main200460%_
                           (gxc#find-runtime-symbol _%ctx200289%_ 'main))
                          (_%reset-decl200461%_ (_%reset-declare200292%_))
                          (_%user-decl200462%_ (_%user-declare200294%_)))
                      (for-each
                       (lambda (_%dep200464%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl200461%_))
                         (newline)
                         (if _%user-decl200462%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl200462%_))
                               (newline))
                             '#!void)
                         (let ((__tmp200930
                                (cons 'include (cons _%dep200464%_ '()))))
                           (declare (not safe))
                           (##write __tmp200930))
                         (newline))
                       _%deps200458%_)
                      (let ((__tmp200931
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main200460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp200931))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare200294%_
                  (lambda ()
                    (let* ((_%gsc-opts200363%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts200290%_)))
                           (_%gsc-prelude200365%_
                            (if _%gsc-opts200363%_
                                (member '"-prelude" _%gsc-opts200363%_)
                                '#f))
                           (_%gsc-prelude200367%_
                            (if _%gsc-prelude200365%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude200365%_)))
                                '#f)))
                      (let _%lp200370%_ ((_%rest200372%_
                                          (cons _%gsc-prelude200367%_ '()))
                                         (_%user-decls200373%_ '()))
                        (let* ((_%rest200374200382%_ _%rest200372%_)
                               (_%else200376200390%_
                                (lambda ()
                                  (if (null? _%user-decls200373%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls200373%_)))))
                               (_%K200378200446%_
                                (lambda (_%rest200393%_ _%expr200394%_)
                                  (let* ((_%expr200395200407%_ _%expr200394%_)
                                         (_%else200398200415%_
                                          (lambda ()
                                            (_%lp200370%_
                                             _%rest200393%_
                                             _%user-decls200373%_))))
                                    (let ((_%K200403200436%_
                                           (lambda (_%decls200434%_)
                                             (_%lp200370%_
                                              _%rest200393%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls200373%_
                                                 _%decls200434%_)))))
                                          (_%K200400200421%_
                                           (lambda (_%exprs200419%_)
                                             (_%lp200370%_
                                              (append _%exprs200419%_
                                                      _%rest200393%_)
                                              _%user-decls200373%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr200395200407%_))
                                          (let ((_%tl200405200441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr200395200407%_)))
                                                (_%hd200404200439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr200395200407%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd200404200439%_
                                                         'declare))
                                                (let ((_%decls200444%_
                                                       _%tl200405200441%_))
                                                  (_%K200403200436%_
                                                   _%decls200444%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd200404200439%_
                                                             'begin))
                                                    (let ((_%exprs200429%_
                                                           _%tl200405200441%_))
                                                      (_%K200400200421%_
                                                       _%exprs200429%_))
                                                    (_%else200398200415%_))))
                                          (_%else200398200415%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest200374200382%_))
                              (let ((_%hd200379200449%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest200374200382%_)))
                                    (_%tl200380200451%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest200374200382%_))))
                                (let* ((_%expr200454%_ _%hd200379200449%_)
                                       (_%rest200456%_ _%tl200380200451%_))
                                  (_%K200378200446%_
                                   _%rest200456%_
                                   _%expr200454%_)))
                              (_%else200376200390%_)))))))
                 (_%compile-stub200295%_
                  (lambda (_%output-scm200302%_ _%output-bin200303%_)
                    (let* ((_%gerbil-home200305%_
                            (let ((__tmp200932
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200932)))
                           (_%gerbil-libdir200307%_
                            (path-expand '"lib" _%gerbil-home200305%_))
                           (_%runtime200309%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp200311%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home200305%_))
                           (_%include-gambit-sharp200313%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp200311%_
                               '"\")")))
                           (_%bin-scm200315%_
                            (gxc#find-static-module-file _%ctx200289%_))
                           (_%deps200317%_
                            (gxc#find-runtime-module-deps _%ctx200289%_))
                           (_%deps200319%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps200317%_)))
                           (_%deps200324%_
                            (let ((__tmp200933
                                   (lambda (_%$obj200321%_)
                                     (not (gxc#file-empty? _%$obj200321%_)))))
                              (declare (not safe))
                              (##filter __tmp200933 _%deps200319%_)))
                           (_%deps200328%_
                            (let ((__tmp200934
                                   (lambda (_%f200326%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f200326%_
                                             _%runtime200309%_))))))
                              (declare (not safe))
                              (##filter __tmp200934 _%deps200324%_)))
                           (_%output-base200330%_
                            (let ((__tmp200935
                                   (path-strip-extension
                                    _%output-scm200302%_)))
                              (declare (not safe))
                              (##string-append __tmp200935)))
                           (_%output-c200332%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200330%_ '".c")))
                           (_%output-o200334%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200330%_ '".o")))
                           (_%output-c_200336%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200330%_ '"_.c")))
                           (_%output-o_200338%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base200330%_ '"_.o")))
                           (_%gsc-link-opts200340%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200342%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200344%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir200307%_)))
                           (_%output-ld-opts200346%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros200348%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp200313%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp200313%_
                                            '()))))
                           (_%gsc-link-opts200350%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts200340%_
                               _%gsc-gx-macros200348%_)))
                           (_%rpath200352%_
                            (gxc#gerbil-rpath _%gerbil-libdir200307%_))
                           (_%default-ld-options200354%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp200936
                             (lambda ()
                               (let ((__tmp200937
                                      (path-directory _%output-bin200303%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp200937)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp200936))
                      (gxc#with-output-to-scheme-file
                       _%output-scm200302%_
                       (lambda ()
                         (_%generate-stub200293%_
                          (let ((__tmp200938
                                 (let ((__tmp200939
                                        (cons _%bin-scm200315%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp200939
                                    _%deps200328%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp200938 _%runtime200309%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it200360%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_200336%_
                                                      (let ((__tmp200940
                                                             (cons _%output-scm200302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp200940 _%gsc-link-opts200350%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp200941
                                                 (let ((__tmp200942
                                                        (cons _%output-c200332%_
                                                              (cons _%output-c_200336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp200942
                                                    _%gsc-static-opts200344%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp200941
                                             _%gsc-cc-opts200342%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin200303%_
                                                      (cons _%output-o200334%_
                                                            (cons _%output-o_200338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp200943
                                 (let ((__tmp200945
                                        (cons '"-L"
                                              (cons _%gerbil-libdir200307%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options200354%_))))
                                       (__tmp200944
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath200352%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp200945 __tmp200944))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp200943
                             _%output-ld-opts200346%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it200360%_))
                                (_%compile-it200360%_)))
                          '#!void)))))
          (let* ((_%output-bin200297%_
                  (gxc#compile-exe-output-file _%ctx200289%_ _%opts200290%_))
                 (_%output-scm200299%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200297%_ '"__exe.scm"))))
            (_%compile-stub200295%_
             _%output-scm200299%_
             _%output-bin200297%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx200238%_ _%id200239%_)
        (let ((_%$e200285%_
               (let ((__tmp200947
                      (lambda (_%e200240200242%_)
                        (let* ((_%g200244200254%_ _%e200240200242%_)
                               (_%else200246200262%_ (lambda () '#f))
                               (_%K200248200266%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g200244200254%_
                                 'gx#module-export::t))
                              (let* ((_%e200249200269%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200244200254%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e200250200272%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200244200254%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e200251200275%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g200244200254%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e200251200275%_ '0))
                                    (let ((_%e200252200278%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g200244200254%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g200280200282%_)
                                             (eq? _%g200280200282%_
                                                  _%id200239%_))
                                           _%e200252200278%_)
                                          (_%K200248200266%_)
                                          (_%else200246200262%_)))
                                    (_%else200246200262%_)))
                              (_%else200246200262%_)))))
                     (__tmp200946
                      (##structure-ref
                       _%ctx200238%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp200947 __tmp200946))))
          (if _%$e200285%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e200285%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx200229%_ _%id200230%_)
        (let ((_%$e200232%_
               (gxc#find-export-binding _%ctx200229%_ _%id200230%_)))
          (if _%$e200232%_
              ((lambda (_%bind200235%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind200235%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id200230%_)))
                 (##structure-ref _%bind200235%_ '1 gx#binding::t '#f))
               _%$e200232%_)
              (let ((__tmp200948
                     (##structure-ref
                      _%ctx200229%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp200948
                 _%id200230%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx200095%_)
        (letrec* ((_%ht200097%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template200098%_
                   (lambda (_%in200174%_ _%phi200175%_)
                     (let ((_%iphi200177%_
                            (fx+ _%phi200175%_
                                 (##direct-structure-ref
                                  _%in200174%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports200178%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in200174%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp200180%_ ((_%rest200182%_ _%imports200178%_)
                                          (_%r200183%_ '()))
                         (let* ((_%rest200184200192%_ _%rest200182%_)
                                (_%else200186200200%_ (lambda () _%r200183%_))
                                (_%K200188200217%_
                                 (lambda (_%rest200203%_ _%in200204%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in200204%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi200177%_))
                                           (_%lp200180%_
                                            _%rest200203%_
                                            (cons _%in200204%_ _%r200183%_))
                                           (_%lp200180%_
                                            _%rest200203%_
                                            _%r200183%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in200204%_
                                              'gx#module-import::t))
                                           (let ((_%iphi200208%_
                                                  (fx+ _%phi200175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in200204%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi200208%_))
                                                 (_%lp200180%_
                                                  _%rest200203%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in200204%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r200183%_))
                                                 (_%lp200180%_
                                                  _%rest200203%_
                                                  _%r200183%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in200204%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi200211%_
                                                      (fx+ _%iphi200177%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in200204%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi200211%_))
                                                     (_%lp200180%_
                                                      _%rest200203%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in200204%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r200183%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi200211%_))
                                                         (_%lp200180%_
                                                          _%rest200203%_
                                                          (let ((__tmp200949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template200098%_
                          _%in200204%_
                          _%iphi200177%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r200183%_ __tmp200949)))
                 (_%lp200180%_ _%rest200203%_ _%r200183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp200180%_
                                                _%rest200203%_
                                                _%r200183%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest200184200192%_))
                               (let ((_%hd200189200220%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest200184200192%_)))
                                     (_%tl200190200222%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest200184200192%_))))
                                 (let* ((_%in200225%_ _%hd200189200220%_)
                                        (_%rest200227%_ _%tl200190200222%_))
                                   (_%K200188200217%_
                                    _%rest200227%_
                                    _%in200225%_)))
                               (_%else200186200200%_)))))))
                  (_%find-deps200099%_
                   (lambda (_%rest200107%_ _%deps200108%_)
                     (let* ((_%rest200109200117%_ _%rest200107%_)
                            (_%else200111200125%_ (lambda () _%deps200108%_))
                            (_%K200113200162%_
                             (lambda (_%rest200128%_ _%hd200129%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd200129%_
                                      'gx#module-context::t))
                                   (let ((_%id200132%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd200129%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports200133%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd200129%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht200097%_
                                            _%id200132%_))
                                         (_%find-deps200099%_
                                          _%rest200128%_
                                          _%deps200108%_)
                                         (let ((_%$e200136%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd200129%_))))
                                           (if _%$e200136%_
                                               ((lambda (_%pre200139%_)
                                                  (let ((_%xdeps200141%_
                                                         (_%find-deps200099%_
                                                          (cons _%pre200139%_
                                                                _%imports200133%_)
                                                          _%deps200108%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht200097%_
                                                       _%id200132%_
                                                       _%hd200129%_))
                                                    (_%find-deps200099%_
                                                     _%rest200128%_
                                                     (cons _%hd200129%_
                                                           _%xdeps200141%_))))
                                                _%$e200136%_)
                                               (let ((_%xdeps200144%_
                                                      (_%find-deps200099%_
                                                       _%imports200133%_
                                                       _%deps200108%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht200097%_
                                                    _%id200132%_
                                                    _%hd200129%_))
                                                 (_%find-deps200099%_
                                                  _%rest200128%_
                                                  (cons _%hd200129%_
                                                        _%xdeps200144%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd200129%_
                                          'gx#prelude-context::t))
                                       (let ((_%id200147%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd200129%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht200097%_
                                                _%id200147%_))
                                             (_%find-deps200099%_
                                              _%rest200128%_
                                              _%deps200108%_)
                                             (let ((_%xdeps200151%_
                                                    (_%find-deps200099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd200129%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps200108%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht200097%_
                                                      _%id200147%_))
                                                   (_%find-deps200099%_
                                                    _%rest200128%_
                                                    _%xdeps200151%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht200097%_
                                                        _%id200147%_
                                                        _%hd200129%_))
                                                     (_%find-deps200099%_
                                                      _%rest200128%_
                                                      (cons _%hd200129%_
                                                            _%xdeps200151%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd200129%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd200129%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps200099%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd200129%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest200128%_)
                                                _%deps200108%_)
                                               (_%find-deps200099%_
                                                _%rest200128%_
                                                _%deps200108%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd200129%_
                                                  'gx#module-export::t))
                                               (_%find-deps200099%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd200129%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest200128%_)
                                                _%deps200108%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd200129%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd200129%_ '2 '#f '#f)))
               (_%find-deps200099%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd200129%_ '1 '#f '#f))
                      _%rest200128%_)
                _%deps200108%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd200129%_ '2 '#f '#f)))
                   (let ((_%xdeps200158%_
                          (_%import-set-template200098%_ _%hd200129%_ '0)))
                     (_%find-deps200099%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest200128%_ _%xdeps200158%_))
                      _%deps200108%_))
                   (_%find-deps200099%_ _%rest200128%_ _%deps200108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd200129%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest200109200117%_))
                           (let ((_%hd200114200165%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest200109200117%_)))
                                 (_%tl200115200167%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest200109200117%_))))
                             (let* ((_%hd200170%_ _%hd200114200165%_)
                                    (_%rest200172%_ _%tl200115200167%_))
                               (_%K200113200162%_
                                _%rest200172%_
                                _%hd200170%_)))
                           (_%else200111200125%_))))))
          (let ((__tmp200950
                 (filter gx#expander-context-id
                         (_%find-deps200099%_
                          (let ((_%$e200101%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx200095%_))))
                            (if _%$e200101%_
                                ((lambda (_%pre200104%_)
                                   (cons _%pre200104%_
                                         (##structure-ref
                                          _%ctx200095%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e200101%_)
                                (##structure-ref
                                 _%ctx200095%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp200950)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx200025%_)
        (let* ((_%context-id200027%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx200025%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx200025%_ '1 '#f '#f))
                    (string->symbol _%ctx200025%_)))
               (_%scm200029%_
                (let ((__tmp200951
                       (gxc#static-module-name _%context-id200027%_)))
                  (declare (not safe))
                  (##string-append __tmp200951 '".scm")))
               (_%dirs200031%_ (let () (declare (not safe)) (load-path)))
               (_%dirs200037%_
                (let ((_%user-libpath200033%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath200033%_
                      (let ((_%user-libpath200035%_
                             (path-expand '"lib" _%user-libpath200033%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath200035%_ _%dirs200031%_))
                            _%dirs200031%_
                            (cons _%user-libpath200035%_ _%dirs200031%_)))
                      _%dirs200031%_)))
               (_%dirs200047%_
                (let ((_%$e200039%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e200039%_
                      ((lambda (_%g200041200043%_)
                         (cons _%g200041200043%_ _%dirs200037%_))
                       _%$e200039%_)
                      _%dirs200037%_)))
               (_%dirs200053%_
                (let ((__tmp200952
                       (lambda (_%g200048200050%_)
                         (path-expand '"static" _%g200048200050%_))))
                  (declare (not safe))
                  (##map __tmp200952 _%dirs200047%_))))
          (let _%lp200056%_ ((_%rest200058%_ _%dirs200053%_))
            (let* ((_%rest200059200067%_ _%rest200058%_)
                   (_%else200061200075%_
                    (lambda ()
                      (let ((__tmp200953
                             (##structure-ref
                              _%ctx200025%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp200953
                         _%scm200029%_))))
                   (_%K200063200083%_
                    (lambda (_%rest200078%_ _%dir200079%_)
                      (let ((_%path200081%_
                             (path-expand _%scm200029%_ _%dir200079%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path200081%_))
                            _%path200081%_
                            (_%lp200056%_ _%rest200078%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest200059200067%_))
                  (let ((_%hd200064200086%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200059200067%_)))
                        (_%tl200065200088%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200059200067%_))))
                    (let* ((_%dir200091%_ _%hd200064200086%_)
                           (_%rest200093%_ _%tl200065200088%_))
                      (_%K200063200083%_ _%rest200093%_ _%dir200091%_)))
                  (_%else200061200075%_)))))))
    (define gxc#file-empty?
      (lambda (_%path200023%_)
        (zero? (let ((__tmp200954 (file-info _%path200023%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp200954)))))
    (define gxc#compile-top-module
      (lambda (_%ctx200019%_)
        (let ((__tmp200958
               (lambda ()
                 (let ((__tmp200959
                        (##structure-ref
                         _%ctx200019%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp200959))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp200960
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx200019%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp200960))
                     '#!void)
                 (gxc#collect-bindings _%ctx200019%_)
                 (gxc#compile-runtime-code _%ctx200019%_)
                 (gxc#compile-meta-code _%ctx200019%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx200019%_)
                     '#!void)))
              (__tmp200957
               (let ((__obj200881
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj200881))
                 __obj200881))
              (__tmp200956 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200955
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
           __tmp200958
           gx#current-expander-context
           _%ctx200019%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp200957
           gxc#current-compile-runtime-sections
           __tmp200956
           gxc#current-compile-runtime-names
           __tmp200955))))
    (define gxc#collect-bindings
      (lambda (_%ctx200017%_)
        (let ((__tmp200961
               (##structure-ref _%ctx200017%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp200961))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx199965%_)
        (letrec ((_%compile1199967%_
                  (lambda (_%ctx200006%_)
                    (let* ((_%code200008%_
                            (##structure-ref
                             _%ctx200006%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm200012%_
                            (let ((_%idstr200010%_
                                   (let ((__tmp200962
                                          (##structure-ref
                                           _%ctx200006%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp200962))))
                              (declare (not safe))
                              (##string-append _%idstr200010%_ '"~0")))
                           (_%rtc?200014%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code200008%_))))
                      (if _%rtc?200014%_
                          (let ((__tmp200963
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp200963
                             _%ctx200006%_
                             _%rtm200012%_))
                          '#!void)
                      (_%generate-runtime-code199969%_
                       _%ctx200006%_
                       _%code200008%_
                       (if _%rtc?200014%_ _%rtm200012%_ '#f)))))
                 (_%context-timestamp199968%_
                  (lambda (_%ctx200004%_)
                    (let ((__tmp200964
                           (let ((__tmp200965
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx200004%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp200965 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp200964))))
                 (_%generate-runtime-code199969%_
                  (lambda (_%ctx199976%_ _%code199977%_ _%rtm199978%_)
                    (let* ((_%runtime-code?199980%_ (if _%rtm199978%_ '#t '#f))
                           (_%lifts199982%_ (box '()))
                           (_%runtime-code199985%_
                            (if _%runtime-code?199980%_
                                (let ((__tmp200968
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code199977%_))))
                                      (__tmp200967
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp200966
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp200968
                                   gx#current-expander-context
                                   _%ctx199976%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts199982%_
                                   gxc#current-compile-marks
                                   __tmp200967
                                   gxc#current-compile-identifiers
                                   __tmp200966))
                                '#f))
                           (_%runtime-code199987%_
                            (if _%runtime-code?199980%_
                                (if (null? (unbox _%lifts199982%_))
                                    _%runtime-code199985%_
                                    (cons 'begin
                                          (let ((__tmp200970
                                                 (cons _%runtime-code199985%_
                                                       '()))
                                                (__tmp200969
                                                 (reverse (unbox _%lifts199982%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp200970
                                             __tmp200969))))
                                '#f))
                           (_%runtime-code199989%_
                            (if _%runtime-code?199980%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp199968%_
                                                         _%ctx199976%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code199987%_ '())))
                                '#f))
                           (_%loader-code199992%_
                            (let ((__tmp200971
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code199977%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp200971
                               gx#current-expander-context
                               _%ctx199976%_)))
                           (_%loader-code199994%_
                            (cons 'begin
                                  (cons _%loader-code199992%_
                                        (cons (if _%runtime-code?199980%_
                                                  (cons 'load-module
                                                        (cons _%rtm199978%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0199996%_
                            (gxc#compile-output-file _%ctx199976%_ '0 '".scm"))
                           (_%scmrt199998%_
                            (gxc#compile-output-file
                             _%ctx199976%_
                             '#f
                             '".scm"))
                           (_%scms200000%_
                            (gxc#compile-static-output-file _%ctx199976%_)))
                      (if _%runtime-code?199980%_
                          (gxc#compile-scm-file__0
                           _%scm0199996%_
                           _%runtime-code199989%_)
                          '#!void)
                      (let ((__tmp200972
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt199998%_
                                _%loader-code199994%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp200972
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms200000%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms200000%_))
                          '#!void)
                      (if _%runtime-code?199980%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0199996%_ _%scms200000%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms200000%_ void)))))))
          (let* ((_%all-modules199971%_
                  (cons _%ctx199965%_ (gxc#lift-nested-modules _%ctx199965%_)))
                 (__tmp200973
                  (lambda (_%ctx199973%_)
                    (let ((__tmp200974
                           (lambda () (_%compile1199967%_ _%ctx199973%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp200974
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp200973 _%all-modules199971%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx199865%_)
        (letrec ((_%compile-ssi199867%_
                  (lambda (_%code199933%_)
                    (let* ((_%path199935%_
                            (gxc#compile-output-file
                             _%ctx199865%_
                             '#f
                             '".ssi"))
                           (_%prelude199947%_
                            (let* ((_%super199937%_
                                    (##structure-ref
                                     _%ctx199865%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e199939%_
                                    (##structure-ref
                                     _%super199937%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e199939%_
                                  ((lambda (_%g199941199943%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g199941199943%_)))
                                   _%$e199939%_)
                                  ':<root>)))
                           (_%ns199949%_
                            (##structure-ref
                             _%ctx199865%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr199951%_
                            (symbol->string
                             (##structure-ref
                              _%ctx199865%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg199959%_
                            (let ((_%$e199953%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr199951%_ '#\/))))
                              (if _%$e199953%_
                                  ((lambda (_%x199956%_)
                                     (let ((__tmp200975
                                            (substring
                                             _%idstr199951%_
                                             '0
                                             _%x199956%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp200975)))
                                   _%$e199953%_)
                                  '#f)))
                           (_%rt199961%_
                            (let ((__tmp200976
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp200976 _%ctx199865%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path199935%_))
                      (gxc#with-output-to-scheme-file
                       _%path199935%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude199947%_))
                         (if _%pkg199959%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg199959%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns199949%_))
                         (newline)
                         (pretty-print _%code199933%_)
                         (if _%rt199961%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt199961%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi199868%_
                  (lambda (_%part199873%_)
                    (let* ((_%part199874199887%_ _%part199873%_)
                           (_%E199876199891%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part199874199887%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K199877199902%_
                            (lambda (_%code199894%_
                                     _%n199895%_
                                     _%phi199896%_
                                     _%phi-ctx199897%_)
                              (let ((_%code199900%_
                                     (let ((__tmp200977
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code199894%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200977
                                        gx#current-expander-context
                                        _%phi-ctx199897%_
                                        gx#current-expander-phi
                                        _%phi199896%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx199865%_
                                  _%n199895%_
                                  '".scm")
                                 _%code199900%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part199874199887%_))
                          (let ((_%hd199878199905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part199874199887%_)))
                                (_%tl199879199907%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part199874199887%_))))
                            (let ((_%phi-ctx199910%_ _%hd199878199905%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199879199907%_))
                                  (let ((_%hd199880199912%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199879199907%_)))
                                        (_%tl199881199914%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199879199907%_))))
                                    (let ((_%phi199917%_ _%hd199880199912%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl199881199914%_))
                                          (let ((_%hd199882199919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl199881199914%_)))
                                                (_%tl199883199921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199881199914%_))))
                                            (let ((_%n199924%_
                                                   _%hd199882199919%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl199883199921%_))
                                                  (let ((_%hd199884199926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl199883199921%_)))
                                                        (_%tl199885199928%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl199883199921%_))))
                                                    (let ((_%code199931%_
                                                           _%hd199884199926%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl199885199928%_))
                                                          (_%K199877199902%_
                                                           _%code199931%_
                                                           _%n199924%_
                                                           _%phi199917%_
                                                           _%phi-ctx199910%_)
                                                          (_%E199876199891%_))))
                                                  (_%E199876199891%_))))
                                          (_%E199876199891%_))))
                                  (_%E199876199891%_))))
                          (_%E199876199891%_))))))
          (let ((_g200978_ (gxc#generate-meta-code _%ctx199865%_)))
            (begin
              (let ((_g200979_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g200978_)
                           (##vector-length _g200978_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g200979_ 2)))
                    (error "Context expects 2 values" _g200979_)))
              (let ((_%ssi-code199870%_
                     (let () (declare (not safe)) (##vector-ref _g200978_ 0)))
                    (_%phi-code199871%_
                     (let () (declare (not safe)) (##vector-ref _g200978_ 1))))
                (begin
                  (_%compile-ssi199867%_ _%ssi-code199870%_)
                  (for-each _%compile-phi199868%_ _%phi-code199871%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx199847%_)
        (let* ((_%path199849%_
                (gxc#compile-output-file _%ctx199847%_ '#f '".ssxi.ss"))
               (_%code199851%_
                (let ((__tmp200980
                       (##structure-ref
                        _%ctx199847%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp200980)))
               (_%idstr199853%_
                (symbol->string
                 (##structure-ref
                  _%ctx199847%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg199861%_
                (let ((_%$e199855%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr199853%_ '#\/))))
                  (if _%$e199855%_
                      ((lambda (_%x199858%_)
                         (let ((__tmp200981
                                (substring _%idstr199853%_ '0 _%x199858%_)))
                           (declare (not safe))
                           (##string->symbol __tmp200981)))
                       _%$e199855%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path199849%_))
          (gxc#with-output-to-scheme-file
           _%path199849%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg199861%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg199861%_))
                 '#!void)
             (newline)
             (pretty-print _%code199851%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx199840%_)
        (let* ((_%state199842%_
                (let ((__obj200882
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj200882 _%ctx199840%_))
                  __obj200882))
               (_%ssi-code199844%_
                (let ((__tmp200982
                       (##structure-ref
                        _%ctx199840%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state199842%_
                   __tmp200982))))
          (values _%ssi-code199844%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state199842%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx199833%_)
        (let ((_%lifts199835%_ (box '())))
          (let ((__tmp200985
                 (lambda ()
                   (let ((_%code199838%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx199833%_))))
                     (if (null? (unbox _%lifts199835%_))
                         _%code199838%_
                         (cons 'begin
                               (let ((__tmp200987 (cons _%code199838%_ '()))
                                     (__tmp200986
                                      (reverse (unbox _%lifts199835%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp200987 __tmp200986)))))))
                (__tmp200984
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp200983
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200985
             gxc#current-compile-lift
             _%lifts199835%_
             gxc#current-compile-marks
             __tmp200984
             gxc#current-compile-identifiers
             __tmp200983)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx199829%_)
        (let ((_%modules199831%_ (box '())))
          (let ((__tmp200988
                 (##structure-ref _%ctx199829%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules199831%_ __tmp200988))
          (reverse (unbox _%modules199831%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path199809%_ _%code199810%_ _%phi?199811%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path199809%_))
        (gxc#with-output-to-scheme-file
         _%path199809%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp200989
                                           (if _%phi?199811%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp200989)))))))
           (pretty-print _%code199810%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it199815%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path199809%_ _%phi?199811%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp200990
                         (cons 'compile-file (cons _%path199809%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it199815%_ __tmp200990))
                  (_%compile-it199815%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path199820%_ _%code199821%_)
        (let ((_%phi?199823%_ '#f))
          (gxc#compile-scm-file__%
           _%path199820%_
           _%code199821%_
           _%phi?199823%_))))
    (define gxc#compile-scm-file
      (lambda _g200992_
        (let ((_g200991_ (let () (declare (not safe)) (##length _g200992_))))
          (cond ((let () (declare (not safe)) (##fx= _g200991_ 2))
                 (apply gxc#compile-scm-file__0 _g200992_))
                ((let () (declare (not safe)) (##fx= _g200991_ 3))
                 (apply gxc#compile-scm-file__% _g200992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g200992_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?199710%_)
        (let _%lp199712%_ ((_%rest199714%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199715%_ '()))
          (let* ((_%rest199716199736%_ _%rest199714%_)
                 (_%else199720199744%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts199715%_)))
                        (reverse _%opts199715%_)))))
            (let ((_%K199730199787%_
                   (lambda (_%rest199785%_)
                     (_%lp199712%_ _%rest199785%_ _%opts199715%_)))
                  (_%K199725199769%_
                   (lambda (_%rest199767%_)
                     (_%lp199712%_ _%rest199767%_ _%opts199715%_)))
                  (_%K199722199751%_
                   (lambda (_%rest199748%_ _%opt199749%_)
                     (_%lp199712%_
                      _%rest199748%_
                      (cons _%opt199749%_ _%opts199715%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest199716199736%_))
                  (let ((_%tl199732199792%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199716199736%_)))
                        (_%hd199731199790%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199716199736%_))))
                    (if (equal? _%hd199731199790%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199732199792%_))
                            (let* ((_%tl199734199795%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199732199792%_)))
                                   (_%rest199798%_ _%tl199734199795%_))
                              (_%K199730199787%_ _%rest199798%_))
                            (let ((_%opt199759%_ _%hd199731199790%_)
                                  (_%rest199761%_ _%tl199732199792%_))
                              (_%K199722199751%_
                               _%rest199761%_
                               _%opt199759%_)))
                        (if (equal? _%hd199731199790%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199732199792%_))
                                (let* ((_%tl199729199777%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl199732199792%_)))
                                       (_%rest199780%_ _%tl199729199777%_))
                                  (_%K199725199769%_ _%rest199780%_))
                                (let ((_%opt199759%_ _%hd199731199790%_)
                                      (_%rest199761%_ _%tl199732199792%_))
                                  (_%K199722199751%_
                                   _%rest199761%_
                                   _%opt199759%_)))
                            (let ((_%opt199759%_ _%hd199731199790%_)
                                  (_%rest199761%_ _%tl199732199792%_))
                              (_%K199722199751%_
                               _%rest199761%_
                               _%opt199759%_)))))
                  (_%else199720199744%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?199804%_ '#f)) (gxc#gsc-link-options__% _%phi?199804%_))))
    (define gxc#gsc-link-options
      (lambda _g200994_
        (let ((_g200993_ (let () (declare (not safe)) (##length _g200994_))))
          (cond ((let () (declare (not safe)) (##fx= _g200993_ 0))
                 (apply gxc#gsc-link-options__0 _g200994_))
                ((let () (declare (not safe)) (##fx= _g200993_ 1))
                 (apply gxc#gsc-link-options__% _g200994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g200994_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords199559%_ _%static?199555199560%_ _%phi?199562%_)
        (let ((_%static?199564%_
               (if (eq? _%static?199555199560%_ absent-value)
                   '#f
                   _%static?199555199560%_)))
          (if _%phi?199562%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp199566%_ ((_%rest199568%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199569%_ '()))
                (let* ((_%rest199570199596%_ _%rest199568%_)
                       (_%else199575199604%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts199569%_)))
                              (reverse! _%opts199569%_)))))
                  (let ((_%K199590199667%_
                         (lambda (_%rest199664%_ _%opt199665%_)
                           (if _%static?199564%_
                               (_%lp199566%_
                                _%rest199664%_
                                (cons _%opt199665%_
                                      (cons '"-cc-options" _%opts199569%_)))
                               (_%lp199566%_ _%rest199664%_ _%opts199569%_))))
                        (_%K199585199644%_
                         (lambda (_%rest199641%_ _%opt199642%_)
                           (_%lp199566%_
                            _%rest199641%_
                            (cons _%opt199642%_
                                  (cons '"-cc-options" _%opts199569%_)))))
                        (_%K199580199624%_
                         (lambda (_%rest199622%_)
                           (_%lp199566%_ _%rest199622%_ _%opts199569%_)))
                        (_%K199577199610%_
                         (lambda (_%rest199608%_)
                           (_%lp199566%_ _%rest199608%_ _%opts199569%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199570199596%_))
                        (let ((_%tl199592199672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199570199596%_)))
                              (_%hd199591199670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199570199596%_))))
                          (if (equal? _%hd199591199670%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199592199672%_))
                                  (let ((_%tl199594199677%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199592199672%_)))
                                        (_%hd199593199675%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199592199672%_))))
                                    (if (equal? _%hd199593199675%_ '"-Bstatic")
                                        (let ((_%opt199680%_
                                               _%hd199593199675%_)
                                              (_%rest199682%_
                                               _%tl199594199677%_))
                                          (_%K199590199667%_
                                           _%rest199682%_
                                           _%opt199680%_))
                                        (let ((_%opt199657%_
                                               _%hd199593199675%_)
                                              (_%rest199659%_
                                               _%tl199594199677%_))
                                          (_%K199585199644%_
                                           _%rest199659%_
                                           _%opt199657%_))))
                                  (let ((_%rest199616%_ _%tl199592199672%_))
                                    (_%K199577199610%_ _%rest199616%_)))
                              (if (equal? _%hd199591199670%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199592199672%_))
                                      (let* ((_%tl199584199632%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199592199672%_)))
                                             (_%rest199635%_
                                              _%tl199584199632%_))
                                        (_%K199580199624%_ _%rest199635%_))
                                      (let ((_%rest199616%_
                                             _%tl199592199672%_))
                                        (_%K199577199610%_ _%rest199616%_)))
                                  (let ((_%rest199616%_ _%tl199592199672%_))
                                    (_%K199577199610%_ _%rest199616%_)))))
                        (_%else199575199604%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords199687%_ _%static?199555199688%_)
        (let ((_%phi?199690%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords199687%_
           _%static?199555199688%_
           _%phi?199690%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g200996_
        (let ((_g200995_ (let () (declare (not safe)) (##length _g200996_))))
          (cond ((let () (declare (not safe)) (##fx= _g200995_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g200996_))
                ((let () (declare (not safe)) (##fx= _g200995_ 3))
                 (apply gxc#gsc-cc-options__%__% _g200996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g200996_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords199699%_ . _%args199700%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords199699%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199699%_
                  'static:
                  absent-value))
               _%args199700%_)))
    (define gxc#gsc-cc-options
      (lambda _%args199556199706%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args199556199706%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords199404%_ _%static?199400199405%_ _%phi?199407%_)
        (let ((_%static?199409%_
               (if (eq? _%static?199400199405%_ absent-value)
                   '#f
                   _%static?199400199405%_)))
          (if _%phi?199407%_
              '()
              (let _%lp199411%_ ((_%rest199413%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199414%_ '()))
                (let* ((_%rest199415199441%_ _%rest199413%_)
                       (_%else199420199449%_
                        (lambda () (reverse! _%opts199414%_))))
                  (let ((_%K199435199512%_
                         (lambda (_%rest199509%_ _%opt199510%_)
                           (if _%static?199409%_
                               (_%lp199411%_
                                _%rest199509%_
                                (cons _%opt199510%_
                                      (cons '"-ld-options" _%opts199414%_)))
                               (_%lp199411%_ _%rest199509%_ _%opts199414%_))))
                        (_%K199430199489%_
                         (lambda (_%rest199486%_ _%opt199487%_)
                           (_%lp199411%_
                            _%rest199486%_
                            (cons _%opt199487%_
                                  (cons '"-ld-options" _%opts199414%_)))))
                        (_%K199425199469%_
                         (lambda (_%rest199467%_)
                           (_%lp199411%_ _%rest199467%_ _%opts199414%_)))
                        (_%K199422199455%_
                         (lambda (_%rest199453%_)
                           (_%lp199411%_ _%rest199453%_ _%opts199414%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199415199441%_))
                        (let ((_%tl199437199517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199415199441%_)))
                              (_%hd199436199515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199415199441%_))))
                          (if (equal? _%hd199436199515%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199437199517%_))
                                  (let ((_%tl199439199522%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199437199517%_)))
                                        (_%hd199438199520%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199437199517%_))))
                                    (if (equal? _%hd199438199520%_ '"-static")
                                        (let ((_%opt199525%_
                                               _%hd199438199520%_)
                                              (_%rest199527%_
                                               _%tl199439199522%_))
                                          (_%K199435199512%_
                                           _%rest199527%_
                                           _%opt199525%_))
                                        (let ((_%opt199502%_
                                               _%hd199438199520%_)
                                              (_%rest199504%_
                                               _%tl199439199522%_))
                                          (_%K199430199489%_
                                           _%rest199504%_
                                           _%opt199502%_))))
                                  (let ((_%rest199461%_ _%tl199437199517%_))
                                    (_%K199422199455%_ _%rest199461%_)))
                              (if (equal? _%hd199436199515%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199437199517%_))
                                      (let* ((_%tl199429199477%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199437199517%_)))
                                             (_%rest199480%_
                                              _%tl199429199477%_))
                                        (_%K199425199469%_ _%rest199480%_))
                                      (let ((_%rest199461%_
                                             _%tl199437199517%_))
                                        (_%K199422199455%_ _%rest199461%_)))
                                  (let ((_%rest199461%_ _%tl199437199517%_))
                                    (_%K199422199455%_ _%rest199461%_)))))
                        (_%else199420199449%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords199532%_ _%static?199400199533%_)
        (let ((_%phi?199535%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords199532%_
           _%static?199400199533%_
           _%phi?199535%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g200998_
        (let ((_g200997_ (let () (declare (not safe)) (##length _g200998_))))
          (cond ((let () (declare (not safe)) (##fx= _g200997_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g200998_))
                ((let () (declare (not safe)) (##fx= _g200997_ 3))
                 (apply gxc#gsc-ld-options__%__% _g200998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g200998_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords199544%_ . _%args199545%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords199544%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199544%_
                  'static:
                  absent-value))
               _%args199545%_)))
    (define gxc#gsc-ld-options
      (lambda _%args199401199551%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args199401199551%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir199395%_)
        (let ((_%user-staticdir199397%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir199395%_
                       '" -I "
                       _%user-staticdir199397%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp199307%_ ((_%rest199309%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199310%_ '()))
          (let* ((_%rest199311199331%_ _%rest199309%_)
                 (_%else199315199339%_ (lambda () _%opts199310%_)))
            (let ((_%K199325199382%_
                   (lambda (_%rest199380%_)
                     (_%lp199307%_ _%rest199380%_ _%opts199310%_)))
                  (_%K199320199360%_
                   (lambda (_%rest199357%_ _%opt199358%_)
                     (_%lp199307%_
                      _%rest199357%_
                      (let ((__tmp200999
                             (let ((__tmp201000
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt199358%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp201000))))
                        (declare (not safe))
                        (##append _%opts199310%_ __tmp200999)))))
                  (_%K199317199345%_
                   (lambda (_%rest199343%_)
                     (_%lp199307%_ _%rest199343%_ _%opts199310%_))))
              (if (let () (declare (not safe)) (##pair? _%rest199311199331%_))
                  (let ((_%tl199327199387%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199311199331%_)))
                        (_%hd199326199385%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199311199331%_))))
                    (if (equal? _%hd199326199385%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199327199387%_))
                            (let* ((_%tl199329199390%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199327199387%_)))
                                   (_%rest199393%_ _%tl199329199390%_))
                              (_%K199325199382%_ _%rest199393%_))
                            (let ((_%rest199351%_ _%tl199327199387%_))
                              (_%K199317199345%_ _%rest199351%_)))
                        (if (equal? _%hd199326199385%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199327199387%_))
                                (let ((_%tl199324199370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl199327199387%_)))
                                      (_%hd199323199368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl199327199387%_))))
                                  (let ((_%opt199373%_ _%hd199323199368%_)
                                        (_%rest199375%_ _%tl199324199370%_))
                                    (_%K199320199360%_
                                     _%rest199375%_
                                     _%opt199373%_)))
                                (let ((_%rest199351%_ _%tl199327199387%_))
                                  (_%K199317199345%_ _%rest199351%_)))
                            (let ((_%rest199351%_ _%tl199327199387%_))
                              (_%K199317199345%_ _%rest199351%_)))))
                  (_%else199315199339%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str199304%_)
        (not (let () (declare (not safe)) (string-empty? _%str199304%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path199297%_ _%phi?199298%_)
        (let ((_%gsc-link-opts199300%_
               (gxc#gsc-link-options__% _%phi?199298%_))
              (_%gsc-cc-opts199301%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?199298%_))
              (_%gsc-ld-opts199302%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?199298%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp201001
                  (let ((__tmp201002
                         (let ((__tmp201003 (cons _%path199297%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp201003
                            _%gsc-link-opts199300%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp201002 _%gsc-ld-opts199302%_))))
             (declare (not safe))
             (__foldr1 cons __tmp201001 _%gsc-cc-opts199301%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx199263%_ _%n199264%_ _%ext199265%_)
        (letrec ((_%module-relative-path199267%_
                  (lambda (_%ctx199295%_)
                    (path-strip-directory
                     (let ((__tmp201004
                            (##structure-ref
                             _%ctx199295%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp201004)))))
                 (_%module-source-directory199268%_
                  (lambda (_%ctx199291%_)
                    (path-directory
                     (let ((_%mpath199293%_
                            (##structure-ref
                             _%ctx199291%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath199293%_)
                           _%mpath199293%_
                           (last _%mpath199293%_))))))
                 (_%section-string199269%_
                  (lambda (_%n199285%_)
                    (if (number? _%n199285%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n199285%_))
                        (if (symbol? _%n199285%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n199285%_))
                            (if (string? _%n199285%_)
                                _%n199285%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n199285%_)))))))
                 (_%file-name199270%_
                  (lambda (_%path199283%_)
                    (if _%n199264%_
                        (string-append
                         _%path199283%_
                         '"~"
                         (_%section-string199269%_ _%n199264%_)
                         _%ext199265%_)
                        (string-append _%path199283%_ _%ext199265%_))))
                 (_%file-path199271%_
                  (lambda ()
                    (let ((_%$e199277%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e199277%_
                          ((lambda (_%outdir199280%_)
                             (path-expand
                              (_%file-name199270%_
                               (let ((__tmp201005
                                      (##structure-ref
                                       _%ctx199263%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp201005)))
                              _%outdir199280%_))
                           _%$e199277%_)
                          (path-expand
                           (_%file-name199270%_
                            (_%module-relative-path199267%_ _%ctx199263%_))
                           (_%module-source-directory199268%_
                            _%ctx199263%_)))))))
          (let ((_%path199273%_ (_%file-path199271%_)))
            (let ((__tmp201006
                   (lambda ()
                     (let ((__tmp201007 (path-directory _%path199273%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp201007)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp201006))
            _%path199273%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx199244%_)
        (letrec ((_%file-name199246%_
                  (lambda (_%id199261%_)
                    (let ((__tmp201008 (gxc#static-module-name _%id199261%_)))
                      (declare (not safe))
                      (##string-append __tmp201008 '".scm"))))
                 (_%file-path199247%_
                  (lambda ()
                    (let* ((_%file199253%_
                            (_%file-name199246%_
                             (##structure-ref
                              _%ctx199244%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e199255%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e199255%_
                          ((lambda (_%outdir199258%_)
                             (path-expand
                              _%file199253%_
                              (path-expand '"static" _%outdir199258%_)))
                           _%$e199255%_)
                          (path-expand _%file199253%_ '"static"))))))
          (let ((_%path199249%_ (_%file-path199247%_)))
            (let ((__tmp201009
                   (lambda ()
                     (let ((__tmp201010 (path-directory _%path199249%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp201010)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp201009))
            _%path199249%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx199237%_ _%opts199238%_)
        (let ((_%$e199240%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts199238%_))))
          (if _%$e199240%_
              _%$e199240%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx199237%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr199227%_)
        (if (string? _%idstr199227%_)
            (let* ((_%str199230%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr199227%_)))
                   (_%strs199232%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str199230%_ '#\/))))
              (declare (not safe))
              (string-join _%strs199232%_ '"__"))
            (if (symbol? _%idstr199227%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr199227%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr199227%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp201011
               (let ((__tmp201012 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp201012 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp201011))))
    (define gxc#invoke__%
      (lambda (_%@@keywords199191%_
               _%stdout-redirection199187199192%_
               _%stderr-redirection199188199194%_
               _%program199196%_
               _%args199197%_)
        (let* ((_%stdout-redirection199199%_
                (if (eq? _%stdout-redirection199187199192%_ absent-value)
                    '#f
                    _%stdout-redirection199187199192%_))
               (_%stderr-redirection199201%_
                (if (eq? _%stderr-redirection199188199194%_ absent-value)
                    '#f
                    _%stderr-redirection199188199194%_)))
          (let ((__tmp201013 (cons _%program199196%_ _%args199197%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp201013))
          (let* ((_%proc199203%_
                  (open-process
                   (cons 'path:
                         (cons _%program199196%_
                               (cons 'arguments:
                                     (cons _%args199197%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection199199%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection199201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output199208%_
                  (if (or _%stdout-redirection199199%_
                          _%stderr-redirection199201%_)
                      (read-line _%proc199203%_ '#f)
                      '#f))
                 (_%status199211%_ (process-status _%proc199203%_)))
            (let () (declare (not safe)) (##close-port _%proc199203%_))
            (if (zero? _%status199211%_)
                '#!void
                (begin
                  (display _%output199208%_)
                  (let ((__tmp201014 (cons _%program199196%_ _%args199197%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp201014
                     _%status199211%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords199216%_ . _%args199217%_)
        (apply gxc#invoke__%
               _%@@keywords199216%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199216%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199216%_
                  'stderr-redirection:
                  absent-value))
               _%args199217%_)))
    (define gxc#invoke
      (lambda _%args199189199223%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args199189199223%_)))))
