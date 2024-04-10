(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712757961)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp195339 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp195339))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp195340 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp195340))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195196%_ _%fun195197%_)
        (with-output-to-file
         (cons 'path: (cons _%path195196%_ gxc#scheme-file-settings))
         _%fun195197%_)))
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
      (lambda (_%gerbil-libdir195191%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195191%_)))
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
      (lambda (_%dir195189%_) (delete-file-or-directory _%dir195189%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195162%_ _%opts195163%_)
        (if (string? _%srcpath195162%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195162%_)))
        (let ((_%outdir195165%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195163%_)))
              (_%invoke-gsc?195166%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195163%_)))
              (_%gsc-options195167%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195163%_)))
              (_%keep-scm?195168%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195163%_)))
              (_%verbosity195169%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195163%_)))
              (_%optimize195170%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195163%_)))
              (_%debug195171%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195163%_)))
              (_%gen-ssxi195172%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195163%_)))
              (_%parallel?195173%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts195163%_))))
          (if _%outdir195165%_
              (let ((__tmp195341
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195165%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195341))
              '#!void)
          (if _%optimize195170%_
              (let ((__tmp195342
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195342))
              '#!void)
          (let ((__tmp195345
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195162%_))
                   (gxc#compile-top-module
                    (let ((__tmp195346
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath195162%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195346)))))
                (__tmp195344 (gxc#compile-timestamp))
                (__tmp195343
                 (cons 'compile-module (cons _%srcpath195162%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195345
             gxc#current-compile-output-dir
             _%outdir195165%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195166%_
             gxc#current-compile-gsc-options
             _%gsc-options195167%_
             gxc#current-compile-keep-scm
             _%keep-scm?195168%_
             gxc#current-compile-verbose
             _%verbosity195169%_
             gxc#current-compile-optimize
             _%optimize195170%_
             gxc#current-compile-debug
             _%debug195171%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195172%_
             gxc#current-compile-timestamp
             __tmp195344
             gxc#current-compile-context
             __tmp195343
             gxc#current-compile-parallel
             _%parallel?195173%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195182%_)
        (let ((_%opts195184%_ '()))
          (gxc#compile-module__% _%srcpath195182%_ _%opts195184%_))))
    (define gxc#compile-module
      (lambda _g195348_
        (let ((_g195347_ (let () (declare (not safe)) (##length _g195348_))))
          (cond ((let () (declare (not safe)) (##fx= _g195347_ 1))
                 (apply gxc#compile-module__0 _g195348_))
                ((let () (declare (not safe)) (##fx= _g195347_ 2))
                 (apply gxc#compile-module__% _g195348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g195348_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195137%_ _%opts195138%_)
        (if (string? _%srcpath195137%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195137%_)))
        (let ((_%outdir195140%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195138%_)))
              (_%invoke-gsc?195141%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195138%_)))
              (_%gsc-options195142%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195138%_)))
              (_%keep-scm?195143%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195138%_)))
              (_%verbosity195144%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195138%_)))
              (_%debug195145%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195138%_)))
              (_%parallel?195146%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts195138%_))))
          (if _%outdir195140%_
              (let ((__tmp195349
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195140%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195349))
              '#!void)
          (let ((__tmp195352
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195137%_))
                   (gxc#compile-executable-module
                    (let ((__tmp195353
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath195137%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195353))
                    _%opts195138%_)))
                (__tmp195351 (gxc#compile-timestamp))
                (__tmp195350 (cons 'compile-exe (cons _%srcpath195137%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195352
             gxc#current-compile-output-dir
             _%outdir195140%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195141%_
             gxc#current-compile-gsc-options
             _%gsc-options195142%_
             gxc#current-compile-keep-scm
             _%keep-scm?195143%_
             gxc#current-compile-verbose
             _%verbosity195144%_
             gxc#current-compile-debug
             _%debug195145%_
             gxc#current-compile-timestamp
             __tmp195351
             gxc#current-compile-context
             __tmp195350
             gxc#current-compile-parallel
             _%parallel?195146%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195154%_)
        (let ((_%opts195156%_ '()))
          (gxc#compile-exe__% _%srcpath195154%_ _%opts195156%_))))
    (define gxc#compile-exe
      (lambda _g195355_
        (let ((_g195354_ (let () (declare (not safe)) (##length _g195355_))))
          (cond ((let () (declare (not safe)) (##fx= _g195354_ 1))
                 (apply gxc#compile-exe__0 _g195355_))
                ((let () (declare (not safe)) (##fx= _g195354_ 2))
                 (apply gxc#compile-exe__% _g195355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g195355_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195133%_ _%opts195134%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195134%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx195133%_
             _%opts195134%_)
            (gxc#compile-executable-module/separate
             _%ctx195133%_
             _%opts195134%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194923%_ _%opts194924%_)
        (letrec ((_%generate-stub194926%_
                  (lambda (_%builtin-modules195129%_)
                    (let ((_%mod-main195131%_
                           (gxc#find-runtime-symbol _%ctx194923%_ 'main)))
                      (let ((__tmp195356
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules195129%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp195356))
                      (let ((__tmp195357
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195131%_
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
                        (##write __tmp195357))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194927%_
                  (lambda (_%gerbil-libdir195127%_)
                    (let ((__tmp195358
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir195127%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp195358 read))))
                 (_%replace-extension194928%_
                  (lambda (_%path195124%_ _%ext195125%_)
                    (string-append
                     (path-strip-extension _%path195124%_)
                     _%ext195125%_)))
                 (_%userlib-module?194929%_
                  (lambda (_%ctx195122%_)
                    (if (not (_%exclude-module?194931%_ _%ctx195122%_))
                        (not (_%libgerbil-module?194930%_ _%ctx195122%_))
                        '#f)))
                 (_%libgerbil-module?194930%_
                  (lambda (_%ctx195115%_)
                    (let ((_%id-str195117%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195115%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?194931%_ _%id-str195117%_))
                          (let ((_%$e195119%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195117%_))))
                            (if _%$e195119%_
                                _%$e195119%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str195117%_))))
                          '#f))))
                 (_%exclude-module?194931%_
                  (lambda (_%ctx-or-str195111%_)
                    (let ((_%str195113%_
                           (if (string? _%ctx-or-str195111%_)
                               _%ctx-or-str195111%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str195111%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str195113%_))))
                 (_%not-file-empty?194932%_
                  (lambda (_%path195109%_)
                    (not (gxc#file-empty? _%path195109%_))))
                 (_%fold-libgerbil-runtime-scm194933%_
                  (lambda (_%gerbil-staticdir195102%_ _%libgerbil-scm195103%_)
                    (let ((_%gerbil-runtime-scm195107%_
                           (let ((__tmp195359
                                  (lambda (_%rtm195105%_)
                                    (path-expand
                                     (let ((__tmp195360
                                            (let ((__tmp195361
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm195105%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp195361
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp195360 '".scm"))
                                     _%gerbil-staticdir195102%_))))
                             (declare (not safe))
                             (##map __tmp195359 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates194934%_
                       (append _%gerbil-runtime-scm195107%_
                               _%libgerbil-scm195103%_)))))
                 (_%remove-duplicates194934%_
                  (lambda (_%strlst195062%_)
                    (let _%loop195064%_ ((_%rest195066%_ _%strlst195062%_)
                                         (_%result195067%_ '()))
                      (let* ((_%rest195068195076%_ _%rest195066%_)
                             (_%else195070195084%_
                              (lambda () (reverse! _%result195067%_)))
                             (_%K195072195090%_
                              (lambda (_%rest195087%_ _%path195088%_)
                                (if (member _%path195088%_ _%result195067%_)
                                    (_%loop195064%_
                                     _%rest195087%_
                                     _%result195067%_)
                                    (_%loop195064%_
                                     _%rest195087%_
                                     (cons _%path195088%_
                                           _%result195067%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest195068195076%_))
                            (let ((_%hd195073195093%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest195068195076%_)))
                                  (_%tl195074195095%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest195068195076%_))))
                              (let* ((_%path195098%_ _%hd195073195093%_)
                                     (_%rest195100%_ _%tl195074195095%_))
                                (_%K195072195090%_
                                 _%rest195100%_
                                 _%path195098%_)))
                            (_%else195070195084%_))))))
                 (_%compile-stub194935%_
                  (lambda (_%output-scm194942%_ _%output-bin194943%_)
                    (let* ((_%gerbil-home194945%_
                            (let ((__tmp195362
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195362)))
                           (_%gerbil-libdir194947%_
                            (path-expand '"lib" _%gerbil-home194945%_))
                           (_%gerbil-staticdir194949%_
                            (path-expand '"static" _%gerbil-libdir194947%_))
                           (_%deps194951%_
                            (gxc#find-runtime-module-deps _%ctx194923%_))
                           (_%libgerbil-deps194953%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?194930%_
                               _%deps194951%_)))
                           (_%libgerbil-scm194955%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps194953%_)))
                           (_%libgerbil-scm194957%_
                            (_%fold-libgerbil-runtime-scm194933%_
                             _%gerbil-staticdir194949%_
                             _%libgerbil-scm194955%_))
                           (_%libgerbil-c194963%_
                            (map (lambda (_%g194958194960%_)
                                   (_%replace-extension194928%_
                                    _%g194958194960%_
                                    '".c"))
                                 _%libgerbil-scm194957%_))
                           (_%libgerbil-o194969%_
                            (map (lambda (_%g194964194966%_)
                                   (_%replace-extension194928%_
                                    _%g194964194966%_
                                    '".o"))
                                 _%libgerbil-scm194957%_))
                           (_%src-deps194971%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?194929%_
                               _%deps194951%_)))
                           (_%src-deps-scm194973%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps194971%_)))
                           (_%src-deps-scm194975%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194932%_
                               _%src-deps-scm194973%_)))
                           (_%src-deps-scm194977%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194975%_)))
                           (_%src-deps-c194983%_
                            (let ((__tmp195363
                                   (lambda (_%g194978194980%_)
                                     (_%replace-extension194928%_
                                      _%g194978194980%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp195363 _%src-deps-scm194977%_)))
                           (_%src-deps-o194989%_
                            (let ((__tmp195364
                                   (lambda (_%g194984194986%_)
                                     (_%replace-extension194928%_
                                      _%g194984194986%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp195364 _%src-deps-scm194977%_)))
                           (_%src-bin-scm194991%_
                            (gxc#find-static-module-file _%ctx194923%_))
                           (_%src-bin-scm194993%_
                            (path-expand _%src-bin-scm194991%_))
                           (_%src-bin-c194995%_
                            (_%replace-extension194928%_
                             _%src-bin-scm194993%_
                             '".c"))
                           (_%src-bin-o194997%_
                            (_%replace-extension194928%_
                             _%src-bin-scm194993%_
                             '".o"))
                           (_%output-bin194999%_
                            (path-expand _%output-bin194943%_))
                           (_%output-scm195001%_
                            (path-expand _%output-scm194942%_))
                           (_%output-c195003%_
                            (_%replace-extension194928%_
                             _%output-scm195001%_
                             '".c"))
                           (_%output-o195005%_
                            (_%replace-extension194928%_
                             _%output-scm195001%_
                             '".o"))
                           (_%output_-c195007%_
                            (_%replace-extension194928%_
                             _%output-scm195001%_
                             '"_.c"))
                           (_%output_-o195009%_
                            (_%replace-extension194928%_
                             _%output-scm195001%_
                             '"_.o"))
                           (_%gsc-link-opts195011%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts195013%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts195015%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir194949%_))
                           (_%output-ld-opts195017%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts195019%_
                            (_%get-libgerbil-ld-opts194927%_
                             _%gerbil-libdir194947%_))
                           (_%rpath195021%_
                            (gxc#gerbil-rpath _%gerbil-libdir194947%_))
                           (_%builtin-modules195025%_
                            (_%remove-duplicates194934%_
                             (let ((__tmp195365
                                    (let ((__tmp195367
                                           (lambda (_%mod195023%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod195023%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp195366
                                           (cons _%ctx194923%_
                                                 _%deps194951%_)))
                                      (declare (not safe))
                                      (##map __tmp195367 __tmp195366))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp195365)))))
                      (letrec ((_%compile-obj195028%_
                                (lambda (_%scm-path195035%_ _%c-path195036%_)
                                  (let* ((_%o-path195038%_
                                          (_%replace-extension194928%_
                                           _%c-path195036%_
                                           '".o"))
                                         (_%lock195040%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path195038%_
                                             '".lock")))
                                         (_%locked195042%_ '#f)
                                         (_%unlock195045%_
                                          (lambda ()
                                            (close-port _%locked195042%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock195040%_)))))
                                    (let _%retry195048%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock195040%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry195048%_))
                                          (begin
                                            (set! _%locked195042%_
                                                  (let ((__tmp195368
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock195040%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp195368)))
                                            (if _%locked195042%_
                                                '#!void
                                                (_%retry195048%_)))))
                                    (let ((__tmp195370
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path195038%_)))
                                                     (not _%scm-path195035%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path195035%_
                                                        _%o-path195038%_)))
                                                 (let ((_%gsc-cc-opts195059%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp195371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195372 (cons _%c-path195036%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195372
                            _%gsc-static-opts195015%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195371 _%gsc-cc-opts195059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp195369
                                           (lambda () (_%unlock195045%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp195370
                                       __tmp195369))))))
                        (let ((__tmp195373
                               (lambda ()
                                 (let ((__tmp195374
                                        (path-directory _%output-bin194999%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp195374)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp195373))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195001%_
                         (lambda ()
                           (_%generate-stub194926%_
                            _%builtin-modules195025%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it195033%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp195375
                                                   (let ((__tmp195376
                                                          (let ((__tmp195377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm194993%_
                               (cons _%output-scm195001%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195377 _%src-deps-scm194977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp195376
                                                      _%libgerbil-c194963%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp195375
                                               _%gsc-link-opts195011%_))))
                                     (for-each
                                      _%compile-obj195028%_
                                      (let ((__tmp195378
                                             (cons _%src-bin-scm194993%_
                                                   (cons _%output-scm195001%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195378
                                         _%src-deps-scm194977%_))
                                      (let ((__tmp195379
                                             (cons _%src-bin-c194995%_
                                                   (cons _%output-c195003%_
                                                         (cons _%output_-c195007%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195379
                                         _%src-deps-c194983%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin194999%_
                                                        (let ((__tmp195380
                                                               (cons _%src-bin-o194997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o195005%_
                                   (cons _%output_-o195009%_
                                         (let ((__tmp195381
                                                (let ((__tmp195382
                                                       (let ((__tmp195384
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir194947%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts195019%_))))
                     (__tmp195383
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath195021%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp195384 __tmp195383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195382
                                                   _%output-ld-opts195017%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195381
                                            _%libgerbil-o194969%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp195380 _%src-deps-o194989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp195385
                                            (cons _%output-c195003%_
                                                  (cons _%output_-c195007%_
                                                        (cons _%output-o195005%_
                                                              (cons _%output_-o195009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp195385)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it195033%_))
                                  (_%compile-it195033%_)))
                            '#!void))))))
          (let* ((_%output-bin194937%_
                  (gxc#compile-exe-output-file _%ctx194923%_ _%opts194924%_))
                 (_%output-scm194939%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194937%_ '"__exe.scm"))))
            (_%compile-stub194935%_
             _%output-scm194939%_
             _%output-bin194937%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194745%_ _%opts194746%_)
        (letrec ((_%reset-declare194748%_
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
                 (_%generate-stub194749%_
                  (lambda (_%deps194914%_)
                    (let ((_%mod-main194916%_
                           (gxc#find-runtime-symbol _%ctx194745%_ 'main))
                          (_%reset-decl194917%_ (_%reset-declare194748%_))
                          (_%user-decl194918%_ (_%user-declare194750%_)))
                      (for-each
                       (lambda (_%dep194920%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194917%_))
                         (newline)
                         (if _%user-decl194918%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194918%_))
                               (newline))
                             '#!void)
                         (let ((__tmp195386
                                (cons 'include (cons _%dep194920%_ '()))))
                           (declare (not safe))
                           (##write __tmp195386))
                         (newline))
                       _%deps194914%_)
                      (let ((__tmp195387
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp195387))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194750%_
                  (lambda ()
                    (let* ((_%gsc-opts194819%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194746%_)))
                           (_%gsc-prelude194821%_
                            (if _%gsc-opts194819%_
                                (member '"-prelude" _%gsc-opts194819%_)
                                '#f))
                           (_%gsc-prelude194823%_
                            (if _%gsc-prelude194821%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194821%_)))
                                '#f)))
                      (let _%lp194826%_ ((_%rest194828%_
                                          (cons _%gsc-prelude194823%_ '()))
                                         (_%user-decls194829%_ '()))
                        (let* ((_%rest194830194838%_ _%rest194828%_)
                               (_%else194832194846%_
                                (lambda ()
                                  (if (null? _%user-decls194829%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194829%_)))))
                               (_%K194834194902%_
                                (lambda (_%rest194849%_ _%expr194850%_)
                                  (let* ((_%expr194851194863%_ _%expr194850%_)
                                         (_%else194854194871%_
                                          (lambda ()
                                            (_%lp194826%_
                                             _%rest194849%_
                                             _%user-decls194829%_))))
                                    (let ((_%K194859194892%_
                                           (lambda (_%decls194890%_)
                                             (_%lp194826%_
                                              _%rest194849%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls194829%_
                                                 _%decls194890%_)))))
                                          (_%K194856194877%_
                                           (lambda (_%exprs194875%_)
                                             (_%lp194826%_
                                              (append _%exprs194875%_
                                                      _%rest194849%_)
                                              _%user-decls194829%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194851194863%_))
                                          (let ((_%tl194861194897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194851194863%_)))
                                                (_%hd194860194895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194851194863%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194860194895%_
                                                         'declare))
                                                (let ((_%decls194900%_
                                                       _%tl194861194897%_))
                                                  (_%K194859194892%_
                                                   _%decls194900%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194860194895%_
                                                             'begin))
                                                    (let ((_%exprs194885%_
                                                           _%tl194861194897%_))
                                                      (_%K194856194877%_
                                                       _%exprs194885%_))
                                                    (_%else194854194871%_))))
                                          (_%else194854194871%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194830194838%_))
                              (let ((_%hd194835194905%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194830194838%_)))
                                    (_%tl194836194907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194830194838%_))))
                                (let* ((_%expr194910%_ _%hd194835194905%_)
                                       (_%rest194912%_ _%tl194836194907%_))
                                  (_%K194834194902%_
                                   _%rest194912%_
                                   _%expr194910%_)))
                              (_%else194832194846%_)))))))
                 (_%compile-stub194751%_
                  (lambda (_%output-scm194758%_ _%output-bin194759%_)
                    (let* ((_%gerbil-home194761%_
                            (let ((__tmp195388
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195388)))
                           (_%gerbil-libdir194763%_
                            (path-expand '"lib" _%gerbil-home194761%_))
                           (_%runtime194765%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194767%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194761%_))
                           (_%include-gambit-sharp194769%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194767%_
                               '"\")")))
                           (_%bin-scm194771%_
                            (gxc#find-static-module-file _%ctx194745%_))
                           (_%deps194773%_
                            (gxc#find-runtime-module-deps _%ctx194745%_))
                           (_%deps194775%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps194773%_)))
                           (_%deps194780%_
                            (let ((__tmp195389
                                   (lambda (_%$obj194777%_)
                                     (not (gxc#file-empty? _%$obj194777%_)))))
                              (declare (not safe))
                              (##filter __tmp195389 _%deps194775%_)))
                           (_%deps194784%_
                            (let ((__tmp195390
                                   (lambda (_%f194782%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f194782%_
                                             _%runtime194765%_))))))
                              (declare (not safe))
                              (##filter __tmp195390 _%deps194780%_)))
                           (_%output-base194786%_
                            (let ((__tmp195391
                                   (path-strip-extension
                                    _%output-scm194758%_)))
                              (declare (not safe))
                              (##string-append __tmp195391)))
                           (_%output-c194788%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194786%_ '".c")))
                           (_%output-o194790%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194786%_ '".o")))
                           (_%output-c_194792%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194786%_ '"_.c")))
                           (_%output-o_194794%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194786%_ '"_.o")))
                           (_%gsc-link-opts194796%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194798%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts194800%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir194763%_)))
                           (_%output-ld-opts194802%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros194804%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194769%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194769%_
                                            '()))))
                           (_%gsc-link-opts194806%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194796%_
                               _%gsc-gx-macros194804%_)))
                           (_%rpath194808%_
                            (gxc#gerbil-rpath _%gerbil-libdir194763%_))
                           (_%default-ld-options194810%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp195392
                             (lambda ()
                               (let ((__tmp195393
                                      (path-directory _%output-bin194759%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195393)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195392))
                      (gxc#with-output-to-scheme-file
                       _%output-scm194758%_
                       (lambda ()
                         (_%generate-stub194749%_
                          (let ((__tmp195394
                                 (let ((__tmp195395
                                        (cons _%bin-scm194771%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp195395
                                    _%deps194784%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp195394 _%runtime194765%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it194816%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_194792%_
                                                      (let ((__tmp195396
                                                             (cons _%output-scm194758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195396 _%gsc-link-opts194806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp195397
                                                 (let ((__tmp195398
                                                        (cons _%output-c194788%_
                                                              (cons _%output-c_194792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp195398
                                                    _%gsc-static-opts194800%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195397
                                             _%gsc-cc-opts194798%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin194759%_
                                                      (cons _%output-o194790%_
                                                            (cons _%output-o_194794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195399
                                 (let ((__tmp195401
                                        (cons '"-L"
                                              (cons _%gerbil-libdir194763%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options194810%_))))
                                       (__tmp195400
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath194808%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp195401 __tmp195400))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp195399
                             _%output-ld-opts194802%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it194816%_))
                                (_%compile-it194816%_)))
                          '#!void)))))
          (let* ((_%output-bin194753%_
                  (gxc#compile-exe-output-file _%ctx194745%_ _%opts194746%_))
                 (_%output-scm194755%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194753%_ '"__exe.scm"))))
            (_%compile-stub194751%_
             _%output-scm194755%_
             _%output-bin194753%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx194694%_ _%id194695%_)
        (let ((_%$e194741%_
               (let ((__tmp195403
                      (lambda (_%e194696194698%_)
                        (let* ((_%g194700194710%_ _%e194696194698%_)
                               (_%else194702194718%_ (lambda () '#f))
                               (_%K194704194722%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194700194710%_
                                 'gx#module-export::t))
                              (let* ((_%e194705194725%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194700194710%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194706194728%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194700194710%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194707194731%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194700194710%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194707194731%_ '0))
                                    (let ((_%e194708194734%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194700194710%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194736194738%_)
                                             (eq? _%g194736194738%_
                                                  _%id194695%_))
                                           _%e194708194734%_)
                                          (_%K194704194722%_)
                                          (_%else194702194718%_)))
                                    (_%else194702194718%_)))
                              (_%else194702194718%_)))))
                     (__tmp195402
                      (##structure-ref
                       _%ctx194694%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp195403 __tmp195402))))
          (if _%$e194741%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194741%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194685%_ _%id194686%_)
        (let ((_%$e194688%_
               (gxc#find-export-binding _%ctx194685%_ _%id194686%_)))
          (if _%$e194688%_
              ((lambda (_%bind194691%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194691%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194686%_)))
                 (##structure-ref _%bind194691%_ '1 gx#binding::t '#f))
               _%$e194688%_)
              (let ((__tmp195404
                     (##structure-ref
                      _%ctx194685%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp195404
                 _%id194686%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx194551%_)
        (letrec* ((_%ht194553%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template194554%_
                   (lambda (_%in194630%_ _%phi194631%_)
                     (let ((_%iphi194633%_
                            (fx+ _%phi194631%_
                                 (##direct-structure-ref
                                  _%in194630%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194634%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194630%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194636%_ ((_%rest194638%_ _%imports194634%_)
                                          (_%r194639%_ '()))
                         (let* ((_%rest194640194648%_ _%rest194638%_)
                                (_%else194642194656%_ (lambda () _%r194639%_))
                                (_%K194644194673%_
                                 (lambda (_%rest194659%_ _%in194660%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194660%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi194633%_))
                                           (_%lp194636%_
                                            _%rest194659%_
                                            (cons _%in194660%_ _%r194639%_))
                                           (_%lp194636%_
                                            _%rest194659%_
                                            _%r194639%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194660%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194664%_
                                                  (fx+ _%phi194631%_
                                                       (##direct-structure-ref
                                                        _%in194660%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194664%_))
                                                 (_%lp194636%_
                                                  _%rest194659%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in194660%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r194639%_))
                                                 (_%lp194636%_
                                                  _%rest194659%_
                                                  _%r194639%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194660%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194667%_
                                                      (fx+ _%iphi194633%_
                                                           (##direct-structure-ref
                                                            _%in194660%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194667%_))
                                                     (_%lp194636%_
                                                      _%rest194659%_
                                                      (cons (##direct-structure-ref
                                                             _%in194660%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r194639%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194667%_))
                                                         (_%lp194636%_
                                                          _%rest194659%_
                                                          (let ((__tmp195405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template194554%_
                          _%in194660%_
                          _%iphi194633%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r194639%_ __tmp195405)))
                 (_%lp194636%_ _%rest194659%_ _%r194639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp194636%_
                                                _%rest194659%_
                                                _%r194639%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194640194648%_))
                               (let ((_%hd194645194676%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194640194648%_)))
                                     (_%tl194646194678%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194640194648%_))))
                                 (let* ((_%in194681%_ _%hd194645194676%_)
                                        (_%rest194683%_ _%tl194646194678%_))
                                   (_%K194644194673%_
                                    _%rest194683%_
                                    _%in194681%_)))
                               (_%else194642194656%_)))))))
                  (_%find-deps194555%_
                   (lambda (_%rest194563%_ _%deps194564%_)
                     (let* ((_%rest194565194573%_ _%rest194563%_)
                            (_%else194567194581%_ (lambda () _%deps194564%_))
                            (_%K194569194618%_
                             (lambda (_%rest194584%_ _%hd194585%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd194585%_
                                      'gx#module-context::t))
                                   (let ((_%id194588%_
                                          (##structure-ref
                                           _%hd194585%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports194589%_
                                          (##structure-ref
                                           _%hd194585%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht194553%_
                                            _%id194588%_))
                                         (_%find-deps194555%_
                                          _%rest194584%_
                                          _%deps194564%_)
                                         (let ((_%$e194592%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd194585%_))))
                                           (if _%$e194592%_
                                               ((lambda (_%pre194595%_)
                                                  (let ((_%xdeps194597%_
                                                         (_%find-deps194555%_
                                                          (cons _%pre194595%_
                                                                _%imports194589%_)
                                                          _%deps194564%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht194553%_
                                                       _%id194588%_
                                                       _%hd194585%_))
                                                    (_%find-deps194555%_
                                                     _%rest194584%_
                                                     (cons _%hd194585%_
                                                           _%xdeps194597%_))))
                                                _%$e194592%_)
                                               (let ((_%xdeps194600%_
                                                      (_%find-deps194555%_
                                                       _%imports194589%_
                                                       _%deps194564%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht194553%_
                                                    _%id194588%_
                                                    _%hd194585%_))
                                                 (_%find-deps194555%_
                                                  _%rest194584%_
                                                  (cons _%hd194585%_
                                                        _%xdeps194600%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd194585%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194603%_
                                              (##structure-ref
                                               _%hd194585%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht194553%_
                                                _%id194603%_))
                                             (_%find-deps194555%_
                                              _%rest194584%_
                                              _%deps194564%_)
                                             (let ((_%xdeps194607%_
                                                    (_%find-deps194555%_
                                                     (##structure-ref
                                                      _%hd194585%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps194564%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht194553%_
                                                      _%id194603%_))
                                                   (_%find-deps194555%_
                                                    _%rest194584%_
                                                    _%xdeps194607%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht194553%_
                                                        _%id194603%_
                                                        _%hd194585%_))
                                                     (_%find-deps194555%_
                                                      _%rest194584%_
                                                      (cons _%hd194585%_
                                                            _%xdeps194607%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd194585%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd194585%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps194555%_
                                                (cons (##direct-structure-ref
                                                       _%hd194585%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest194584%_)
                                                _%deps194564%_)
                                               (_%find-deps194555%_
                                                _%rest194584%_
                                                _%deps194564%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd194585%_
                                                  'gx#module-export::t))
                                               (_%find-deps194555%_
                                                (cons (##direct-structure-ref
                                                       _%hd194585%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest194584%_)
                                                _%deps194564%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd194585%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd194585%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps194555%_
                (cons (##direct-structure-ref
                       _%hd194585%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest194584%_)
                _%deps194564%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd194585%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps194614%_
                          (_%import-set-template194554%_ _%hd194585%_ '0)))
                     (_%find-deps194555%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest194584%_ _%xdeps194614%_))
                      _%deps194564%_))
                   (_%find-deps194555%_ _%rest194584%_ _%deps194564%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd194585%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest194565194573%_))
                           (let ((_%hd194570194621%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest194565194573%_)))
                                 (_%tl194571194623%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest194565194573%_))))
                             (let* ((_%hd194626%_ _%hd194570194621%_)
                                    (_%rest194628%_ _%tl194571194623%_))
                               (_%K194569194618%_
                                _%rest194628%_
                                _%hd194626%_)))
                           (_%else194567194581%_))))))
          (let ((__tmp195406
                 (filter gx#expander-context-id
                         (_%find-deps194555%_
                          (let ((_%$e194557%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx194551%_))))
                            (if _%$e194557%_
                                ((lambda (_%pre194560%_)
                                   (cons _%pre194560%_
                                         (##structure-ref
                                          _%ctx194551%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e194557%_)
                                (##structure-ref
                                 _%ctx194551%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp195406)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx194481%_)
        (let* ((_%context-id194483%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx194481%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx194481%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx194481%_)))
               (_%scm194485%_
                (let ((__tmp195407
                       (gxc#static-module-name _%context-id194483%_)))
                  (declare (not safe))
                  (##string-append __tmp195407 '".scm")))
               (_%dirs194487%_ (let () (declare (not safe)) (load-path)))
               (_%dirs194493%_
                (let ((_%user-libpath194489%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath194489%_
                      (let ((_%user-libpath194491%_
                             (path-expand '"lib" _%user-libpath194489%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath194491%_ _%dirs194487%_))
                            _%dirs194487%_
                            (cons _%user-libpath194491%_ _%dirs194487%_)))
                      _%dirs194487%_)))
               (_%dirs194503%_
                (let ((_%$e194495%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e194495%_
                      ((lambda (_%g194497194499%_)
                         (cons _%g194497194499%_ _%dirs194493%_))
                       _%$e194495%_)
                      _%dirs194493%_)))
               (_%dirs194509%_
                (let ((__tmp195408
                       (lambda (_%g194504194506%_)
                         (path-expand '"static" _%g194504194506%_))))
                  (declare (not safe))
                  (##map __tmp195408 _%dirs194503%_))))
          (let _%lp194512%_ ((_%rest194514%_ _%dirs194509%_))
            (let* ((_%rest194515194523%_ _%rest194514%_)
                   (_%else194517194531%_
                    (lambda ()
                      (let ((__tmp195409
                             (##structure-ref
                              _%ctx194481%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp195409
                         _%scm194485%_))))
                   (_%K194519194539%_
                    (lambda (_%rest194534%_ _%dir194535%_)
                      (let ((_%path194537%_
                             (path-expand _%scm194485%_ _%dir194535%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194537%_))
                            _%path194537%_
                            (_%lp194512%_ _%rest194534%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest194515194523%_))
                  (let ((_%hd194520194542%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194515194523%_)))
                        (_%tl194521194544%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194515194523%_))))
                    (let* ((_%dir194547%_ _%hd194520194542%_)
                           (_%rest194549%_ _%tl194521194544%_))
                      (_%K194519194539%_ _%rest194549%_ _%dir194547%_)))
                  (_%else194517194531%_)))))))
    (define gxc#file-empty?
      (lambda (_%path194479%_)
        (zero? (let ((__tmp195410 (file-info _%path194479%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp195410)))))
    (define gxc#compile-top-module
      (lambda (_%ctx194475%_)
        (let ((__tmp195414
               (lambda ()
                 (let ((__tmp195415
                        (##structure-ref
                         _%ctx194475%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp195415))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp195416
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx194475%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp195416))
                     '#!void)
                 (gxc#collect-bindings _%ctx194475%_)
                 (gxc#compile-runtime-code _%ctx194475%_)
                 (gxc#compile-meta-code _%ctx194475%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx194475%_)
                     '#!void)))
              (__tmp195413
               (let ((__obj195337
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj195337)
                 __obj195337))
              (__tmp195412 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195411
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
           __tmp195414
           gx#current-expander-context
           _%ctx194475%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp195413
           gxc#current-compile-runtime-sections
           __tmp195412
           gxc#current-compile-runtime-names
           __tmp195411))))
    (define gxc#collect-bindings
      (lambda (_%ctx194473%_)
        (let ((__tmp195417
               (##structure-ref _%ctx194473%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp195417))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx194421%_)
        (letrec ((_%compile1194423%_
                  (lambda (_%ctx194462%_)
                    (let* ((_%code194464%_
                            (##structure-ref
                             _%ctx194462%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm194468%_
                            (let ((_%idstr194466%_
                                   (let ((__tmp195418
                                          (##structure-ref
                                           _%ctx194462%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp195418))))
                              (declare (not safe))
                              (##string-append _%idstr194466%_ '"~0")))
                           (_%rtc?194470%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code194464%_))))
                      (if _%rtc?194470%_
                          (let ((__tmp195419
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp195419
                             _%ctx194462%_
                             _%rtm194468%_))
                          '#!void)
                      (_%generate-runtime-code194425%_
                       _%ctx194462%_
                       _%code194464%_
                       (if _%rtc?194470%_ _%rtm194468%_ '#f)))))
                 (_%context-timestamp194424%_
                  (lambda (_%ctx194460%_)
                    (let ((__tmp195420
                           (let ((__tmp195421
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx194460%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp195421 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp195420))))
                 (_%generate-runtime-code194425%_
                  (lambda (_%ctx194432%_ _%code194433%_ _%rtm194434%_)
                    (let* ((_%runtime-code?194436%_ (if _%rtm194434%_ '#t '#f))
                           (_%lifts194438%_ (box '()))
                           (_%runtime-code194441%_
                            (if _%runtime-code?194436%_
                                (let ((__tmp195424
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code194433%_))))
                                      (__tmp195423
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp195422
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp195424
                                   gx#current-expander-context
                                   _%ctx194432%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts194438%_
                                   gxc#current-compile-marks
                                   __tmp195423
                                   gxc#current-compile-identifiers
                                   __tmp195422))
                                '#f))
                           (_%runtime-code194443%_
                            (if _%runtime-code?194436%_
                                (if (null? (unbox _%lifts194438%_))
                                    _%runtime-code194441%_
                                    (cons 'begin
                                          (let ((__tmp195426
                                                 (cons _%runtime-code194441%_
                                                       '()))
                                                (__tmp195425
                                                 (reverse (unbox _%lifts194438%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195426
                                             __tmp195425))))
                                '#f))
                           (_%runtime-code194445%_
                            (if _%runtime-code?194436%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp194424%_
                                                         _%ctx194432%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code194443%_ '())))
                                '#f))
                           (_%loader-code194448%_
                            (let ((__tmp195427
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code194433%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195427
                               gx#current-expander-context
                               _%ctx194432%_)))
                           (_%loader-code194450%_
                            (cons 'begin
                                  (cons _%loader-code194448%_
                                        (cons (if _%runtime-code?194436%_
                                                  (cons 'load-module
                                                        (cons _%rtm194434%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0194452%_
                            (gxc#compile-output-file _%ctx194432%_ '0 '".scm"))
                           (_%scmrt194454%_
                            (gxc#compile-output-file
                             _%ctx194432%_
                             '#f
                             '".scm"))
                           (_%scms194456%_
                            (gxc#compile-static-output-file _%ctx194432%_)))
                      (if _%runtime-code?194436%_
                          (gxc#compile-scm-file__0
                           _%scm0194452%_
                           _%runtime-code194445%_)
                          '#!void)
                      (let ((__tmp195428
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt194454%_
                                _%loader-code194450%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp195428
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms194456%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms194456%_))
                          '#!void)
                      (if _%runtime-code?194436%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0194452%_ _%scms194456%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms194456%_ void)))))))
          (let* ((_%all-modules194427%_
                  (cons _%ctx194421%_ (gxc#lift-nested-modules _%ctx194421%_)))
                 (__tmp195429
                  (lambda (_%ctx194429%_)
                    (let ((__tmp195430
                           (lambda () (_%compile1194423%_ _%ctx194429%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195430
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp195429 _%all-modules194427%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx194321%_)
        (letrec ((_%compile-ssi194323%_
                  (lambda (_%code194389%_)
                    (let* ((_%path194391%_
                            (gxc#compile-output-file
                             _%ctx194321%_
                             '#f
                             '".ssi"))
                           (_%prelude194403%_
                            (let* ((_%super194393%_
                                    (##structure-ref
                                     _%ctx194321%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e194395%_
                                    (##structure-ref
                                     _%super194393%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e194395%_
                                  ((lambda (_%g194397194399%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g194397194399%_)))
                                   _%$e194395%_)
                                  ':<root>)))
                           (_%ns194405%_
                            (##structure-ref
                             _%ctx194321%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr194407%_
                            (symbol->string
                             (##structure-ref
                              _%ctx194321%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg194415%_
                            (let ((_%$e194409%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr194407%_ '#\/))))
                              (if _%$e194409%_
                                  ((lambda (_%x194412%_)
                                     (let ((__tmp195431
                                            (substring
                                             _%idstr194407%_
                                             '0
                                             _%x194412%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp195431)))
                                   _%$e194409%_)
                                  '#f)))
                           (_%rt194417%_
                            (let ((__tmp195432
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp195432 _%ctx194321%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path194391%_))
                      (gxc#with-output-to-scheme-file
                       _%path194391%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude194403%_))
                         (if _%pkg194415%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg194415%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns194405%_))
                         (newline)
                         (pretty-print _%code194389%_)
                         (if _%rt194417%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt194417%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi194324%_
                  (lambda (_%part194329%_)
                    (let* ((_%part194330194343%_ _%part194329%_)
                           (_%E194332194347%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part194330194343%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K194333194358%_
                            (lambda (_%code194350%_
                                     _%n194351%_
                                     _%phi194352%_
                                     _%phi-ctx194353%_)
                              (let ((_%code194356%_
                                     (let ((__tmp195433
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code194350%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp195433
                                        gx#current-expander-context
                                        _%phi-ctx194353%_
                                        gx#current-expander-phi
                                        _%phi194352%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx194321%_
                                  _%n194351%_
                                  '".scm")
                                 _%code194356%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part194330194343%_))
                          (let ((_%hd194334194361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part194330194343%_)))
                                (_%tl194335194363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part194330194343%_))))
                            (let ((_%phi-ctx194366%_ _%hd194334194361%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194335194363%_))
                                  (let ((_%hd194336194368%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194335194363%_)))
                                        (_%tl194337194370%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194335194363%_))))
                                    (let ((_%phi194373%_ _%hd194336194368%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl194337194370%_))
                                          (let ((_%hd194338194375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl194337194370%_)))
                                                (_%tl194339194377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl194337194370%_))))
                                            (let ((_%n194380%_
                                                   _%hd194338194375%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl194339194377%_))
                                                  (let ((_%hd194340194382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl194339194377%_)))
                                                        (_%tl194341194384%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl194339194377%_))))
                                                    (let ((_%code194387%_
                                                           _%hd194340194382%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl194341194384%_))
                                                          (_%K194333194358%_
                                                           _%code194387%_
                                                           _%n194380%_
                                                           _%phi194373%_
                                                           _%phi-ctx194366%_)
                                                          (_%E194332194347%_))))
                                                  (_%E194332194347%_))))
                                          (_%E194332194347%_))))
                                  (_%E194332194347%_))))
                          (_%E194332194347%_))))))
          (let ((_g195434_ (gxc#generate-meta-code _%ctx194321%_)))
            (begin
              (let ((_g195435_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g195434_)
                           (##vector-length _g195434_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g195435_ 2)))
                    (error "Context expects 2 values" _g195435_)))
              (let ((_%ssi-code194326%_
                     (let () (declare (not safe)) (##vector-ref _g195434_ 0)))
                    (_%phi-code194327%_
                     (let () (declare (not safe)) (##vector-ref _g195434_ 1))))
                (begin
                  (_%compile-ssi194323%_ _%ssi-code194326%_)
                  (for-each _%compile-phi194324%_ _%phi-code194327%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx194303%_)
        (let* ((_%path194305%_
                (gxc#compile-output-file _%ctx194303%_ '#f '".ssxi.ss"))
               (_%code194307%_
                (let ((__tmp195436
                       (##structure-ref
                        _%ctx194303%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp195436)))
               (_%idstr194309%_
                (symbol->string
                 (##structure-ref
                  _%ctx194303%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg194317%_
                (let ((_%$e194311%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr194309%_ '#\/))))
                  (if _%$e194311%_
                      ((lambda (_%x194314%_)
                         (let ((__tmp195437
                                (substring _%idstr194309%_ '0 _%x194314%_)))
                           (declare (not safe))
                           (##string->symbol __tmp195437)))
                       _%$e194311%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path194305%_))
          (gxc#with-output-to-scheme-file
           _%path194305%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg194317%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg194317%_))
                 '#!void)
             (newline)
             (pretty-print _%code194307%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx194296%_)
        (let* ((_%state194298%_
                (let ((__obj195338
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj195338 _%ctx194296%_)
                  __obj195338))
               (_%ssi-code194300%_
                (let ((__tmp195438
                       (##structure-ref
                        _%ctx194296%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state194298%_
                   __tmp195438))))
          (values _%ssi-code194300%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state194298%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx194289%_)
        (let ((_%lifts194291%_ (box '())))
          (let ((__tmp195441
                 (lambda ()
                   (let ((_%code194294%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx194289%_))))
                     (if (null? (unbox _%lifts194291%_))
                         _%code194294%_
                         (cons 'begin
                               (let ((__tmp195443 (cons _%code194294%_ '()))
                                     (__tmp195442
                                      (reverse (unbox _%lifts194291%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195443 __tmp195442)))))))
                (__tmp195440
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp195439
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195441
             gxc#current-compile-lift
             _%lifts194291%_
             gxc#current-compile-marks
             __tmp195440
             gxc#current-compile-identifiers
             __tmp195439)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx194285%_)
        (let ((_%modules194287%_ (box '())))
          (let ((__tmp195444
                 (##structure-ref _%ctx194285%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules194287%_ __tmp195444))
          (reverse (unbox _%modules194287%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path194265%_ _%code194266%_ _%phi?194267%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path194265%_))
        (gxc#with-output-to-scheme-file
         _%path194265%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp195445
                                           (if _%phi?194267%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp195445)))))))
           (pretty-print _%code194266%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it194271%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path194265%_ _%phi?194267%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp195446
                         (cons 'compile-file (cons _%path194265%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it194271%_ __tmp195446))
                  (_%compile-it194271%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path194276%_ _%code194277%_)
        (let ((_%phi?194279%_ '#f))
          (gxc#compile-scm-file__%
           _%path194276%_
           _%code194277%_
           _%phi?194279%_))))
    (define gxc#compile-scm-file
      (lambda _g195448_
        (let ((_g195447_ (let () (declare (not safe)) (##length _g195448_))))
          (cond ((let () (declare (not safe)) (##fx= _g195447_ 2))
                 (apply gxc#compile-scm-file__0 _g195448_))
                ((let () (declare (not safe)) (##fx= _g195447_ 3))
                 (apply gxc#compile-scm-file__% _g195448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g195448_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?194166%_)
        (let _%lp194168%_ ((_%rest194170%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194171%_ '()))
          (let* ((_%rest194172194192%_ _%rest194170%_)
                 (_%else194176194200%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts194171%_)))
                        (reverse _%opts194171%_)))))
            (let ((_%K194186194243%_
                   (lambda (_%rest194241%_)
                     (_%lp194168%_ _%rest194241%_ _%opts194171%_)))
                  (_%K194181194225%_
                   (lambda (_%rest194223%_)
                     (_%lp194168%_ _%rest194223%_ _%opts194171%_)))
                  (_%K194178194207%_
                   (lambda (_%rest194204%_ _%opt194205%_)
                     (_%lp194168%_
                      _%rest194204%_
                      (cons _%opt194205%_ _%opts194171%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194172194192%_))
                  (let ((_%tl194188194248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194172194192%_)))
                        (_%hd194187194246%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194172194192%_))))
                    (if (equal? _%hd194187194246%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194188194248%_))
                            (let* ((_%tl194190194251%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194188194248%_)))
                                   (_%rest194254%_ _%tl194190194251%_))
                              (_%K194186194243%_ _%rest194254%_))
                            (let ((_%opt194215%_ _%hd194187194246%_)
                                  (_%rest194217%_ _%tl194188194248%_))
                              (_%K194178194207%_
                               _%rest194217%_
                               _%opt194215%_)))
                        (if (equal? _%hd194187194246%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194188194248%_))
                                (let* ((_%tl194185194233%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194188194248%_)))
                                       (_%rest194236%_ _%tl194185194233%_))
                                  (_%K194181194225%_ _%rest194236%_))
                                (let ((_%opt194215%_ _%hd194187194246%_)
                                      (_%rest194217%_ _%tl194188194248%_))
                                  (_%K194178194207%_
                                   _%rest194217%_
                                   _%opt194215%_)))
                            (let ((_%opt194215%_ _%hd194187194246%_)
                                  (_%rest194217%_ _%tl194188194248%_))
                              (_%K194178194207%_
                               _%rest194217%_
                               _%opt194215%_)))))
                  (_%else194176194200%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?194260%_ '#f)) (gxc#gsc-link-options__% _%phi?194260%_))))
    (define gxc#gsc-link-options
      (lambda _g195450_
        (let ((_g195449_ (let () (declare (not safe)) (##length _g195450_))))
          (cond ((let () (declare (not safe)) (##fx= _g195449_ 0))
                 (apply gxc#gsc-link-options__0 _g195450_))
                ((let () (declare (not safe)) (##fx= _g195449_ 1))
                 (apply gxc#gsc-link-options__% _g195450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g195450_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords194015%_ _%static?194011194016%_ _%phi?194018%_)
        (let ((_%static?194020%_
               (if (eq? _%static?194011194016%_ absent-value)
                   '#f
                   _%static?194011194016%_)))
          (if _%phi?194018%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp194022%_ ((_%rest194024%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts194025%_ '()))
                (let* ((_%rest194026194052%_ _%rest194024%_)
                       (_%else194031194060%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts194025%_)))
                              (reverse! _%opts194025%_)))))
                  (let ((_%K194046194123%_
                         (lambda (_%rest194120%_ _%opt194121%_)
                           (if _%static?194020%_
                               (_%lp194022%_
                                _%rest194120%_
                                (cons _%opt194121%_
                                      (cons '"-cc-options" _%opts194025%_)))
                               (_%lp194022%_ _%rest194120%_ _%opts194025%_))))
                        (_%K194041194100%_
                         (lambda (_%rest194097%_ _%opt194098%_)
                           (_%lp194022%_
                            _%rest194097%_
                            (cons _%opt194098%_
                                  (cons '"-cc-options" _%opts194025%_)))))
                        (_%K194036194080%_
                         (lambda (_%rest194078%_)
                           (_%lp194022%_ _%rest194078%_ _%opts194025%_)))
                        (_%K194033194066%_
                         (lambda (_%rest194064%_)
                           (_%lp194022%_ _%rest194064%_ _%opts194025%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest194026194052%_))
                        (let ((_%tl194048194128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest194026194052%_)))
                              (_%hd194047194126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest194026194052%_))))
                          (if (equal? _%hd194047194126%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194048194128%_))
                                  (let ((_%tl194050194133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194048194128%_)))
                                        (_%hd194049194131%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194048194128%_))))
                                    (if (equal? _%hd194049194131%_ '"-Bstatic")
                                        (let ((_%opt194136%_
                                               _%hd194049194131%_)
                                              (_%rest194138%_
                                               _%tl194050194133%_))
                                          (_%K194046194123%_
                                           _%rest194138%_
                                           _%opt194136%_))
                                        (let ((_%opt194113%_
                                               _%hd194049194131%_)
                                              (_%rest194115%_
                                               _%tl194050194133%_))
                                          (_%K194041194100%_
                                           _%rest194115%_
                                           _%opt194113%_))))
                                  (let ((_%rest194072%_ _%tl194048194128%_))
                                    (_%K194033194066%_ _%rest194072%_)))
                              (if (equal? _%hd194047194126%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl194048194128%_))
                                      (let* ((_%tl194040194088%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl194048194128%_)))
                                             (_%rest194091%_
                                              _%tl194040194088%_))
                                        (_%K194036194080%_ _%rest194091%_))
                                      (let ((_%rest194072%_
                                             _%tl194048194128%_))
                                        (_%K194033194066%_ _%rest194072%_)))
                                  (let ((_%rest194072%_ _%tl194048194128%_))
                                    (_%K194033194066%_ _%rest194072%_)))))
                        (_%else194031194060%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords194143%_ _%static?194011194144%_)
        (let ((_%phi?194146%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords194143%_
           _%static?194011194144%_
           _%phi?194146%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g195452_
        (let ((_g195451_ (let () (declare (not safe)) (##length _g195452_))))
          (cond ((let () (declare (not safe)) (##fx= _g195451_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g195452_))
                ((let () (declare (not safe)) (##fx= _g195451_ 3))
                 (apply gxc#gsc-cc-options__%__% _g195452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g195452_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords194155%_ . _%args194156%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords194155%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194155%_
                  'static:
                  absent-value))
               _%args194156%_)))
    (define gxc#gsc-cc-options
      (lambda _%args194012194162%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args194012194162%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords193860%_ _%static?193856193861%_ _%phi?193863%_)
        (let ((_%static?193865%_
               (if (eq? _%static?193856193861%_ absent-value)
                   '#f
                   _%static?193856193861%_)))
          (if _%phi?193863%_
              '()
              (let _%lp193867%_ ((_%rest193869%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts193870%_ '()))
                (let* ((_%rest193871193897%_ _%rest193869%_)
                       (_%else193876193905%_
                        (lambda () (reverse! _%opts193870%_))))
                  (let ((_%K193891193968%_
                         (lambda (_%rest193965%_ _%opt193966%_)
                           (if _%static?193865%_
                               (_%lp193867%_
                                _%rest193965%_
                                (cons _%opt193966%_
                                      (cons '"-ld-options" _%opts193870%_)))
                               (_%lp193867%_ _%rest193965%_ _%opts193870%_))))
                        (_%K193886193945%_
                         (lambda (_%rest193942%_ _%opt193943%_)
                           (_%lp193867%_
                            _%rest193942%_
                            (cons _%opt193943%_
                                  (cons '"-ld-options" _%opts193870%_)))))
                        (_%K193881193925%_
                         (lambda (_%rest193923%_)
                           (_%lp193867%_ _%rest193923%_ _%opts193870%_)))
                        (_%K193878193911%_
                         (lambda (_%rest193909%_)
                           (_%lp193867%_ _%rest193909%_ _%opts193870%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest193871193897%_))
                        (let ((_%tl193893193973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest193871193897%_)))
                              (_%hd193892193971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest193871193897%_))))
                          (if (equal? _%hd193892193971%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193893193973%_))
                                  (let ((_%tl193895193978%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193893193973%_)))
                                        (_%hd193894193976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193893193973%_))))
                                    (if (equal? _%hd193894193976%_ '"-static")
                                        (let ((_%opt193981%_
                                               _%hd193894193976%_)
                                              (_%rest193983%_
                                               _%tl193895193978%_))
                                          (_%K193891193968%_
                                           _%rest193983%_
                                           _%opt193981%_))
                                        (let ((_%opt193958%_
                                               _%hd193894193976%_)
                                              (_%rest193960%_
                                               _%tl193895193978%_))
                                          (_%K193886193945%_
                                           _%rest193960%_
                                           _%opt193958%_))))
                                  (let ((_%rest193917%_ _%tl193893193973%_))
                                    (_%K193878193911%_ _%rest193917%_)))
                              (if (equal? _%hd193892193971%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl193893193973%_))
                                      (let* ((_%tl193885193933%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl193893193973%_)))
                                             (_%rest193936%_
                                              _%tl193885193933%_))
                                        (_%K193881193925%_ _%rest193936%_))
                                      (let ((_%rest193917%_
                                             _%tl193893193973%_))
                                        (_%K193878193911%_ _%rest193917%_)))
                                  (let ((_%rest193917%_ _%tl193893193973%_))
                                    (_%K193878193911%_ _%rest193917%_)))))
                        (_%else193876193905%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords193988%_ _%static?193856193989%_)
        (let ((_%phi?193991%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords193988%_
           _%static?193856193989%_
           _%phi?193991%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g195454_
        (let ((_g195453_ (let () (declare (not safe)) (##length _g195454_))))
          (cond ((let () (declare (not safe)) (##fx= _g195453_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g195454_))
                ((let () (declare (not safe)) (##fx= _g195453_ 3))
                 (apply gxc#gsc-ld-options__%__% _g195454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g195454_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords194000%_ . _%args194001%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords194000%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194000%_
                  'static:
                  absent-value))
               _%args194001%_)))
    (define gxc#gsc-ld-options
      (lambda _%args193857194007%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args193857194007%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193851%_)
        (let ((_%user-staticdir193853%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193851%_
                       '" -I "
                       _%user-staticdir193853%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193763%_ ((_%rest193765%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193766%_ '()))
          (let* ((_%rest193767193787%_ _%rest193765%_)
                 (_%else193771193795%_ (lambda () _%opts193766%_)))
            (let ((_%K193781193838%_
                   (lambda (_%rest193836%_)
                     (_%lp193763%_ _%rest193836%_ _%opts193766%_)))
                  (_%K193776193816%_
                   (lambda (_%rest193813%_ _%opt193814%_)
                     (_%lp193763%_
                      _%rest193813%_
                      (let ((__tmp195455
                             (let ((__tmp195456
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt193814%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp195456))))
                        (declare (not safe))
                        (##append _%opts193766%_ __tmp195455)))))
                  (_%K193773193801%_
                   (lambda (_%rest193799%_)
                     (_%lp193763%_ _%rest193799%_ _%opts193766%_))))
              (if (let () (declare (not safe)) (##pair? _%rest193767193787%_))
                  (let ((_%tl193783193843%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193767193787%_)))
                        (_%hd193782193841%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193767193787%_))))
                    (if (equal? _%hd193782193841%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193783193843%_))
                            (let* ((_%tl193785193846%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193783193843%_)))
                                   (_%rest193849%_ _%tl193785193846%_))
                              (_%K193781193838%_ _%rest193849%_))
                            (let ((_%rest193807%_ _%tl193783193843%_))
                              (_%K193773193801%_ _%rest193807%_)))
                        (if (equal? _%hd193782193841%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193783193843%_))
                                (let ((_%tl193780193826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193783193843%_)))
                                      (_%hd193779193824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193783193843%_))))
                                  (let ((_%opt193829%_ _%hd193779193824%_)
                                        (_%rest193831%_ _%tl193780193826%_))
                                    (_%K193776193816%_
                                     _%rest193831%_
                                     _%opt193829%_)))
                                (let ((_%rest193807%_ _%tl193783193843%_))
                                  (_%K193773193801%_ _%rest193807%_)))
                            (let ((_%rest193807%_ _%tl193783193843%_))
                              (_%K193773193801%_ _%rest193807%_)))))
                  (_%else193771193795%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str193760%_)
        (not (let () (declare (not safe)) (string-empty? _%str193760%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path193753%_ _%phi?193754%_)
        (let ((_%gsc-link-opts193756%_
               (gxc#gsc-link-options__% _%phi?193754%_))
              (_%gsc-cc-opts193757%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?193754%_))
              (_%gsc-ld-opts193758%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?193754%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp195457
                  (let ((__tmp195458
                         (let ((__tmp195459 (cons _%path193753%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195459
                            _%gsc-link-opts193756%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195458 _%gsc-ld-opts193758%_))))
             (declare (not safe))
             (__foldr1 cons __tmp195457 _%gsc-cc-opts193757%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193719%_ _%n193720%_ _%ext193721%_)
        (letrec ((_%module-relative-path193723%_
                  (lambda (_%ctx193751%_)
                    (path-strip-directory
                     (let ((__tmp195460
                            (##structure-ref
                             _%ctx193751%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp195460)))))
                 (_%module-source-directory193724%_
                  (lambda (_%ctx193747%_)
                    (path-directory
                     (let ((_%mpath193749%_
                            (##structure-ref
                             _%ctx193747%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath193749%_)
                           _%mpath193749%_
                           (last _%mpath193749%_))))))
                 (_%section-string193725%_
                  (lambda (_%n193741%_)
                    (if (number? _%n193741%_)
                        (number->string _%n193741%_)
                        (if (symbol? _%n193741%_)
                            (symbol->string _%n193741%_)
                            (if (string? _%n193741%_)
                                _%n193741%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193741%_)))))))
                 (_%file-name193726%_
                  (lambda (_%path193739%_)
                    (if _%n193720%_
                        (string-append
                         _%path193739%_
                         '"~"
                         (_%section-string193725%_ _%n193720%_)
                         _%ext193721%_)
                        (string-append _%path193739%_ _%ext193721%_))))
                 (_%file-path193727%_
                  (lambda ()
                    (let ((_%$e193733%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193733%_
                          ((lambda (_%outdir193736%_)
                             (path-expand
                              (_%file-name193726%_
                               (let ((__tmp195461
                                      (##structure-ref
                                       _%ctx193719%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp195461)))
                              _%outdir193736%_))
                           _%$e193733%_)
                          (path-expand
                           (_%file-name193726%_
                            (_%module-relative-path193723%_ _%ctx193719%_))
                           (_%module-source-directory193724%_
                            _%ctx193719%_)))))))
          (let ((_%path193729%_ (_%file-path193727%_)))
            (let ((__tmp195462
                   (lambda ()
                     (let ((__tmp195463 (path-directory _%path193729%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195463)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195462))
            _%path193729%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193700%_)
        (letrec ((_%file-name193702%_
                  (lambda (_%id193717%_)
                    (let ((__tmp195464 (gxc#static-module-name _%id193717%_)))
                      (declare (not safe))
                      (##string-append __tmp195464 '".scm"))))
                 (_%file-path193703%_
                  (lambda ()
                    (let* ((_%file193709%_
                            (_%file-name193702%_
                             (##structure-ref
                              _%ctx193700%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e193711%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193711%_
                          ((lambda (_%outdir193714%_)
                             (path-expand
                              _%file193709%_
                              (path-expand '"static" _%outdir193714%_)))
                           _%$e193711%_)
                          (path-expand _%file193709%_ '"static"))))))
          (let ((_%path193705%_ (_%file-path193703%_)))
            (let ((__tmp195465
                   (lambda ()
                     (let ((__tmp195466 (path-directory _%path193705%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195466)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195465))
            _%path193705%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193693%_ _%opts193694%_)
        (let ((_%$e193696%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193694%_))))
          (if _%$e193696%_
              (values _%$e193696%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx193693%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr193683%_)
        (if (string? _%idstr193683%_)
            (let* ((_%str193686%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr193683%_)))
                   (_%strs193688%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str193686%_ '#\/))))
              (declare (not safe))
              (string-join _%strs193688%_ '"__"))
            (if (symbol? _%idstr193683%_)
                (gxc#static-module-name (symbol->string _%idstr193683%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193683%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp195467
               (let ((__tmp195468 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp195468 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp195467))))
    (define gxc#invoke__%
      (lambda (_%@@keywords193647%_
               _%stdout-redirection193643193648%_
               _%stderr-redirection193644193650%_
               _%program193652%_
               _%args193653%_)
        (let* ((_%stdout-redirection193655%_
                (if (eq? _%stdout-redirection193643193648%_ absent-value)
                    '#f
                    _%stdout-redirection193643193648%_))
               (_%stderr-redirection193657%_
                (if (eq? _%stderr-redirection193644193650%_ absent-value)
                    '#f
                    _%stderr-redirection193644193650%_)))
          (let ((__tmp195469 (cons _%program193652%_ _%args193653%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp195469))
          (let* ((_%proc193659%_
                  (open-process
                   (cons 'path:
                         (cons _%program193652%_
                               (cons 'arguments:
                                     (cons _%args193653%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193655%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193664%_
                  (if (or _%stdout-redirection193655%_
                          _%stderr-redirection193657%_)
                      (read-line _%proc193659%_ '#f)
                      '#f))
                 (_%status193667%_ (process-status _%proc193659%_)))
            (let () (declare (not safe)) (##close-port _%proc193659%_))
            (if (zero? _%status193667%_)
                '#!void
                (begin
                  (display _%output193664%_)
                  (let ((__tmp195470 (cons _%program193652%_ _%args193653%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp195470
                     _%status193667%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193672%_ . _%args193673%_)
        (apply gxc#invoke__%
               _%@@keywords193672%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193672%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193672%_
                  'stderr-redirection:
                  absent-value))
               _%args193673%_)))
    (define gxc#invoke
      (lambda _%args193645193679%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193645193679%_)))))
