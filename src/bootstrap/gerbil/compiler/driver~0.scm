(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712602662)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp195130 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp195130))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp195131 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp195131))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195011%_ _%fun195012%_)
        (with-output-to-file
         (cons 'path: (cons _%path195011%_ gxc#scheme-file-settings))
         _%fun195012%_)))
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
      (lambda (_%gerbil-libdir195006%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195006%_)))
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
      (lambda (_%dir195004%_) (delete-file-or-directory _%dir195004%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath194977%_ _%opts194978%_)
        (if (string? _%srcpath194977%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194977%_)))
        (let ((_%outdir194980%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194978%_)))
              (_%invoke-gsc?194981%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194978%_)))
              (_%gsc-options194982%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194978%_)))
              (_%keep-scm?194983%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194978%_)))
              (_%verbosity194984%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194978%_)))
              (_%optimize194985%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts194978%_)))
              (_%debug194986%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194978%_)))
              (_%gen-ssxi194987%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts194978%_)))
              (_%parallel?194988%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts194978%_))))
          (if _%outdir194980%_
              (let ((__tmp195132
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194980%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195132))
              '#!void)
          (if _%optimize194985%_
              (let ((__tmp195133
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195133))
              '#!void)
          (let ((__tmp195136
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath194977%_))
                   (gxc#compile-top-module
                    (let ((__tmp195137
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath194977%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195137)))))
                (__tmp195135 (gxc#compile-timestamp))
                (__tmp195134
                 (cons 'compile-module (cons _%srcpath194977%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195136
             gxc#current-compile-output-dir
             _%outdir194980%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194981%_
             gxc#current-compile-gsc-options
             _%gsc-options194982%_
             gxc#current-compile-keep-scm
             _%keep-scm?194983%_
             gxc#current-compile-verbose
             _%verbosity194984%_
             gxc#current-compile-optimize
             _%optimize194985%_
             gxc#current-compile-debug
             _%debug194986%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi194987%_
             gxc#current-compile-timestamp
             __tmp195135
             gxc#current-compile-context
             __tmp195134
             gxc#current-compile-parallel
             _%parallel?194988%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath194997%_)
        (let ((_%opts194999%_ '()))
          (gxc#compile-module__% _%srcpath194997%_ _%opts194999%_))))
    (define gxc#compile-module
      (lambda _g195139_
        (let ((_g195138_ (let () (declare (not safe)) (##length _g195139_))))
          (cond ((let () (declare (not safe)) (##fx= _g195138_ 1))
                 (apply gxc#compile-module__0 _g195139_))
                ((let () (declare (not safe)) (##fx= _g195138_ 2))
                 (apply gxc#compile-module__% _g195139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g195139_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath194952%_ _%opts194953%_)
        (if (string? _%srcpath194952%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194952%_)))
        (let ((_%outdir194955%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194953%_)))
              (_%invoke-gsc?194956%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194953%_)))
              (_%gsc-options194957%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194953%_)))
              (_%keep-scm?194958%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194953%_)))
              (_%verbosity194959%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194953%_)))
              (_%debug194960%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194953%_)))
              (_%parallel?194961%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts194953%_))))
          (if _%outdir194955%_
              (let ((__tmp195140
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194955%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195140))
              '#!void)
          (let ((__tmp195143
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath194952%_))
                   (gxc#compile-executable-module
                    (let ((__tmp195144
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath194952%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195144))
                    _%opts194953%_)))
                (__tmp195142 (gxc#compile-timestamp))
                (__tmp195141 (cons 'compile-exe (cons _%srcpath194952%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195143
             gxc#current-compile-output-dir
             _%outdir194955%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194956%_
             gxc#current-compile-gsc-options
             _%gsc-options194957%_
             gxc#current-compile-keep-scm
             _%keep-scm?194958%_
             gxc#current-compile-verbose
             _%verbosity194959%_
             gxc#current-compile-debug
             _%debug194960%_
             gxc#current-compile-timestamp
             __tmp195142
             gxc#current-compile-context
             __tmp195141
             gxc#current-compile-parallel
             _%parallel?194961%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath194969%_)
        (let ((_%opts194971%_ '()))
          (gxc#compile-exe__% _%srcpath194969%_ _%opts194971%_))))
    (define gxc#compile-exe
      (lambda _g195146_
        (let ((_g195145_ (let () (declare (not safe)) (##length _g195146_))))
          (cond ((let () (declare (not safe)) (##fx= _g195145_ 1))
                 (apply gxc#compile-exe__0 _g195146_))
                ((let () (declare (not safe)) (##fx= _g195145_ 2))
                 (apply gxc#compile-exe__% _g195146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g195146_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx194948%_ _%opts194949%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts194949%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx194948%_
             _%opts194949%_)
            (gxc#compile-executable-module/separate
             _%ctx194948%_
             _%opts194949%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194743%_ _%opts194744%_)
        (letrec ((_%generate-stub194746%_
                  (lambda (_%builtin-modules194944%_)
                    (let ((_%mod-main194946%_
                           (gxc#find-runtime-symbol _%ctx194743%_ 'main)))
                      (let ((__tmp195147
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules194944%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp195147))
                      (let ((__tmp195148
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main194946%_
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
                        (##write __tmp195148))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194747%_
                  (lambda (_%gerbil-libdir194942%_)
                    (let ((__tmp195149
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir194942%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp195149 read))))
                 (_%replace-extension194748%_
                  (lambda (_%path194939%_ _%ext194940%_)
                    (string-append
                     (path-strip-extension _%path194939%_)
                     _%ext194940%_)))
                 (_%userlib-module?194749%_
                  (lambda (_%ctx194937%_)
                    (if (not (_%exclude-module?194751%_ _%ctx194937%_))
                        (not (_%libgerbil-module?194750%_ _%ctx194937%_))
                        '#f)))
                 (_%libgerbil-module?194750%_
                  (lambda (_%ctx194930%_)
                    (let ((_%id-str194932%_
                           (symbol->string
                            (##structure-ref
                             _%ctx194930%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?194751%_ _%id-str194932%_))
                          (let ((_%$e194934%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str194932%_))))
                            (if _%$e194934%_
                                _%$e194934%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str194932%_))))
                          '#f))))
                 (_%exclude-module?194751%_
                  (lambda (_%ctx-or-str194926%_)
                    (let ((_%str194928%_
                           (if (string? _%ctx-or-str194926%_)
                               _%ctx-or-str194926%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str194926%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str194928%_))))
                 (_%not-file-empty?194752%_
                  (lambda (_%path194924%_)
                    (not (gxc#file-empty? _%path194924%_))))
                 (_%fold-libgerbil-runtime-scm194753%_
                  (lambda (_%gerbil-staticdir194917%_ _%libgerbil-scm194918%_)
                    (let ((_%gerbil-runtime-scm194922%_
                           (let ((__tmp195150
                                  (lambda (_%rtm194920%_)
                                    (path-expand
                                     (let ((__tmp195151
                                            (let ((__tmp195152
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm194920%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp195152
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp195151 '".scm"))
                                     _%gerbil-staticdir194917%_))))
                             (declare (not safe))
                             (##map __tmp195150 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates194754%_
                       (append _%gerbil-runtime-scm194922%_
                               _%libgerbil-scm194918%_)))))
                 (_%remove-duplicates194754%_
                  (lambda (_%strlst194877%_)
                    (let _%loop194879%_ ((_%rest194881%_ _%strlst194877%_)
                                         (_%result194882%_ '()))
                      (let* ((_%rest194883194891%_ _%rest194881%_)
                             (_%else194885194899%_
                              (lambda () (reverse! _%result194882%_)))
                             (_%K194887194905%_
                              (lambda (_%rest194902%_ _%path194903%_)
                                (if (member _%path194903%_ _%result194882%_)
                                    (_%loop194879%_
                                     _%rest194902%_
                                     _%result194882%_)
                                    (_%loop194879%_
                                     _%rest194902%_
                                     (cons _%path194903%_
                                           _%result194882%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest194883194891%_))
                            (let ((_%hd194888194908%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest194883194891%_)))
                                  (_%tl194889194910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest194883194891%_))))
                              (let* ((_%path194913%_ _%hd194888194908%_)
                                     (_%rest194915%_ _%tl194889194910%_))
                                (_%K194887194905%_
                                 _%rest194915%_
                                 _%path194913%_)))
                            (_%else194885194899%_))))))
                 (_%compile-stub194755%_
                  (lambda (_%output-scm194762%_ _%output-bin194763%_)
                    (let* ((_%gerbil-home194765%_
                            (let ((__tmp195153
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195153)))
                           (_%gerbil-libdir194767%_
                            (path-expand '"lib" _%gerbil-home194765%_))
                           (_%gerbil-staticdir194769%_
                            (path-expand '"static" _%gerbil-libdir194767%_))
                           (_%deps194771%_
                            (gxc#find-runtime-module-deps _%ctx194743%_))
                           (_%libgerbil-deps194773%_
                            (filter _%libgerbil-module?194750%_
                                    _%deps194771%_))
                           (_%libgerbil-scm194775%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps194773%_)))
                           (_%libgerbil-scm194777%_
                            (_%fold-libgerbil-runtime-scm194753%_
                             _%gerbil-staticdir194769%_
                             _%libgerbil-scm194775%_))
                           (_%libgerbil-c194783%_
                            (map (lambda (_%g194778194780%_)
                                   (_%replace-extension194748%_
                                    _%g194778194780%_
                                    '".c"))
                                 _%libgerbil-scm194777%_))
                           (_%libgerbil-o194789%_
                            (map (lambda (_%g194784194786%_)
                                   (_%replace-extension194748%_
                                    _%g194784194786%_
                                    '".o"))
                                 _%libgerbil-scm194777%_))
                           (_%src-deps194791%_
                            (filter _%userlib-module?194749%_ _%deps194771%_))
                           (_%src-deps-scm194793%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps194791%_)))
                           (_%src-deps-scm194795%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194752%_
                               _%src-deps-scm194793%_)))
                           (_%src-deps-scm194797%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194795%_)))
                           (_%src-deps-c194803%_
                            (let ((__tmp195154
                                   (lambda (_%g194798194800%_)
                                     (_%replace-extension194748%_
                                      _%g194798194800%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp195154 _%src-deps-scm194797%_)))
                           (_%src-deps-o194809%_
                            (let ((__tmp195155
                                   (lambda (_%g194804194806%_)
                                     (_%replace-extension194748%_
                                      _%g194804194806%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp195155 _%src-deps-scm194797%_)))
                           (_%src-bin-scm194811%_
                            (gxc#find-static-module-file _%ctx194743%_))
                           (_%src-bin-scm194813%_
                            (path-expand _%src-bin-scm194811%_))
                           (_%src-bin-c194815%_
                            (_%replace-extension194748%_
                             _%src-bin-scm194813%_
                             '".c"))
                           (_%src-bin-o194817%_
                            (_%replace-extension194748%_
                             _%src-bin-scm194813%_
                             '".o"))
                           (_%output-bin194819%_
                            (path-expand _%output-bin194763%_))
                           (_%output-scm194821%_
                            (path-expand _%output-scm194762%_))
                           (_%output-c194823%_
                            (_%replace-extension194748%_
                             _%output-scm194821%_
                             '".c"))
                           (_%output-o194825%_
                            (_%replace-extension194748%_
                             _%output-scm194821%_
                             '".o"))
                           (_%output_-c194827%_
                            (_%replace-extension194748%_
                             _%output-scm194821%_
                             '"_.c"))
                           (_%output_-o194829%_
                            (_%replace-extension194748%_
                             _%output-scm194821%_
                             '"_.o"))
                           (_%gsc-link-opts194831%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194833%_ (gxc#gsc-cc-options__0))
                           (_%gsc-static-opts194835%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir194769%_))
                           (_%output-ld-opts194837%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts194839%_
                            (_%get-libgerbil-ld-opts194747%_
                             _%gerbil-libdir194767%_))
                           (_%rpath194841%_
                            (gxc#gerbil-rpath _%gerbil-libdir194767%_))
                           (_%builtin-modules194845%_
                            (_%remove-duplicates194754%_
                             (let ((__tmp195156
                                    (let ((__tmp195158
                                           (lambda (_%mod194843%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod194843%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp195157
                                           (cons _%ctx194743%_
                                                 _%deps194771%_)))
                                      (declare (not safe))
                                      (##map __tmp195158 __tmp195157))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp195156)))))
                      (letrec ((_%compile-obj194848%_
                                (lambda (_%scm-path194855%_ _%c-path194856%_)
                                  (let* ((_%o-path194858%_
                                          (_%replace-extension194748%_
                                           _%c-path194856%_
                                           '".o"))
                                         (_%lock194860%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path194858%_
                                             '".lock")))
                                         (_%locked194862%_ '#f)
                                         (_%unlock194865%_
                                          (lambda ()
                                            (close-port _%locked194862%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock194860%_)))))
                                    (let _%retry194868%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock194860%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry194868%_))
                                          (begin
                                            (set! _%locked194862%_
                                                  (let ((__tmp195159
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock194860%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp195159)))
                                            (if _%locked194862%_
                                                '#!void
                                                (_%retry194868%_)))))
                                    (let ((__tmp195161
                                           (lambda ()
                                             (if (and (let ()
                                                        (declare (not safe))
                                                        (##file-exists?
                                                         _%o-path194858%_))
                                                      (or (not _%scm-path194855%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (file-newer?
                                                             _%scm-path194855%_
                                                             _%o-path194858%_))))
                                                 (gxc#invoke__%
                                                  '#f
                                                  absent-value
                                                  absent-value
                                                  (gxc#gerbil-gsc)
                                                  (cons '"-obj"
                                                        (let ((__tmp195162
                                                               (let ((__tmp195163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%c-path194856%_ '())))
                         (declare (not safe))
                         (__foldr1
                          cons
                          __tmp195163
                          _%gsc-static-opts194835%_))))
                  (declare (not safe))
                  (__foldr1 cons __tmp195162 _%gsc-cc-opts194833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp195160
                                           (lambda () (_%unlock194865%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp195161
                                       __tmp195160))))))
                        (let ((__tmp195164
                               (lambda ()
                                 (let ((__tmp195165
                                        (path-directory _%output-bin194819%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp195165)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp195164))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194821%_
                         (lambda ()
                           (_%generate-stub194746%_
                            _%builtin-modules194845%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it194853%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp195166
                                                   (let ((__tmp195167
                                                          (let ((__tmp195168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm194813%_
                               (cons _%output-scm194821%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195168 _%src-deps-scm194797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp195167
                                                      _%libgerbil-c194783%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp195166
                                               _%gsc-link-opts194831%_))))
                                     (for-each
                                      _%compile-obj194848%_
                                      (let ((__tmp195169
                                             (cons _%src-bin-scm194813%_
                                                   (cons _%output-scm194821%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195169
                                         _%src-deps-scm194797%_))
                                      (let ((__tmp195170
                                             (cons _%src-bin-c194815%_
                                                   (cons _%output-c194823%_
                                                         (cons _%output_-c194827%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195170
                                         _%src-deps-c194803%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-obj"
                                            (let ((__tmp195171
                                                   (let ((__tmp195172
                                                          (let ((__tmp195173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-c194815%_
                               (cons _%output-c194823%_
                                     (cons _%output_-c194827%_ '())))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195173 _%src-deps-c194803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp195172
                                                      _%gsc-static-opts194835%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp195171
                                               _%gsc-cc-opts194833%_))))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin194819%_
                                                        (let ((__tmp195174
                                                               (cons _%src-bin-o194817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o194825%_
                                   (cons _%output_-o194829%_
                                         (let ((__tmp195175
                                                (let ((__tmp195176
                                                       (let ((__tmp195178
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir194767%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts194839%_))))
                     (__tmp195177
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath194841%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp195178 __tmp195177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195176
                                                   _%output-ld-opts194837%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195175
                                            _%libgerbil-o194789%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp195174 _%src-deps-o194809%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp195179
                                            (cons _%output-c194823%_
                                                  (cons _%output_-c194827%_
                                                        (cons _%output-o194825%_
                                                              (cons _%output_-o194829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp195179)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it194853%_))
                                  (_%compile-it194853%_)))
                            '#!void))))))
          (let* ((_%output-bin194757%_
                  (gxc#compile-exe-output-file _%ctx194743%_ _%opts194744%_))
                 (_%output-scm194759%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194757%_ '"__exe.scm"))))
            (_%compile-stub194755%_
             _%output-scm194759%_
             _%output-bin194757%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194565%_ _%opts194566%_)
        (letrec ((_%reset-declare194568%_
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
                 (_%generate-stub194569%_
                  (lambda (_%deps194734%_)
                    (let ((_%mod-main194736%_
                           (gxc#find-runtime-symbol _%ctx194565%_ 'main))
                          (_%reset-decl194737%_ (_%reset-declare194568%_))
                          (_%user-decl194738%_ (_%user-declare194570%_)))
                      (for-each
                       (lambda (_%dep194740%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194737%_))
                         (newline)
                         (if _%user-decl194738%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194738%_))
                               (newline))
                             '#!void)
                         (let ((__tmp195180
                                (cons 'include (cons _%dep194740%_ '()))))
                           (declare (not safe))
                           (##write __tmp195180))
                         (newline))
                       _%deps194734%_)
                      (let ((__tmp195181
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp195181))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194570%_
                  (lambda ()
                    (let* ((_%gsc-opts194639%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194566%_)))
                           (_%gsc-prelude194641%_
                            (if _%gsc-opts194639%_
                                (member '"-prelude" _%gsc-opts194639%_)
                                '#f))
                           (_%gsc-prelude194643%_
                            (if _%gsc-prelude194641%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194641%_)))
                                '#f)))
                      (let _%lp194646%_ ((_%rest194648%_
                                          (cons _%gsc-prelude194643%_ '()))
                                         (_%user-decls194649%_ '()))
                        (let* ((_%rest194650194658%_ _%rest194648%_)
                               (_%else194652194666%_
                                (lambda ()
                                  (if (null? _%user-decls194649%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194649%_)))))
                               (_%K194654194722%_
                                (lambda (_%rest194669%_ _%expr194670%_)
                                  (let* ((_%expr194671194683%_ _%expr194670%_)
                                         (_%else194674194691%_
                                          (lambda ()
                                            (_%lp194646%_
                                             _%rest194669%_
                                             _%user-decls194649%_))))
                                    (let ((_%K194679194712%_
                                           (lambda (_%decls194710%_)
                                             (_%lp194646%_
                                              _%rest194669%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls194649%_
                                                 _%decls194710%_)))))
                                          (_%K194676194697%_
                                           (lambda (_%exprs194695%_)
                                             (_%lp194646%_
                                              (append _%exprs194695%_
                                                      _%rest194669%_)
                                              _%user-decls194649%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194671194683%_))
                                          (let ((_%tl194681194717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194671194683%_)))
                                                (_%hd194680194715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194671194683%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194680194715%_
                                                         'declare))
                                                (let ((_%decls194720%_
                                                       _%tl194681194717%_))
                                                  (_%K194679194712%_
                                                   _%decls194720%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194680194715%_
                                                             'begin))
                                                    (let ((_%exprs194705%_
                                                           _%tl194681194717%_))
                                                      (_%K194676194697%_
                                                       _%exprs194705%_))
                                                    (_%else194674194691%_))))
                                          (_%else194674194691%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194650194658%_))
                              (let ((_%hd194655194725%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194650194658%_)))
                                    (_%tl194656194727%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194650194658%_))))
                                (let* ((_%expr194730%_ _%hd194655194725%_)
                                       (_%rest194732%_ _%tl194656194727%_))
                                  (_%K194654194722%_
                                   _%rest194732%_
                                   _%expr194730%_)))
                              (_%else194652194666%_)))))))
                 (_%compile-stub194571%_
                  (lambda (_%output-scm194578%_ _%output-bin194579%_)
                    (let* ((_%gerbil-home194581%_
                            (let ((__tmp195182
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195182)))
                           (_%gerbil-libdir194583%_
                            (path-expand '"lib" _%gerbil-home194581%_))
                           (_%runtime194585%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194587%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194581%_))
                           (_%include-gambit-sharp194589%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194587%_
                               '"\")")))
                           (_%bin-scm194591%_
                            (gxc#find-static-module-file _%ctx194565%_))
                           (_%deps194593%_
                            (gxc#find-runtime-module-deps _%ctx194565%_))
                           (_%deps194595%_
                            (map gxc#find-static-module-file _%deps194593%_))
                           (_%deps194600%_
                            (let ((__tmp195183
                                   (lambda (_%$obj194597%_)
                                     (not (gxc#file-empty? _%$obj194597%_)))))
                              (declare (not safe))
                              (##filter __tmp195183 _%deps194595%_)))
                           (_%deps194604%_
                            (let ((__tmp195184
                                   (lambda (_%f194602%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f194602%_
                                             _%runtime194585%_))))))
                              (declare (not safe))
                              (##filter __tmp195184 _%deps194600%_)))
                           (_%output-base194606%_
                            (let ((__tmp195185
                                   (path-strip-extension
                                    _%output-scm194578%_)))
                              (declare (not safe))
                              (##string-append __tmp195185)))
                           (_%output-c194608%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194606%_ '".c")))
                           (_%output-o194610%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194606%_ '".o")))
                           (_%output-c_194612%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194606%_ '"_.c")))
                           (_%output-o_194614%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194606%_ '"_.o")))
                           (_%gsc-link-opts194616%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194618%_ (gxc#gsc-cc-options__0))
                           (_%gsc-static-opts194620%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir194583%_)))
                           (_%output-ld-opts194622%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros194624%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194589%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194589%_
                                            '()))))
                           (_%gsc-link-opts194626%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194616%_
                               _%gsc-gx-macros194624%_)))
                           (_%rpath194628%_
                            (gxc#gerbil-rpath _%gerbil-libdir194583%_))
                           (_%default-ld-options194630%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp195186
                             (lambda ()
                               (let ((__tmp195187
                                      (path-directory _%output-bin194579%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195187)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195186))
                      (gxc#with-output-to-scheme-file
                       _%output-scm194578%_
                       (lambda ()
                         (_%generate-stub194569%_
                          (let ((__tmp195188
                                 (let ((__tmp195189
                                        (cons _%bin-scm194591%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp195189
                                    _%deps194604%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp195188 _%runtime194585%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it194636%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_194612%_
                                                      (let ((__tmp195190
                                                             (cons _%output-scm194578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195190 _%gsc-link-opts194626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp195191
                                                 (let ((__tmp195192
                                                        (cons _%output-c194608%_
                                                              (cons _%output-c_194612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp195192
                                                    _%gsc-static-opts194620%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195191
                                             _%gsc-cc-opts194618%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin194579%_
                                                      (cons _%output-o194610%_
                                                            (cons _%output-o_194614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195193
                                 (let ((__tmp195195
                                        (cons '"-L"
                                              (cons _%gerbil-libdir194583%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options194630%_))))
                                       (__tmp195194
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath194628%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp195195 __tmp195194))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp195193
                             _%output-ld-opts194622%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it194636%_))
                                (_%compile-it194636%_)))
                          '#!void)))))
          (let* ((_%output-bin194573%_
                  (gxc#compile-exe-output-file _%ctx194565%_ _%opts194566%_))
                 (_%output-scm194575%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194573%_ '"__exe.scm"))))
            (_%compile-stub194571%_
             _%output-scm194575%_
             _%output-bin194573%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx194514%_ _%id194515%_)
        (let ((_%$e194561%_
               (let ((__tmp195197
                      (lambda (_%e194516194518%_)
                        (let* ((_%g194520194530%_ _%e194516194518%_)
                               (_%else194522194538%_ (lambda () '#f))
                               (_%K194524194542%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194520194530%_
                                 'gx#module-export::t))
                              (let* ((_%e194525194545%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194520194530%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194526194548%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194520194530%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194527194551%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194520194530%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194527194551%_ '0))
                                    (let ((_%e194528194554%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194520194530%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194556194558%_)
                                             (eq? _%g194556194558%_
                                                  _%id194515%_))
                                           _%e194528194554%_)
                                          (_%K194524194542%_)
                                          (_%else194522194538%_)))
                                    (_%else194522194538%_)))
                              (_%else194522194538%_)))))
                     (__tmp195196
                      (##structure-ref
                       _%ctx194514%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp195197 __tmp195196))))
          (if _%$e194561%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194561%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194505%_ _%id194506%_)
        (let ((_%$e194508%_
               (gxc#find-export-binding _%ctx194505%_ _%id194506%_)))
          (if _%$e194508%_
              ((lambda (_%bind194511%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194511%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194506%_)))
                 (##structure-ref _%bind194511%_ '1 gx#binding::t '#f))
               _%$e194508%_)
              (let ((__tmp195198
                     (##structure-ref
                      _%ctx194505%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp195198
                 _%id194506%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx194371%_)
        (letrec* ((_%ht194373%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template194374%_
                   (lambda (_%in194450%_ _%phi194451%_)
                     (let ((_%iphi194453%_
                            (fx+ _%phi194451%_
                                 (##direct-structure-ref
                                  _%in194450%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194454%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194450%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194456%_ ((_%rest194458%_ _%imports194454%_)
                                          (_%r194459%_ '()))
                         (let* ((_%rest194460194468%_ _%rest194458%_)
                                (_%else194462194476%_ (lambda () _%r194459%_))
                                (_%K194464194493%_
                                 (lambda (_%rest194479%_ _%in194480%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194480%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi194453%_))
                                           (_%lp194456%_
                                            _%rest194479%_
                                            (cons _%in194480%_ _%r194459%_))
                                           (_%lp194456%_
                                            _%rest194479%_
                                            _%r194459%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194480%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194484%_
                                                  (fx+ _%phi194451%_
                                                       (##direct-structure-ref
                                                        _%in194480%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194484%_))
                                                 (_%lp194456%_
                                                  _%rest194479%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in194480%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r194459%_))
                                                 (_%lp194456%_
                                                  _%rest194479%_
                                                  _%r194459%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194480%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194487%_
                                                      (fx+ _%iphi194453%_
                                                           (##direct-structure-ref
                                                            _%in194480%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194487%_))
                                                     (_%lp194456%_
                                                      _%rest194479%_
                                                      (cons (##direct-structure-ref
                                                             _%in194480%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r194459%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194487%_))
                                                         (_%lp194456%_
                                                          _%rest194479%_
                                                          (let ((__tmp195199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template194374%_
                          _%in194480%_
                          _%iphi194453%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r194459%_ __tmp195199)))
                 (_%lp194456%_ _%rest194479%_ _%r194459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp194456%_
                                                _%rest194479%_
                                                _%r194459%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194460194468%_))
                               (let ((_%hd194465194496%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194460194468%_)))
                                     (_%tl194466194498%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194460194468%_))))
                                 (let* ((_%in194501%_ _%hd194465194496%_)
                                        (_%rest194503%_ _%tl194466194498%_))
                                   (_%K194464194493%_
                                    _%rest194503%_
                                    _%in194501%_)))
                               (_%else194462194476%_)))))))
                  (_%find-deps194375%_
                   (lambda (_%rest194383%_ _%deps194384%_)
                     (let* ((_%rest194385194393%_ _%rest194383%_)
                            (_%else194387194401%_ (lambda () _%deps194384%_))
                            (_%K194389194438%_
                             (lambda (_%rest194404%_ _%hd194405%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd194405%_
                                      'gx#module-context::t))
                                   (let ((_%id194408%_
                                          (##structure-ref
                                           _%hd194405%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports194409%_
                                          (##structure-ref
                                           _%hd194405%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht194373%_
                                            _%id194408%_))
                                         (_%find-deps194375%_
                                          _%rest194404%_
                                          _%deps194384%_)
                                         (let ((_%$e194412%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd194405%_))))
                                           (if _%$e194412%_
                                               ((lambda (_%pre194415%_)
                                                  (let ((_%xdeps194417%_
                                                         (_%find-deps194375%_
                                                          (cons _%pre194415%_
                                                                _%imports194409%_)
                                                          _%deps194384%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht194373%_
                                                       _%id194408%_
                                                       _%hd194405%_))
                                                    (_%find-deps194375%_
                                                     _%rest194404%_
                                                     (cons _%hd194405%_
                                                           _%xdeps194417%_))))
                                                _%$e194412%_)
                                               (let ((_%xdeps194420%_
                                                      (_%find-deps194375%_
                                                       _%imports194409%_
                                                       _%deps194384%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht194373%_
                                                    _%id194408%_
                                                    _%hd194405%_))
                                                 (_%find-deps194375%_
                                                  _%rest194404%_
                                                  (cons _%hd194405%_
                                                        _%xdeps194420%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd194405%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194423%_
                                              (##structure-ref
                                               _%hd194405%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht194373%_
                                                _%id194423%_))
                                             (_%find-deps194375%_
                                              _%rest194404%_
                                              _%deps194384%_)
                                             (let ((_%xdeps194427%_
                                                    (_%find-deps194375%_
                                                     (##structure-ref
                                                      _%hd194405%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps194384%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht194373%_
                                                      _%id194423%_))
                                                   (_%find-deps194375%_
                                                    _%rest194404%_
                                                    _%xdeps194427%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht194373%_
                                                        _%id194423%_
                                                        _%hd194405%_))
                                                     (_%find-deps194375%_
                                                      _%rest194404%_
                                                      (cons _%hd194405%_
                                                            _%xdeps194427%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd194405%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd194405%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps194375%_
                                                (cons (##direct-structure-ref
                                                       _%hd194405%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest194404%_)
                                                _%deps194384%_)
                                               (_%find-deps194375%_
                                                _%rest194404%_
                                                _%deps194384%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd194405%_
                                                  'gx#module-export::t))
                                               (_%find-deps194375%_
                                                (cons (##direct-structure-ref
                                                       _%hd194405%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest194404%_)
                                                _%deps194384%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd194405%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd194405%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps194375%_
                (cons (##direct-structure-ref
                       _%hd194405%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest194404%_)
                _%deps194384%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd194405%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps194434%_
                          (_%import-set-template194374%_ _%hd194405%_ '0)))
                     (_%find-deps194375%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest194404%_ _%xdeps194434%_))
                      _%deps194384%_))
                   (_%find-deps194375%_ _%rest194404%_ _%deps194384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd194405%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest194385194393%_))
                           (let ((_%hd194390194441%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest194385194393%_)))
                                 (_%tl194391194443%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest194385194393%_))))
                             (let* ((_%hd194446%_ _%hd194390194441%_)
                                    (_%rest194448%_ _%tl194391194443%_))
                               (_%K194389194438%_
                                _%rest194448%_
                                _%hd194446%_)))
                           (_%else194387194401%_))))))
          (let ((__tmp195200
                 (filter gx#expander-context-id
                         (_%find-deps194375%_
                          (let ((_%$e194377%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx194371%_))))
                            (if _%$e194377%_
                                ((lambda (_%pre194380%_)
                                   (cons _%pre194380%_
                                         (##structure-ref
                                          _%ctx194371%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e194377%_)
                                (##structure-ref
                                 _%ctx194371%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp195200)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx194301%_)
        (let* ((_%context-id194303%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx194301%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx194301%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx194301%_)))
               (_%scm194305%_
                (let ((__tmp195201
                       (gxc#static-module-name _%context-id194303%_)))
                  (declare (not safe))
                  (##string-append __tmp195201 '".scm")))
               (_%dirs194307%_ (let () (declare (not safe)) (load-path)))
               (_%dirs194313%_
                (let ((_%user-libpath194309%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath194309%_
                      (let ((_%user-libpath194311%_
                             (path-expand '"lib" _%user-libpath194309%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath194311%_ _%dirs194307%_))
                            _%dirs194307%_
                            (cons _%user-libpath194311%_ _%dirs194307%_)))
                      _%dirs194307%_)))
               (_%dirs194323%_
                (let ((_%$e194315%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e194315%_
                      ((lambda (_%g194317194319%_)
                         (cons _%g194317194319%_ _%dirs194313%_))
                       _%$e194315%_)
                      _%dirs194313%_)))
               (_%dirs194329%_
                (map (lambda (_%g194324194326%_)
                       (path-expand '"static" _%g194324194326%_))
                     _%dirs194323%_)))
          (let _%lp194332%_ ((_%rest194334%_ _%dirs194329%_))
            (let* ((_%rest194335194343%_ _%rest194334%_)
                   (_%else194337194351%_
                    (lambda ()
                      (let ((__tmp195202
                             (##structure-ref
                              _%ctx194301%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp195202
                         _%scm194305%_))))
                   (_%K194339194359%_
                    (lambda (_%rest194354%_ _%dir194355%_)
                      (let ((_%path194357%_
                             (path-expand _%scm194305%_ _%dir194355%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194357%_))
                            _%path194357%_
                            (_%lp194332%_ _%rest194354%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest194335194343%_))
                  (let ((_%hd194340194362%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194335194343%_)))
                        (_%tl194341194364%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194335194343%_))))
                    (let* ((_%dir194367%_ _%hd194340194362%_)
                           (_%rest194369%_ _%tl194341194364%_))
                      (_%K194339194359%_ _%rest194369%_ _%dir194367%_)))
                  (_%else194337194351%_)))))))
    (define gxc#file-empty?
      (lambda (_%path194299%_)
        (zero? (let ((__tmp195203 (file-info _%path194299%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp195203)))))
    (define gxc#compile-top-module
      (lambda (_%ctx194295%_)
        (let ((__tmp195207
               (lambda ()
                 (let ((__tmp195208
                        (##structure-ref
                         _%ctx194295%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp195208))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp195209
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx194295%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp195209))
                     '#!void)
                 (gxc#collect-bindings _%ctx194295%_)
                 (gxc#compile-runtime-code _%ctx194295%_)
                 (gxc#compile-meta-code _%ctx194295%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx194295%_)
                     '#!void)))
              (__tmp195206
               (let ((__obj195128
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj195128)
                 __obj195128))
              (__tmp195205 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195204
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
           __tmp195207
           gx#current-expander-context
           _%ctx194295%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp195206
           gxc#current-compile-runtime-sections
           __tmp195205
           gxc#current-compile-runtime-names
           __tmp195204))))
    (define gxc#collect-bindings
      (lambda (_%ctx194293%_)
        (let ((__tmp195210
               (##structure-ref _%ctx194293%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp195210))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx194241%_)
        (letrec ((_%compile1194243%_
                  (lambda (_%ctx194282%_)
                    (let* ((_%code194284%_
                            (##structure-ref
                             _%ctx194282%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm194288%_
                            (let ((_%idstr194286%_
                                   (let ((__tmp195211
                                          (##structure-ref
                                           _%ctx194282%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp195211))))
                              (declare (not safe))
                              (##string-append _%idstr194286%_ '"~0")))
                           (_%rtc?194290%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code194284%_))))
                      (if _%rtc?194290%_
                          (let ((__tmp195212
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp195212
                             _%ctx194282%_
                             _%rtm194288%_))
                          '#!void)
                      (_%generate-runtime-code194245%_
                       _%ctx194282%_
                       _%code194284%_
                       (if _%rtc?194290%_ _%rtm194288%_ '#f)))))
                 (_%context-timestamp194244%_
                  (lambda (_%ctx194280%_)
                    (let ((__tmp195213
                           (let ((__tmp195214
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx194280%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp195214 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp195213))))
                 (_%generate-runtime-code194245%_
                  (lambda (_%ctx194252%_ _%code194253%_ _%rtm194254%_)
                    (let* ((_%runtime-code?194256%_ (if _%rtm194254%_ '#t '#f))
                           (_%lifts194258%_ (box '()))
                           (_%runtime-code194261%_
                            (if _%runtime-code?194256%_
                                (let ((__tmp195217
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code194253%_))))
                                      (__tmp195216
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp195215
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp195217
                                   gx#current-expander-context
                                   _%ctx194252%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts194258%_
                                   gxc#current-compile-marks
                                   __tmp195216
                                   gxc#current-compile-identifiers
                                   __tmp195215))
                                '#f))
                           (_%runtime-code194263%_
                            (if _%runtime-code?194256%_
                                (if (null? (unbox _%lifts194258%_))
                                    _%runtime-code194261%_
                                    (cons 'begin
                                          (let ((__tmp195219
                                                 (cons _%runtime-code194261%_
                                                       '()))
                                                (__tmp195218
                                                 (reverse (unbox _%lifts194258%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195219
                                             __tmp195218))))
                                '#f))
                           (_%runtime-code194265%_
                            (if _%runtime-code?194256%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp194244%_
                                                         _%ctx194252%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code194263%_ '())))
                                '#f))
                           (_%loader-code194268%_
                            (let ((__tmp195220
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code194253%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195220
                               gx#current-expander-context
                               _%ctx194252%_)))
                           (_%loader-code194270%_
                            (cons 'begin
                                  (cons _%loader-code194268%_
                                        (cons (if _%runtime-code?194256%_
                                                  (cons 'load-module
                                                        (cons _%rtm194254%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0194272%_
                            (gxc#compile-output-file _%ctx194252%_ '0 '".scm"))
                           (_%scmrt194274%_
                            (gxc#compile-output-file
                             _%ctx194252%_
                             '#f
                             '".scm"))
                           (_%scms194276%_
                            (gxc#compile-static-output-file _%ctx194252%_)))
                      (if _%runtime-code?194256%_
                          (gxc#compile-scm-file__0
                           _%scm0194272%_
                           _%runtime-code194265%_)
                          '#!void)
                      (let ((__tmp195221
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt194274%_
                                _%loader-code194270%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp195221
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (file-exists? _%scms194276%_)
                          (delete-file _%scms194276%_)
                          '#!void)
                      (if _%runtime-code?194256%_
                          (copy-file _%scm0194272%_ _%scms194276%_)
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms194276%_ void)))))))
          (let* ((_%all-modules194247%_
                  (cons _%ctx194241%_ (gxc#lift-nested-modules _%ctx194241%_)))
                 (__tmp195222
                  (lambda (_%ctx194249%_)
                    (let ((__tmp195223
                           (lambda () (_%compile1194243%_ _%ctx194249%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195223
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp195222 _%all-modules194247%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx194141%_)
        (letrec ((_%compile-ssi194143%_
                  (lambda (_%code194209%_)
                    (let* ((_%path194211%_
                            (gxc#compile-output-file
                             _%ctx194141%_
                             '#f
                             '".ssi"))
                           (_%prelude194223%_
                            (let* ((_%super194213%_
                                    (##structure-ref
                                     _%ctx194141%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e194215%_
                                    (##structure-ref
                                     _%super194213%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e194215%_
                                  ((lambda (_%g194217194219%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g194217194219%_)))
                                   _%$e194215%_)
                                  ':<root>)))
                           (_%ns194225%_
                            (##structure-ref
                             _%ctx194141%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr194227%_
                            (symbol->string
                             (##structure-ref
                              _%ctx194141%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg194235%_
                            (let ((_%$e194229%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr194227%_ '#\/))))
                              (if _%$e194229%_
                                  ((lambda (_%x194232%_)
                                     (let ((__tmp195224
                                            (substring
                                             _%idstr194227%_
                                             '0
                                             _%x194232%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp195224)))
                                   _%$e194229%_)
                                  '#f)))
                           (_%rt194237%_
                            (let ((__tmp195225
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp195225 _%ctx194141%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path194211%_))
                      (gxc#with-output-to-scheme-file
                       _%path194211%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude194223%_))
                         (if _%pkg194235%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg194235%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns194225%_))
                         (newline)
                         (pretty-print _%code194209%_)
                         (if _%rt194237%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt194237%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi194144%_
                  (lambda (_%part194149%_)
                    (let* ((_%part194150194163%_ _%part194149%_)
                           (_%E194152194167%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part194150194163%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K194153194178%_
                            (lambda (_%code194170%_
                                     _%n194171%_
                                     _%phi194172%_
                                     _%phi-ctx194173%_)
                              (let ((_%code194176%_
                                     (let ((__tmp195226
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code194170%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp195226
                                        gx#current-expander-context
                                        _%phi-ctx194173%_
                                        gx#current-expander-phi
                                        _%phi194172%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx194141%_
                                  _%n194171%_
                                  '".scm")
                                 _%code194176%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part194150194163%_))
                          (let ((_%hd194154194181%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part194150194163%_)))
                                (_%tl194155194183%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part194150194163%_))))
                            (let ((_%phi-ctx194186%_ _%hd194154194181%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194155194183%_))
                                  (let ((_%hd194156194188%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194155194183%_)))
                                        (_%tl194157194190%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194155194183%_))))
                                    (let ((_%phi194193%_ _%hd194156194188%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl194157194190%_))
                                          (let ((_%hd194158194195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl194157194190%_)))
                                                (_%tl194159194197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl194157194190%_))))
                                            (let ((_%n194200%_
                                                   _%hd194158194195%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl194159194197%_))
                                                  (let ((_%hd194160194202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl194159194197%_)))
                                                        (_%tl194161194204%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl194159194197%_))))
                                                    (let ((_%code194207%_
                                                           _%hd194160194202%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl194161194204%_))
                                                          (_%K194153194178%_
                                                           _%code194207%_
                                                           _%n194200%_
                                                           _%phi194193%_
                                                           _%phi-ctx194186%_)
                                                          (_%E194152194167%_))))
                                                  (_%E194152194167%_))))
                                          (_%E194152194167%_))))
                                  (_%E194152194167%_))))
                          (_%E194152194167%_))))))
          (let ((_g195227_ (gxc#generate-meta-code _%ctx194141%_)))
            (begin
              (let ((_g195228_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g195227_)
                           (##vector-length _g195227_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g195228_ 2)))
                    (error "Context expects 2 values" _g195228_)))
              (let ((_%ssi-code194146%_
                     (let () (declare (not safe)) (##vector-ref _g195227_ 0)))
                    (_%phi-code194147%_
                     (let () (declare (not safe)) (##vector-ref _g195227_ 1))))
                (begin
                  (_%compile-ssi194143%_ _%ssi-code194146%_)
                  (for-each _%compile-phi194144%_ _%phi-code194147%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx194123%_)
        (let* ((_%path194125%_
                (gxc#compile-output-file _%ctx194123%_ '#f '".ssxi.ss"))
               (_%code194127%_
                (let ((__tmp195229
                       (##structure-ref
                        _%ctx194123%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp195229)))
               (_%idstr194129%_
                (symbol->string
                 (##structure-ref
                  _%ctx194123%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg194137%_
                (let ((_%$e194131%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr194129%_ '#\/))))
                  (if _%$e194131%_
                      ((lambda (_%x194134%_)
                         (let ((__tmp195230
                                (substring _%idstr194129%_ '0 _%x194134%_)))
                           (declare (not safe))
                           (##string->symbol __tmp195230)))
                       _%$e194131%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path194125%_))
          (gxc#with-output-to-scheme-file
           _%path194125%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg194137%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg194137%_))
                 '#!void)
             (newline)
             (pretty-print _%code194127%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx194116%_)
        (let* ((_%state194118%_
                (let ((__obj195129
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj195129 _%ctx194116%_)
                  __obj195129))
               (_%ssi-code194120%_
                (let ((__tmp195231
                       (##structure-ref
                        _%ctx194116%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state194118%_
                   __tmp195231))))
          (values _%ssi-code194120%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state194118%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx194109%_)
        (let ((_%lifts194111%_ (box '())))
          (let ((__tmp195234
                 (lambda ()
                   (let ((_%code194114%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx194109%_))))
                     (if (null? (unbox _%lifts194111%_))
                         _%code194114%_
                         (cons 'begin
                               (let ((__tmp195236 (cons _%code194114%_ '()))
                                     (__tmp195235
                                      (reverse (unbox _%lifts194111%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195236 __tmp195235)))))))
                (__tmp195233
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp195232
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195234
             gxc#current-compile-lift
             _%lifts194111%_
             gxc#current-compile-marks
             __tmp195233
             gxc#current-compile-identifiers
             __tmp195232)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx194105%_)
        (let ((_%modules194107%_ (box '())))
          (let ((__tmp195237
                 (##structure-ref _%ctx194105%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules194107%_ __tmp195237))
          (reverse (unbox _%modules194107%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path194085%_ _%code194086%_ _%phi?194087%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path194085%_))
        (gxc#with-output-to-scheme-file
         _%path194085%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp195238
                                           (if _%phi?194087%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp195238)))))))
           (pretty-print _%code194086%_)))
        (let ((_%compile-it194091%_
               (lambda ()
                 (gxc#gsc-compile-file _%path194085%_ _%phi?194087%_))))
          (if (let () (declare (not safe)) (gxc#current-compile-parallel))
              (let ((__tmp195239
                     (cons 'compile-file (cons _%path194085%_ '()))))
                (declare (not safe))
                (gxc#add-compile-job!__% _%compile-it194091%_ __tmp195239))
              (_%compile-it194091%_)))))
    (define gxc#compile-scm-file__0
      (lambda (_%path194096%_ _%code194097%_)
        (let ((_%phi?194099%_ '#f))
          (gxc#compile-scm-file__%
           _%path194096%_
           _%code194097%_
           _%phi?194099%_))))
    (define gxc#compile-scm-file
      (lambda _g195241_
        (let ((_g195240_ (let () (declare (not safe)) (##length _g195241_))))
          (cond ((let () (declare (not safe)) (##fx= _g195240_ 2))
                 (apply gxc#compile-scm-file__0 _g195241_))
                ((let () (declare (not safe)) (##fx= _g195240_ 3))
                 (apply gxc#compile-scm-file__% _g195241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g195241_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?193986%_)
        (let _%lp193988%_ ((_%rest193990%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193991%_ '()))
          (let* ((_%rest193992194012%_ _%rest193990%_)
                 (_%else193996194020%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts193991%_)))
                        (reverse _%opts193991%_)))))
            (let ((_%K194006194063%_
                   (lambda (_%rest194061%_)
                     (_%lp193988%_ _%rest194061%_ _%opts193991%_)))
                  (_%K194001194045%_
                   (lambda (_%rest194043%_)
                     (_%lp193988%_ _%rest194043%_ _%opts193991%_)))
                  (_%K193998194027%_
                   (lambda (_%rest194024%_ _%opt194025%_)
                     (_%lp193988%_
                      _%rest194024%_
                      (cons _%opt194025%_ _%opts193991%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193992194012%_))
                  (let ((_%tl194008194068%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193992194012%_)))
                        (_%hd194007194066%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193992194012%_))))
                    (if (equal? _%hd194007194066%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194008194068%_))
                            (let* ((_%tl194010194071%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194008194068%_)))
                                   (_%rest194074%_ _%tl194010194071%_))
                              (_%K194006194063%_ _%rest194074%_))
                            (let ((_%opt194035%_ _%hd194007194066%_)
                                  (_%rest194037%_ _%tl194008194068%_))
                              (_%K193998194027%_
                               _%rest194037%_
                               _%opt194035%_)))
                        (if (equal? _%hd194007194066%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194008194068%_))
                                (let* ((_%tl194005194053%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194008194068%_)))
                                       (_%rest194056%_ _%tl194005194053%_))
                                  (_%K194001194045%_ _%rest194056%_))
                                (let ((_%opt194035%_ _%hd194007194066%_)
                                      (_%rest194037%_ _%tl194008194068%_))
                                  (_%K193998194027%_
                                   _%rest194037%_
                                   _%opt194035%_)))
                            (let ((_%opt194035%_ _%hd194007194066%_)
                                  (_%rest194037%_ _%tl194008194068%_))
                              (_%K193998194027%_
                               _%rest194037%_
                               _%opt194035%_)))))
                  (_%else193996194020%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?194080%_ '#f)) (gxc#gsc-link-options__% _%phi?194080%_))))
    (define gxc#gsc-link-options
      (lambda _g195243_
        (let ((_g195242_ (let () (declare (not safe)) (##length _g195243_))))
          (cond ((let () (declare (not safe)) (##fx= _g195242_ 0))
                 (apply gxc#gsc-link-options__0 _g195243_))
                ((let () (declare (not safe)) (##fx= _g195242_ 1))
                 (apply gxc#gsc-link-options__% _g195243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g195243_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?193887%_)
        (let _%lp193889%_ ((_%rest193891%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193892%_ '()))
          (let* ((_%rest193893193913%_ _%rest193891%_)
                 (_%else193897193921%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse! _%opts193892%_)))
                        (reverse! _%opts193892%_)))))
            (let ((_%K193907193960%_
                   (lambda (_%rest193957%_ _%opt193958%_)
                     (_%lp193889%_
                      _%rest193957%_
                      (if _%phi?193887%_
                          _%opts193892%_
                          (cons _%opt193958%_
                                (cons '"-cc-options" _%opts193892%_))))))
                  (_%K193902193941%_
                   (lambda (_%rest193939%_)
                     (_%lp193889%_ _%rest193939%_ _%opts193892%_)))
                  (_%K193899193927%_
                   (lambda (_%rest193925%_)
                     (_%lp193889%_ _%rest193925%_ _%opts193892%_))))
              (if (let () (declare (not safe)) (##pair? _%rest193893193913%_))
                  (let ((_%tl193909193965%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193893193913%_)))
                        (_%hd193908193963%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193893193913%_))))
                    (if (equal? _%hd193908193963%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193909193965%_))
                            (let ((_%tl193911193970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl193909193965%_)))
                                  (_%hd193910193968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl193909193965%_))))
                              (let ((_%opt193973%_ _%hd193910193968%_)
                                    (_%rest193975%_ _%tl193911193970%_))
                                (_%K193907193960%_
                                 _%rest193975%_
                                 _%opt193973%_)))
                            (let ((_%rest193933%_ _%tl193909193965%_))
                              (_%K193899193927%_ _%rest193933%_)))
                        (if (equal? _%hd193908193963%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193909193965%_))
                                (let* ((_%tl193906193949%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193909193965%_)))
                                       (_%rest193952%_ _%tl193906193949%_))
                                  (_%K193902193941%_ _%rest193952%_))
                                (let ((_%rest193933%_ _%tl193909193965%_))
                                  (_%K193899193927%_ _%rest193933%_)))
                            (let ((_%rest193933%_ _%tl193909193965%_))
                              (_%K193899193927%_ _%rest193933%_)))))
                  (_%else193897193921%_)))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?193981%_ '#f)) (gxc#gsc-cc-options__% _%phi?193981%_))))
    (define gxc#gsc-cc-options
      (lambda _g195245_
        (let ((_g195244_ (let () (declare (not safe)) (##length _g195245_))))
          (cond ((let () (declare (not safe)) (##fx= _g195244_ 0))
                 (apply gxc#gsc-cc-options__0 _g195245_))
                ((let () (declare (not safe)) (##fx= _g195244_ 1))
                 (apply gxc#gsc-cc-options__% _g195245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g195245_))))))
    (define gxc#gsc-ld-options__%
      (lambda (_%phi?193788%_)
        (if _%phi?193788%_
            '()
            (let _%lp193790%_ ((_%rest193792%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-gsc-options)))
                               (_%opts193793%_ '()))
              (let* ((_%rest193794193814%_ _%rest193792%_)
                     (_%else193798193822%_
                      (lambda () (reverse! _%opts193793%_))))
                (let ((_%K193808193861%_
                       (lambda (_%rest193858%_ _%opt193859%_)
                         (_%lp193790%_
                          _%rest193858%_
                          (cons _%opt193859%_
                                (cons '"-ld-options" _%opts193793%_)))))
                      (_%K193803193842%_
                       (lambda (_%rest193840%_)
                         (_%lp193790%_ _%rest193840%_ _%opts193793%_)))
                      (_%K193800193828%_
                       (lambda (_%rest193826%_)
                         (_%lp193790%_ _%rest193826%_ _%opts193793%_))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest193794193814%_))
                      (let ((_%tl193810193866%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest193794193814%_)))
                            (_%hd193809193864%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest193794193814%_))))
                        (if (equal? _%hd193809193864%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193810193866%_))
                                (let ((_%tl193812193871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193810193866%_)))
                                      (_%hd193811193869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193810193866%_))))
                                  (let ((_%opt193874%_ _%hd193811193869%_)
                                        (_%rest193876%_ _%tl193812193871%_))
                                    (_%K193808193861%_
                                     _%rest193876%_
                                     _%opt193874%_)))
                                (let ((_%rest193834%_ _%tl193810193866%_))
                                  (_%K193800193828%_ _%rest193834%_)))
                            (if (equal? _%hd193809193864%_ '"-cc-options")
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl193810193866%_))
                                    (let* ((_%tl193807193850%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%tl193810193866%_)))
                                           (_%rest193853%_ _%tl193807193850%_))
                                      (_%K193803193842%_ _%rest193853%_))
                                    (let ((_%rest193834%_ _%tl193810193866%_))
                                      (_%K193800193828%_ _%rest193834%_)))
                                (let ((_%rest193834%_ _%tl193810193866%_))
                                  (_%K193800193828%_ _%rest193834%_)))))
                      (_%else193798193822%_))))))))
    (define gxc#gsc-ld-options__0
      (lambda ()
        (let ((_%phi?193882%_ '#f)) (gxc#gsc-ld-options__% _%phi?193882%_))))
    (define gxc#gsc-ld-options
      (lambda _g195247_
        (let ((_g195246_ (let () (declare (not safe)) (##length _g195247_))))
          (cond ((let () (declare (not safe)) (##fx= _g195246_ 0))
                 (apply gxc#gsc-ld-options__0 _g195247_))
                ((let () (declare (not safe)) (##fx= _g195246_ 1))
                 (apply gxc#gsc-ld-options__% _g195247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options
                  _g195247_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193783%_)
        (let ((_%user-staticdir193785%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193783%_
                       '" -I "
                       _%user-staticdir193785%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193695%_ ((_%rest193697%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193698%_ '()))
          (let* ((_%rest193699193719%_ _%rest193697%_)
                 (_%else193703193727%_ (lambda () _%opts193698%_)))
            (let ((_%K193713193770%_
                   (lambda (_%rest193768%_)
                     (_%lp193695%_ _%rest193768%_ _%opts193698%_)))
                  (_%K193708193748%_
                   (lambda (_%rest193745%_ _%opt193746%_)
                     (_%lp193695%_
                      _%rest193745%_
                      (let ((__tmp195248
                             (let ((__tmp195249
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt193746%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp195249))))
                        (declare (not safe))
                        (##append _%opts193698%_ __tmp195248)))))
                  (_%K193705193733%_
                   (lambda (_%rest193731%_)
                     (_%lp193695%_ _%rest193731%_ _%opts193698%_))))
              (if (let () (declare (not safe)) (##pair? _%rest193699193719%_))
                  (let ((_%tl193715193775%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193699193719%_)))
                        (_%hd193714193773%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193699193719%_))))
                    (if (equal? _%hd193714193773%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193715193775%_))
                            (let* ((_%tl193717193778%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193715193775%_)))
                                   (_%rest193781%_ _%tl193717193778%_))
                              (_%K193713193770%_ _%rest193781%_))
                            (let ((_%rest193739%_ _%tl193715193775%_))
                              (_%K193705193733%_ _%rest193739%_)))
                        (if (equal? _%hd193714193773%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193715193775%_))
                                (let ((_%tl193712193758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193715193775%_)))
                                      (_%hd193711193756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193715193775%_))))
                                  (let ((_%opt193761%_ _%hd193711193756%_)
                                        (_%rest193763%_ _%tl193712193758%_))
                                    (_%K193708193748%_
                                     _%rest193763%_
                                     _%opt193761%_)))
                                (let ((_%rest193739%_ _%tl193715193775%_))
                                  (_%K193705193733%_ _%rest193739%_)))
                            (let ((_%rest193739%_ _%tl193715193775%_))
                              (_%K193705193733%_ _%rest193739%_)))))
                  (_%else193703193727%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str193692%_)
        (not (let () (declare (not safe)) (string-empty? _%str193692%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path193685%_ _%phi?193686%_)
        (let ((_%gsc-link-opts193688%_
               (gxc#gsc-link-options__% _%phi?193686%_))
              (_%gsc-cc-opts193689%_ (gxc#gsc-cc-options__% _%phi?193686%_))
              (_%gsc-ld-opts193690%_ (gxc#gsc-ld-options__% _%phi?193686%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp195250
                  (let ((__tmp195251
                         (let ((__tmp195252 (cons _%path193685%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195252
                            _%gsc-link-opts193688%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195251 _%gsc-ld-opts193690%_))))
             (declare (not safe))
             (__foldr1 cons __tmp195250 _%gsc-cc-opts193689%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193651%_ _%n193652%_ _%ext193653%_)
        (letrec ((_%module-relative-path193655%_
                  (lambda (_%ctx193683%_)
                    (path-strip-directory
                     (let ((__tmp195253
                            (##structure-ref
                             _%ctx193683%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp195253)))))
                 (_%module-source-directory193656%_
                  (lambda (_%ctx193679%_)
                    (path-directory
                     (let ((_%mpath193681%_
                            (##structure-ref
                             _%ctx193679%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath193681%_)
                           _%mpath193681%_
                           (last _%mpath193681%_))))))
                 (_%section-string193657%_
                  (lambda (_%n193673%_)
                    (if (number? _%n193673%_)
                        (number->string _%n193673%_)
                        (if (symbol? _%n193673%_)
                            (symbol->string _%n193673%_)
                            (if (string? _%n193673%_)
                                _%n193673%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193673%_)))))))
                 (_%file-name193658%_
                  (lambda (_%path193671%_)
                    (if _%n193652%_
                        (string-append
                         _%path193671%_
                         '"~"
                         (_%section-string193657%_ _%n193652%_)
                         _%ext193653%_)
                        (string-append _%path193671%_ _%ext193653%_))))
                 (_%file-path193659%_
                  (lambda ()
                    (let ((_%$e193665%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193665%_
                          ((lambda (_%outdir193668%_)
                             (path-expand
                              (_%file-name193658%_
                               (let ((__tmp195254
                                      (##structure-ref
                                       _%ctx193651%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp195254)))
                              _%outdir193668%_))
                           _%$e193665%_)
                          (path-expand
                           (_%file-name193658%_
                            (_%module-relative-path193655%_ _%ctx193651%_))
                           (_%module-source-directory193656%_
                            _%ctx193651%_)))))))
          (let ((_%path193661%_ (_%file-path193659%_)))
            (let ((__tmp195255
                   (lambda ()
                     (let ((__tmp195256 (path-directory _%path193661%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195256)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195255))
            _%path193661%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193632%_)
        (letrec ((_%file-name193634%_
                  (lambda (_%id193649%_)
                    (let ((__tmp195257 (gxc#static-module-name _%id193649%_)))
                      (declare (not safe))
                      (##string-append __tmp195257 '".scm"))))
                 (_%file-path193635%_
                  (lambda ()
                    (let* ((_%file193641%_
                            (_%file-name193634%_
                             (##structure-ref
                              _%ctx193632%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e193643%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193643%_
                          ((lambda (_%outdir193646%_)
                             (path-expand
                              _%file193641%_
                              (path-expand '"static" _%outdir193646%_)))
                           _%$e193643%_)
                          (path-expand _%file193641%_ '"static"))))))
          (let ((_%path193637%_ (_%file-path193635%_)))
            (let ((__tmp195258
                   (lambda ()
                     (let ((__tmp195259 (path-directory _%path193637%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195259)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195258))
            _%path193637%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193625%_ _%opts193626%_)
        (let ((_%$e193628%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193626%_))))
          (if _%$e193628%_
              (values _%$e193628%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx193625%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr193615%_)
        (if (string? _%idstr193615%_)
            (let* ((_%str193618%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr193615%_)))
                   (_%strs193620%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str193618%_ '#\/))))
              (declare (not safe))
              (string-join _%strs193620%_ '"__"))
            (if (symbol? _%idstr193615%_)
                (gxc#static-module-name (symbol->string _%idstr193615%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193615%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp195260
               (let ((__tmp195261 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp195261 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp195260))))
    (define gxc#invoke__%
      (lambda (_%@@keywords193579%_
               _%stdout-redirection193575193580%_
               _%stderr-redirection193576193582%_
               _%program193584%_
               _%args193585%_)
        (let* ((_%stdout-redirection193587%_
                (if (eq? _%stdout-redirection193575193580%_ absent-value)
                    '#f
                    _%stdout-redirection193575193580%_))
               (_%stderr-redirection193589%_
                (if (eq? _%stderr-redirection193576193582%_ absent-value)
                    '#f
                    _%stderr-redirection193576193582%_)))
          (let ((__tmp195262 (cons _%program193584%_ _%args193585%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp195262))
          (let* ((_%proc193591%_
                  (open-process
                   (cons 'path:
                         (cons _%program193584%_
                               (cons 'arguments:
                                     (cons _%args193585%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193587%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193596%_
                  (if (or _%stdout-redirection193587%_
                          _%stderr-redirection193589%_)
                      (read-line _%proc193591%_ '#f)
                      '#f))
                 (_%status193599%_ (process-status _%proc193591%_)))
            (let () (declare (not safe)) (##close-port _%proc193591%_))
            (if (zero? _%status193599%_)
                '#!void
                (begin
                  (display _%output193596%_)
                  (let ((__tmp195263 (cons _%program193584%_ _%args193585%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp195263
                     _%status193599%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193604%_ . _%args193605%_)
        (apply gxc#invoke__%
               _%@@keywords193604%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193604%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193604%_
                  'stderr-redirection:
                  absent-value))
               _%args193605%_)))
    (define gxc#invoke
      (lambda _%args193577193611%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193577193611%_)))))
