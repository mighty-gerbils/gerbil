(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712643214)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp195270 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp195270))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp195271 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp195271))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195127%_ _%fun195128%_)
        (with-output-to-file
         (cons 'path: (cons _%path195127%_ gxc#scheme-file-settings))
         _%fun195128%_)))
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
      (lambda (_%gerbil-libdir195122%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195122%_)))
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
      (lambda (_%dir195120%_) (delete-file-or-directory _%dir195120%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195093%_ _%opts195094%_)
        (if (string? _%srcpath195093%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195093%_)))
        (let ((_%outdir195096%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195094%_)))
              (_%invoke-gsc?195097%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195094%_)))
              (_%gsc-options195098%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195094%_)))
              (_%keep-scm?195099%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195094%_)))
              (_%verbosity195100%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195094%_)))
              (_%optimize195101%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195094%_)))
              (_%debug195102%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195094%_)))
              (_%gen-ssxi195103%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195094%_)))
              (_%parallel?195104%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts195094%_))))
          (if _%outdir195096%_
              (let ((__tmp195272
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195096%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195272))
              '#!void)
          (if _%optimize195101%_
              (let ((__tmp195273
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195273))
              '#!void)
          (let ((__tmp195276
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195093%_))
                   (gxc#compile-top-module
                    (let ((__tmp195277
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath195093%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195277)))))
                (__tmp195275 (gxc#compile-timestamp))
                (__tmp195274
                 (cons 'compile-module (cons _%srcpath195093%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195276
             gxc#current-compile-output-dir
             _%outdir195096%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195097%_
             gxc#current-compile-gsc-options
             _%gsc-options195098%_
             gxc#current-compile-keep-scm
             _%keep-scm?195099%_
             gxc#current-compile-verbose
             _%verbosity195100%_
             gxc#current-compile-optimize
             _%optimize195101%_
             gxc#current-compile-debug
             _%debug195102%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195103%_
             gxc#current-compile-timestamp
             __tmp195275
             gxc#current-compile-context
             __tmp195274
             gxc#current-compile-parallel
             _%parallel?195104%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195113%_)
        (let ((_%opts195115%_ '()))
          (gxc#compile-module__% _%srcpath195113%_ _%opts195115%_))))
    (define gxc#compile-module
      (lambda _g195279_
        (let ((_g195278_ (let () (declare (not safe)) (##length _g195279_))))
          (cond ((let () (declare (not safe)) (##fx= _g195278_ 1))
                 (apply gxc#compile-module__0 _g195279_))
                ((let () (declare (not safe)) (##fx= _g195278_ 2))
                 (apply gxc#compile-module__% _g195279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g195279_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195068%_ _%opts195069%_)
        (if (string? _%srcpath195068%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195068%_)))
        (let ((_%outdir195071%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195069%_)))
              (_%invoke-gsc?195072%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195069%_)))
              (_%gsc-options195073%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195069%_)))
              (_%keep-scm?195074%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195069%_)))
              (_%verbosity195075%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195069%_)))
              (_%debug195076%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195069%_)))
              (_%parallel?195077%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts195069%_))))
          (if _%outdir195071%_
              (let ((__tmp195280
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195071%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195280))
              '#!void)
          (let ((__tmp195283
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195068%_))
                   (gxc#compile-executable-module
                    (let ((__tmp195284
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath195068%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195284))
                    _%opts195069%_)))
                (__tmp195282 (gxc#compile-timestamp))
                (__tmp195281 (cons 'compile-exe (cons _%srcpath195068%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195283
             gxc#current-compile-output-dir
             _%outdir195071%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195072%_
             gxc#current-compile-gsc-options
             _%gsc-options195073%_
             gxc#current-compile-keep-scm
             _%keep-scm?195074%_
             gxc#current-compile-verbose
             _%verbosity195075%_
             gxc#current-compile-debug
             _%debug195076%_
             gxc#current-compile-timestamp
             __tmp195282
             gxc#current-compile-context
             __tmp195281
             gxc#current-compile-parallel
             _%parallel?195077%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195085%_)
        (let ((_%opts195087%_ '()))
          (gxc#compile-exe__% _%srcpath195085%_ _%opts195087%_))))
    (define gxc#compile-exe
      (lambda _g195286_
        (let ((_g195285_ (let () (declare (not safe)) (##length _g195286_))))
          (cond ((let () (declare (not safe)) (##fx= _g195285_ 1))
                 (apply gxc#compile-exe__0 _g195286_))
                ((let () (declare (not safe)) (##fx= _g195285_ 2))
                 (apply gxc#compile-exe__% _g195286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g195286_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195064%_ _%opts195065%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195065%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx195064%_
             _%opts195065%_)
            (gxc#compile-executable-module/separate
             _%ctx195064%_
             _%opts195065%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194854%_ _%opts194855%_)
        (letrec ((_%generate-stub194857%_
                  (lambda (_%builtin-modules195060%_)
                    (let ((_%mod-main195062%_
                           (gxc#find-runtime-symbol _%ctx194854%_ 'main)))
                      (let ((__tmp195287
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules195060%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp195287))
                      (let ((__tmp195288
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195062%_
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
                        (##write __tmp195288))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194858%_
                  (lambda (_%gerbil-libdir195058%_)
                    (let ((__tmp195289
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir195058%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp195289 read))))
                 (_%replace-extension194859%_
                  (lambda (_%path195055%_ _%ext195056%_)
                    (string-append
                     (path-strip-extension _%path195055%_)
                     _%ext195056%_)))
                 (_%userlib-module?194860%_
                  (lambda (_%ctx195053%_)
                    (if (not (_%exclude-module?194862%_ _%ctx195053%_))
                        (not (_%libgerbil-module?194861%_ _%ctx195053%_))
                        '#f)))
                 (_%libgerbil-module?194861%_
                  (lambda (_%ctx195046%_)
                    (let ((_%id-str195048%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195046%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?194862%_ _%id-str195048%_))
                          (let ((_%$e195050%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195048%_))))
                            (if _%$e195050%_
                                _%$e195050%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str195048%_))))
                          '#f))))
                 (_%exclude-module?194862%_
                  (lambda (_%ctx-or-str195042%_)
                    (let ((_%str195044%_
                           (if (string? _%ctx-or-str195042%_)
                               _%ctx-or-str195042%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str195042%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str195044%_))))
                 (_%not-file-empty?194863%_
                  (lambda (_%path195040%_)
                    (not (gxc#file-empty? _%path195040%_))))
                 (_%fold-libgerbil-runtime-scm194864%_
                  (lambda (_%gerbil-staticdir195033%_ _%libgerbil-scm195034%_)
                    (let ((_%gerbil-runtime-scm195038%_
                           (let ((__tmp195290
                                  (lambda (_%rtm195036%_)
                                    (path-expand
                                     (let ((__tmp195291
                                            (let ((__tmp195292
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm195036%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp195292
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp195291 '".scm"))
                                     _%gerbil-staticdir195033%_))))
                             (declare (not safe))
                             (##map __tmp195290 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates194865%_
                       (append _%gerbil-runtime-scm195038%_
                               _%libgerbil-scm195034%_)))))
                 (_%remove-duplicates194865%_
                  (lambda (_%strlst194993%_)
                    (let _%loop194995%_ ((_%rest194997%_ _%strlst194993%_)
                                         (_%result194998%_ '()))
                      (let* ((_%rest194999195007%_ _%rest194997%_)
                             (_%else195001195015%_
                              (lambda () (reverse! _%result194998%_)))
                             (_%K195003195021%_
                              (lambda (_%rest195018%_ _%path195019%_)
                                (if (member _%path195019%_ _%result194998%_)
                                    (_%loop194995%_
                                     _%rest195018%_
                                     _%result194998%_)
                                    (_%loop194995%_
                                     _%rest195018%_
                                     (cons _%path195019%_
                                           _%result194998%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest194999195007%_))
                            (let ((_%hd195004195024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest194999195007%_)))
                                  (_%tl195005195026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest194999195007%_))))
                              (let* ((_%path195029%_ _%hd195004195024%_)
                                     (_%rest195031%_ _%tl195005195026%_))
                                (_%K195003195021%_
                                 _%rest195031%_
                                 _%path195029%_)))
                            (_%else195001195015%_))))))
                 (_%compile-stub194866%_
                  (lambda (_%output-scm194873%_ _%output-bin194874%_)
                    (let* ((_%gerbil-home194876%_
                            (let ((__tmp195293
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195293)))
                           (_%gerbil-libdir194878%_
                            (path-expand '"lib" _%gerbil-home194876%_))
                           (_%gerbil-staticdir194880%_
                            (path-expand '"static" _%gerbil-libdir194878%_))
                           (_%deps194882%_
                            (gxc#find-runtime-module-deps _%ctx194854%_))
                           (_%libgerbil-deps194884%_
                            (filter _%libgerbil-module?194861%_
                                    _%deps194882%_))
                           (_%libgerbil-scm194886%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps194884%_)))
                           (_%libgerbil-scm194888%_
                            (_%fold-libgerbil-runtime-scm194864%_
                             _%gerbil-staticdir194880%_
                             _%libgerbil-scm194886%_))
                           (_%libgerbil-c194894%_
                            (map (lambda (_%g194889194891%_)
                                   (_%replace-extension194859%_
                                    _%g194889194891%_
                                    '".c"))
                                 _%libgerbil-scm194888%_))
                           (_%libgerbil-o194900%_
                            (map (lambda (_%g194895194897%_)
                                   (_%replace-extension194859%_
                                    _%g194895194897%_
                                    '".o"))
                                 _%libgerbil-scm194888%_))
                           (_%src-deps194902%_
                            (filter _%userlib-module?194860%_ _%deps194882%_))
                           (_%src-deps-scm194904%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps194902%_)))
                           (_%src-deps-scm194906%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194863%_
                               _%src-deps-scm194904%_)))
                           (_%src-deps-scm194908%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194906%_)))
                           (_%src-deps-c194914%_
                            (let ((__tmp195294
                                   (lambda (_%g194909194911%_)
                                     (_%replace-extension194859%_
                                      _%g194909194911%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp195294 _%src-deps-scm194908%_)))
                           (_%src-deps-o194920%_
                            (let ((__tmp195295
                                   (lambda (_%g194915194917%_)
                                     (_%replace-extension194859%_
                                      _%g194915194917%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp195295 _%src-deps-scm194908%_)))
                           (_%src-bin-scm194922%_
                            (gxc#find-static-module-file _%ctx194854%_))
                           (_%src-bin-scm194924%_
                            (path-expand _%src-bin-scm194922%_))
                           (_%src-bin-c194926%_
                            (_%replace-extension194859%_
                             _%src-bin-scm194924%_
                             '".c"))
                           (_%src-bin-o194928%_
                            (_%replace-extension194859%_
                             _%src-bin-scm194924%_
                             '".o"))
                           (_%output-bin194930%_
                            (path-expand _%output-bin194874%_))
                           (_%output-scm194932%_
                            (path-expand _%output-scm194873%_))
                           (_%output-c194934%_
                            (_%replace-extension194859%_
                             _%output-scm194932%_
                             '".c"))
                           (_%output-o194936%_
                            (_%replace-extension194859%_
                             _%output-scm194932%_
                             '".o"))
                           (_%output_-c194938%_
                            (_%replace-extension194859%_
                             _%output-scm194932%_
                             '"_.c"))
                           (_%output_-o194940%_
                            (_%replace-extension194859%_
                             _%output-scm194932%_
                             '"_.o"))
                           (_%gsc-link-opts194942%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194944%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts194946%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir194880%_))
                           (_%output-ld-opts194948%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts194950%_
                            (_%get-libgerbil-ld-opts194858%_
                             _%gerbil-libdir194878%_))
                           (_%rpath194952%_
                            (gxc#gerbil-rpath _%gerbil-libdir194878%_))
                           (_%builtin-modules194956%_
                            (_%remove-duplicates194865%_
                             (let ((__tmp195296
                                    (let ((__tmp195298
                                           (lambda (_%mod194954%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod194954%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp195297
                                           (cons _%ctx194854%_
                                                 _%deps194882%_)))
                                      (declare (not safe))
                                      (##map __tmp195298 __tmp195297))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp195296)))))
                      (letrec ((_%compile-obj194959%_
                                (lambda (_%scm-path194966%_ _%c-path194967%_)
                                  (let* ((_%o-path194969%_
                                          (_%replace-extension194859%_
                                           _%c-path194967%_
                                           '".o"))
                                         (_%lock194971%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path194969%_
                                             '".lock")))
                                         (_%locked194973%_ '#f)
                                         (_%unlock194976%_
                                          (lambda ()
                                            (close-port _%locked194973%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock194971%_)))))
                                    (let _%retry194979%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock194971%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry194979%_))
                                          (begin
                                            (set! _%locked194973%_
                                                  (let ((__tmp195299
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock194971%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp195299)))
                                            (if _%locked194973%_
                                                '#!void
                                                (_%retry194979%_)))))
                                    (let ((__tmp195301
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path194969%_)))
                                                     (not _%scm-path194966%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path194966%_
                                                        _%o-path194969%_)))
                                                 (let ((_%gsc-cc-opts194990%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp195302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195303 (cons _%c-path194967%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195303
                            _%gsc-static-opts194946%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195302 _%gsc-cc-opts194990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp195300
                                           (lambda () (_%unlock194976%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp195301
                                       __tmp195300))))))
                        (let ((__tmp195304
                               (lambda ()
                                 (let ((__tmp195305
                                        (path-directory _%output-bin194930%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp195305)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp195304))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194932%_
                         (lambda ()
                           (_%generate-stub194857%_
                            _%builtin-modules194956%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it194964%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp195306
                                                   (let ((__tmp195307
                                                          (let ((__tmp195308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm194924%_
                               (cons _%output-scm194932%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195308 _%src-deps-scm194908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp195307
                                                      _%libgerbil-c194894%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp195306
                                               _%gsc-link-opts194942%_))))
                                     (for-each
                                      _%compile-obj194959%_
                                      (let ((__tmp195309
                                             (cons _%src-bin-scm194924%_
                                                   (cons _%output-scm194932%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195309
                                         _%src-deps-scm194908%_))
                                      (let ((__tmp195310
                                             (cons _%src-bin-c194926%_
                                                   (cons _%output-c194934%_
                                                         (cons _%output_-c194938%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195310
                                         _%src-deps-c194914%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin194930%_
                                                        (let ((__tmp195311
                                                               (cons _%src-bin-o194928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o194936%_
                                   (cons _%output_-o194940%_
                                         (let ((__tmp195312
                                                (let ((__tmp195313
                                                       (let ((__tmp195315
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir194878%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts194950%_))))
                     (__tmp195314
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath194952%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp195315 __tmp195314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195313
                                                   _%output-ld-opts194948%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195312
                                            _%libgerbil-o194900%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp195311 _%src-deps-o194920%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp195316
                                            (cons _%output-c194934%_
                                                  (cons _%output_-c194938%_
                                                        (cons _%output-o194936%_
                                                              (cons _%output_-o194940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp195316)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it194964%_))
                                  (_%compile-it194964%_)))
                            '#!void))))))
          (let* ((_%output-bin194868%_
                  (gxc#compile-exe-output-file _%ctx194854%_ _%opts194855%_))
                 (_%output-scm194870%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194868%_ '"__exe.scm"))))
            (_%compile-stub194866%_
             _%output-scm194870%_
             _%output-bin194868%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194676%_ _%opts194677%_)
        (letrec ((_%reset-declare194679%_
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
                 (_%generate-stub194680%_
                  (lambda (_%deps194845%_)
                    (let ((_%mod-main194847%_
                           (gxc#find-runtime-symbol _%ctx194676%_ 'main))
                          (_%reset-decl194848%_ (_%reset-declare194679%_))
                          (_%user-decl194849%_ (_%user-declare194681%_)))
                      (for-each
                       (lambda (_%dep194851%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194848%_))
                         (newline)
                         (if _%user-decl194849%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194849%_))
                               (newline))
                             '#!void)
                         (let ((__tmp195317
                                (cons 'include (cons _%dep194851%_ '()))))
                           (declare (not safe))
                           (##write __tmp195317))
                         (newline))
                       _%deps194845%_)
                      (let ((__tmp195318
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp195318))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194681%_
                  (lambda ()
                    (let* ((_%gsc-opts194750%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194677%_)))
                           (_%gsc-prelude194752%_
                            (if _%gsc-opts194750%_
                                (member '"-prelude" _%gsc-opts194750%_)
                                '#f))
                           (_%gsc-prelude194754%_
                            (if _%gsc-prelude194752%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194752%_)))
                                '#f)))
                      (let _%lp194757%_ ((_%rest194759%_
                                          (cons _%gsc-prelude194754%_ '()))
                                         (_%user-decls194760%_ '()))
                        (let* ((_%rest194761194769%_ _%rest194759%_)
                               (_%else194763194777%_
                                (lambda ()
                                  (if (null? _%user-decls194760%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194760%_)))))
                               (_%K194765194833%_
                                (lambda (_%rest194780%_ _%expr194781%_)
                                  (let* ((_%expr194782194794%_ _%expr194781%_)
                                         (_%else194785194802%_
                                          (lambda ()
                                            (_%lp194757%_
                                             _%rest194780%_
                                             _%user-decls194760%_))))
                                    (let ((_%K194790194823%_
                                           (lambda (_%decls194821%_)
                                             (_%lp194757%_
                                              _%rest194780%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls194760%_
                                                 _%decls194821%_)))))
                                          (_%K194787194808%_
                                           (lambda (_%exprs194806%_)
                                             (_%lp194757%_
                                              (append _%exprs194806%_
                                                      _%rest194780%_)
                                              _%user-decls194760%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194782194794%_))
                                          (let ((_%tl194792194828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194782194794%_)))
                                                (_%hd194791194826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194782194794%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194791194826%_
                                                         'declare))
                                                (let ((_%decls194831%_
                                                       _%tl194792194828%_))
                                                  (_%K194790194823%_
                                                   _%decls194831%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194791194826%_
                                                             'begin))
                                                    (let ((_%exprs194816%_
                                                           _%tl194792194828%_))
                                                      (_%K194787194808%_
                                                       _%exprs194816%_))
                                                    (_%else194785194802%_))))
                                          (_%else194785194802%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194761194769%_))
                              (let ((_%hd194766194836%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194761194769%_)))
                                    (_%tl194767194838%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194761194769%_))))
                                (let* ((_%expr194841%_ _%hd194766194836%_)
                                       (_%rest194843%_ _%tl194767194838%_))
                                  (_%K194765194833%_
                                   _%rest194843%_
                                   _%expr194841%_)))
                              (_%else194763194777%_)))))))
                 (_%compile-stub194682%_
                  (lambda (_%output-scm194689%_ _%output-bin194690%_)
                    (let* ((_%gerbil-home194692%_
                            (let ((__tmp195319
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195319)))
                           (_%gerbil-libdir194694%_
                            (path-expand '"lib" _%gerbil-home194692%_))
                           (_%runtime194696%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194698%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194692%_))
                           (_%include-gambit-sharp194700%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194698%_
                               '"\")")))
                           (_%bin-scm194702%_
                            (gxc#find-static-module-file _%ctx194676%_))
                           (_%deps194704%_
                            (gxc#find-runtime-module-deps _%ctx194676%_))
                           (_%deps194706%_
                            (map gxc#find-static-module-file _%deps194704%_))
                           (_%deps194711%_
                            (let ((__tmp195320
                                   (lambda (_%$obj194708%_)
                                     (not (gxc#file-empty? _%$obj194708%_)))))
                              (declare (not safe))
                              (##filter __tmp195320 _%deps194706%_)))
                           (_%deps194715%_
                            (let ((__tmp195321
                                   (lambda (_%f194713%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f194713%_
                                             _%runtime194696%_))))))
                              (declare (not safe))
                              (##filter __tmp195321 _%deps194711%_)))
                           (_%output-base194717%_
                            (let ((__tmp195322
                                   (path-strip-extension
                                    _%output-scm194689%_)))
                              (declare (not safe))
                              (##string-append __tmp195322)))
                           (_%output-c194719%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194717%_ '".c")))
                           (_%output-o194721%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194717%_ '".o")))
                           (_%output-c_194723%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194717%_ '"_.c")))
                           (_%output-o_194725%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194717%_ '"_.o")))
                           (_%gsc-link-opts194727%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194729%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts194731%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir194694%_)))
                           (_%output-ld-opts194733%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros194735%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194700%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194700%_
                                            '()))))
                           (_%gsc-link-opts194737%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194727%_
                               _%gsc-gx-macros194735%_)))
                           (_%rpath194739%_
                            (gxc#gerbil-rpath _%gerbil-libdir194694%_))
                           (_%default-ld-options194741%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp195323
                             (lambda ()
                               (let ((__tmp195324
                                      (path-directory _%output-bin194690%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195324)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195323))
                      (gxc#with-output-to-scheme-file
                       _%output-scm194689%_
                       (lambda ()
                         (_%generate-stub194680%_
                          (let ((__tmp195325
                                 (let ((__tmp195326
                                        (cons _%bin-scm194702%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp195326
                                    _%deps194715%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp195325 _%runtime194696%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it194747%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_194723%_
                                                      (let ((__tmp195327
                                                             (cons _%output-scm194689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195327 _%gsc-link-opts194737%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp195328
                                                 (let ((__tmp195329
                                                        (cons _%output-c194719%_
                                                              (cons _%output-c_194723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp195329
                                                    _%gsc-static-opts194731%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195328
                                             _%gsc-cc-opts194729%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin194690%_
                                                      (cons _%output-o194721%_
                                                            (cons _%output-o_194725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195330
                                 (let ((__tmp195332
                                        (cons '"-L"
                                              (cons _%gerbil-libdir194694%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options194741%_))))
                                       (__tmp195331
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath194739%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp195332 __tmp195331))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp195330
                             _%output-ld-opts194733%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it194747%_))
                                (_%compile-it194747%_)))
                          '#!void)))))
          (let* ((_%output-bin194684%_
                  (gxc#compile-exe-output-file _%ctx194676%_ _%opts194677%_))
                 (_%output-scm194686%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194684%_ '"__exe.scm"))))
            (_%compile-stub194682%_
             _%output-scm194686%_
             _%output-bin194684%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx194625%_ _%id194626%_)
        (let ((_%$e194672%_
               (let ((__tmp195334
                      (lambda (_%e194627194629%_)
                        (let* ((_%g194631194641%_ _%e194627194629%_)
                               (_%else194633194649%_ (lambda () '#f))
                               (_%K194635194653%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194631194641%_
                                 'gx#module-export::t))
                              (let* ((_%e194636194656%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194631194641%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194637194659%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194631194641%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194638194662%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194631194641%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194638194662%_ '0))
                                    (let ((_%e194639194665%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194631194641%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194667194669%_)
                                             (eq? _%g194667194669%_
                                                  _%id194626%_))
                                           _%e194639194665%_)
                                          (_%K194635194653%_)
                                          (_%else194633194649%_)))
                                    (_%else194633194649%_)))
                              (_%else194633194649%_)))))
                     (__tmp195333
                      (##structure-ref
                       _%ctx194625%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp195334 __tmp195333))))
          (if _%$e194672%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194672%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194616%_ _%id194617%_)
        (let ((_%$e194619%_
               (gxc#find-export-binding _%ctx194616%_ _%id194617%_)))
          (if _%$e194619%_
              ((lambda (_%bind194622%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194622%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194617%_)))
                 (##structure-ref _%bind194622%_ '1 gx#binding::t '#f))
               _%$e194619%_)
              (let ((__tmp195335
                     (##structure-ref
                      _%ctx194616%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp195335
                 _%id194617%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx194482%_)
        (letrec* ((_%ht194484%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template194485%_
                   (lambda (_%in194561%_ _%phi194562%_)
                     (let ((_%iphi194564%_
                            (fx+ _%phi194562%_
                                 (##direct-structure-ref
                                  _%in194561%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194565%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194561%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194567%_ ((_%rest194569%_ _%imports194565%_)
                                          (_%r194570%_ '()))
                         (let* ((_%rest194571194579%_ _%rest194569%_)
                                (_%else194573194587%_ (lambda () _%r194570%_))
                                (_%K194575194604%_
                                 (lambda (_%rest194590%_ _%in194591%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194591%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi194564%_))
                                           (_%lp194567%_
                                            _%rest194590%_
                                            (cons _%in194591%_ _%r194570%_))
                                           (_%lp194567%_
                                            _%rest194590%_
                                            _%r194570%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194591%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194595%_
                                                  (fx+ _%phi194562%_
                                                       (##direct-structure-ref
                                                        _%in194591%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194595%_))
                                                 (_%lp194567%_
                                                  _%rest194590%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in194591%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r194570%_))
                                                 (_%lp194567%_
                                                  _%rest194590%_
                                                  _%r194570%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194591%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194598%_
                                                      (fx+ _%iphi194564%_
                                                           (##direct-structure-ref
                                                            _%in194591%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194598%_))
                                                     (_%lp194567%_
                                                      _%rest194590%_
                                                      (cons (##direct-structure-ref
                                                             _%in194591%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r194570%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194598%_))
                                                         (_%lp194567%_
                                                          _%rest194590%_
                                                          (let ((__tmp195336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template194485%_
                          _%in194591%_
                          _%iphi194564%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r194570%_ __tmp195336)))
                 (_%lp194567%_ _%rest194590%_ _%r194570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp194567%_
                                                _%rest194590%_
                                                _%r194570%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194571194579%_))
                               (let ((_%hd194576194607%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194571194579%_)))
                                     (_%tl194577194609%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194571194579%_))))
                                 (let* ((_%in194612%_ _%hd194576194607%_)
                                        (_%rest194614%_ _%tl194577194609%_))
                                   (_%K194575194604%_
                                    _%rest194614%_
                                    _%in194612%_)))
                               (_%else194573194587%_)))))))
                  (_%find-deps194486%_
                   (lambda (_%rest194494%_ _%deps194495%_)
                     (let* ((_%rest194496194504%_ _%rest194494%_)
                            (_%else194498194512%_ (lambda () _%deps194495%_))
                            (_%K194500194549%_
                             (lambda (_%rest194515%_ _%hd194516%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd194516%_
                                      'gx#module-context::t))
                                   (let ((_%id194519%_
                                          (##structure-ref
                                           _%hd194516%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports194520%_
                                          (##structure-ref
                                           _%hd194516%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht194484%_
                                            _%id194519%_))
                                         (_%find-deps194486%_
                                          _%rest194515%_
                                          _%deps194495%_)
                                         (let ((_%$e194523%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd194516%_))))
                                           (if _%$e194523%_
                                               ((lambda (_%pre194526%_)
                                                  (let ((_%xdeps194528%_
                                                         (_%find-deps194486%_
                                                          (cons _%pre194526%_
                                                                _%imports194520%_)
                                                          _%deps194495%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht194484%_
                                                       _%id194519%_
                                                       _%hd194516%_))
                                                    (_%find-deps194486%_
                                                     _%rest194515%_
                                                     (cons _%hd194516%_
                                                           _%xdeps194528%_))))
                                                _%$e194523%_)
                                               (let ((_%xdeps194531%_
                                                      (_%find-deps194486%_
                                                       _%imports194520%_
                                                       _%deps194495%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht194484%_
                                                    _%id194519%_
                                                    _%hd194516%_))
                                                 (_%find-deps194486%_
                                                  _%rest194515%_
                                                  (cons _%hd194516%_
                                                        _%xdeps194531%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd194516%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194534%_
                                              (##structure-ref
                                               _%hd194516%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht194484%_
                                                _%id194534%_))
                                             (_%find-deps194486%_
                                              _%rest194515%_
                                              _%deps194495%_)
                                             (let ((_%xdeps194538%_
                                                    (_%find-deps194486%_
                                                     (##structure-ref
                                                      _%hd194516%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps194495%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht194484%_
                                                      _%id194534%_))
                                                   (_%find-deps194486%_
                                                    _%rest194515%_
                                                    _%xdeps194538%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht194484%_
                                                        _%id194534%_
                                                        _%hd194516%_))
                                                     (_%find-deps194486%_
                                                      _%rest194515%_
                                                      (cons _%hd194516%_
                                                            _%xdeps194538%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd194516%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd194516%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps194486%_
                                                (cons (##direct-structure-ref
                                                       _%hd194516%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest194515%_)
                                                _%deps194495%_)
                                               (_%find-deps194486%_
                                                _%rest194515%_
                                                _%deps194495%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd194516%_
                                                  'gx#module-export::t))
                                               (_%find-deps194486%_
                                                (cons (##direct-structure-ref
                                                       _%hd194516%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest194515%_)
                                                _%deps194495%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd194516%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd194516%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps194486%_
                (cons (##direct-structure-ref
                       _%hd194516%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest194515%_)
                _%deps194495%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd194516%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps194545%_
                          (_%import-set-template194485%_ _%hd194516%_ '0)))
                     (_%find-deps194486%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest194515%_ _%xdeps194545%_))
                      _%deps194495%_))
                   (_%find-deps194486%_ _%rest194515%_ _%deps194495%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd194516%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest194496194504%_))
                           (let ((_%hd194501194552%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest194496194504%_)))
                                 (_%tl194502194554%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest194496194504%_))))
                             (let* ((_%hd194557%_ _%hd194501194552%_)
                                    (_%rest194559%_ _%tl194502194554%_))
                               (_%K194500194549%_
                                _%rest194559%_
                                _%hd194557%_)))
                           (_%else194498194512%_))))))
          (let ((__tmp195337
                 (filter gx#expander-context-id
                         (_%find-deps194486%_
                          (let ((_%$e194488%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx194482%_))))
                            (if _%$e194488%_
                                ((lambda (_%pre194491%_)
                                   (cons _%pre194491%_
                                         (##structure-ref
                                          _%ctx194482%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e194488%_)
                                (##structure-ref
                                 _%ctx194482%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp195337)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx194412%_)
        (let* ((_%context-id194414%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx194412%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx194412%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx194412%_)))
               (_%scm194416%_
                (let ((__tmp195338
                       (gxc#static-module-name _%context-id194414%_)))
                  (declare (not safe))
                  (##string-append __tmp195338 '".scm")))
               (_%dirs194418%_ (let () (declare (not safe)) (load-path)))
               (_%dirs194424%_
                (let ((_%user-libpath194420%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath194420%_
                      (let ((_%user-libpath194422%_
                             (path-expand '"lib" _%user-libpath194420%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath194422%_ _%dirs194418%_))
                            _%dirs194418%_
                            (cons _%user-libpath194422%_ _%dirs194418%_)))
                      _%dirs194418%_)))
               (_%dirs194434%_
                (let ((_%$e194426%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e194426%_
                      ((lambda (_%g194428194430%_)
                         (cons _%g194428194430%_ _%dirs194424%_))
                       _%$e194426%_)
                      _%dirs194424%_)))
               (_%dirs194440%_
                (map (lambda (_%g194435194437%_)
                       (path-expand '"static" _%g194435194437%_))
                     _%dirs194434%_)))
          (let _%lp194443%_ ((_%rest194445%_ _%dirs194440%_))
            (let* ((_%rest194446194454%_ _%rest194445%_)
                   (_%else194448194462%_
                    (lambda ()
                      (let ((__tmp195339
                             (##structure-ref
                              _%ctx194412%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp195339
                         _%scm194416%_))))
                   (_%K194450194470%_
                    (lambda (_%rest194465%_ _%dir194466%_)
                      (let ((_%path194468%_
                             (path-expand _%scm194416%_ _%dir194466%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194468%_))
                            _%path194468%_
                            (_%lp194443%_ _%rest194465%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest194446194454%_))
                  (let ((_%hd194451194473%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194446194454%_)))
                        (_%tl194452194475%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194446194454%_))))
                    (let* ((_%dir194478%_ _%hd194451194473%_)
                           (_%rest194480%_ _%tl194452194475%_))
                      (_%K194450194470%_ _%rest194480%_ _%dir194478%_)))
                  (_%else194448194462%_)))))))
    (define gxc#file-empty?
      (lambda (_%path194410%_)
        (zero? (let ((__tmp195340 (file-info _%path194410%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp195340)))))
    (define gxc#compile-top-module
      (lambda (_%ctx194406%_)
        (let ((__tmp195344
               (lambda ()
                 (let ((__tmp195345
                        (##structure-ref
                         _%ctx194406%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp195345))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp195346
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx194406%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp195346))
                     '#!void)
                 (gxc#collect-bindings _%ctx194406%_)
                 (gxc#compile-runtime-code _%ctx194406%_)
                 (gxc#compile-meta-code _%ctx194406%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx194406%_)
                     '#!void)))
              (__tmp195343
               (let ((__obj195268
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj195268)
                 __obj195268))
              (__tmp195342 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195341
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
           __tmp195344
           gx#current-expander-context
           _%ctx194406%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp195343
           gxc#current-compile-runtime-sections
           __tmp195342
           gxc#current-compile-runtime-names
           __tmp195341))))
    (define gxc#collect-bindings
      (lambda (_%ctx194404%_)
        (let ((__tmp195347
               (##structure-ref _%ctx194404%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp195347))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx194352%_)
        (letrec ((_%compile1194354%_
                  (lambda (_%ctx194393%_)
                    (let* ((_%code194395%_
                            (##structure-ref
                             _%ctx194393%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm194399%_
                            (let ((_%idstr194397%_
                                   (let ((__tmp195348
                                          (##structure-ref
                                           _%ctx194393%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp195348))))
                              (declare (not safe))
                              (##string-append _%idstr194397%_ '"~0")))
                           (_%rtc?194401%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code194395%_))))
                      (if _%rtc?194401%_
                          (let ((__tmp195349
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp195349
                             _%ctx194393%_
                             _%rtm194399%_))
                          '#!void)
                      (_%generate-runtime-code194356%_
                       _%ctx194393%_
                       _%code194395%_
                       (if _%rtc?194401%_ _%rtm194399%_ '#f)))))
                 (_%context-timestamp194355%_
                  (lambda (_%ctx194391%_)
                    (let ((__tmp195350
                           (let ((__tmp195351
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx194391%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp195351 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp195350))))
                 (_%generate-runtime-code194356%_
                  (lambda (_%ctx194363%_ _%code194364%_ _%rtm194365%_)
                    (let* ((_%runtime-code?194367%_ (if _%rtm194365%_ '#t '#f))
                           (_%lifts194369%_ (box '()))
                           (_%runtime-code194372%_
                            (if _%runtime-code?194367%_
                                (let ((__tmp195354
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code194364%_))))
                                      (__tmp195353
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp195352
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp195354
                                   gx#current-expander-context
                                   _%ctx194363%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts194369%_
                                   gxc#current-compile-marks
                                   __tmp195353
                                   gxc#current-compile-identifiers
                                   __tmp195352))
                                '#f))
                           (_%runtime-code194374%_
                            (if _%runtime-code?194367%_
                                (if (null? (unbox _%lifts194369%_))
                                    _%runtime-code194372%_
                                    (cons 'begin
                                          (let ((__tmp195356
                                                 (cons _%runtime-code194372%_
                                                       '()))
                                                (__tmp195355
                                                 (reverse (unbox _%lifts194369%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195356
                                             __tmp195355))))
                                '#f))
                           (_%runtime-code194376%_
                            (if _%runtime-code?194367%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp194355%_
                                                         _%ctx194363%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code194374%_ '())))
                                '#f))
                           (_%loader-code194379%_
                            (let ((__tmp195357
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code194364%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195357
                               gx#current-expander-context
                               _%ctx194363%_)))
                           (_%loader-code194381%_
                            (cons 'begin
                                  (cons _%loader-code194379%_
                                        (cons (if _%runtime-code?194367%_
                                                  (cons 'load-module
                                                        (cons _%rtm194365%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0194383%_
                            (gxc#compile-output-file _%ctx194363%_ '0 '".scm"))
                           (_%scmrt194385%_
                            (gxc#compile-output-file
                             _%ctx194363%_
                             '#f
                             '".scm"))
                           (_%scms194387%_
                            (gxc#compile-static-output-file _%ctx194363%_)))
                      (if _%runtime-code?194367%_
                          (gxc#compile-scm-file__0
                           _%scm0194383%_
                           _%runtime-code194376%_)
                          '#!void)
                      (let ((__tmp195358
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt194385%_
                                _%loader-code194381%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp195358
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (file-exists? _%scms194387%_)
                          (delete-file _%scms194387%_)
                          '#!void)
                      (if _%runtime-code?194367%_
                          (copy-file _%scm0194383%_ _%scms194387%_)
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms194387%_ void)))))))
          (let* ((_%all-modules194358%_
                  (cons _%ctx194352%_ (gxc#lift-nested-modules _%ctx194352%_)))
                 (__tmp195359
                  (lambda (_%ctx194360%_)
                    (let ((__tmp195360
                           (lambda () (_%compile1194354%_ _%ctx194360%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195360
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp195359 _%all-modules194358%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx194252%_)
        (letrec ((_%compile-ssi194254%_
                  (lambda (_%code194320%_)
                    (let* ((_%path194322%_
                            (gxc#compile-output-file
                             _%ctx194252%_
                             '#f
                             '".ssi"))
                           (_%prelude194334%_
                            (let* ((_%super194324%_
                                    (##structure-ref
                                     _%ctx194252%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e194326%_
                                    (##structure-ref
                                     _%super194324%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e194326%_
                                  ((lambda (_%g194328194330%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g194328194330%_)))
                                   _%$e194326%_)
                                  ':<root>)))
                           (_%ns194336%_
                            (##structure-ref
                             _%ctx194252%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr194338%_
                            (symbol->string
                             (##structure-ref
                              _%ctx194252%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg194346%_
                            (let ((_%$e194340%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr194338%_ '#\/))))
                              (if _%$e194340%_
                                  ((lambda (_%x194343%_)
                                     (let ((__tmp195361
                                            (substring
                                             _%idstr194338%_
                                             '0
                                             _%x194343%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp195361)))
                                   _%$e194340%_)
                                  '#f)))
                           (_%rt194348%_
                            (let ((__tmp195362
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp195362 _%ctx194252%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path194322%_))
                      (gxc#with-output-to-scheme-file
                       _%path194322%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude194334%_))
                         (if _%pkg194346%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg194346%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns194336%_))
                         (newline)
                         (pretty-print _%code194320%_)
                         (if _%rt194348%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt194348%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi194255%_
                  (lambda (_%part194260%_)
                    (let* ((_%part194261194274%_ _%part194260%_)
                           (_%E194263194278%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part194261194274%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K194264194289%_
                            (lambda (_%code194281%_
                                     _%n194282%_
                                     _%phi194283%_
                                     _%phi-ctx194284%_)
                              (let ((_%code194287%_
                                     (let ((__tmp195363
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code194281%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp195363
                                        gx#current-expander-context
                                        _%phi-ctx194284%_
                                        gx#current-expander-phi
                                        _%phi194283%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx194252%_
                                  _%n194282%_
                                  '".scm")
                                 _%code194287%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part194261194274%_))
                          (let ((_%hd194265194292%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part194261194274%_)))
                                (_%tl194266194294%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part194261194274%_))))
                            (let ((_%phi-ctx194297%_ _%hd194265194292%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194266194294%_))
                                  (let ((_%hd194267194299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194266194294%_)))
                                        (_%tl194268194301%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194266194294%_))))
                                    (let ((_%phi194304%_ _%hd194267194299%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl194268194301%_))
                                          (let ((_%hd194269194306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl194268194301%_)))
                                                (_%tl194270194308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl194268194301%_))))
                                            (let ((_%n194311%_
                                                   _%hd194269194306%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl194270194308%_))
                                                  (let ((_%hd194271194313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl194270194308%_)))
                                                        (_%tl194272194315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl194270194308%_))))
                                                    (let ((_%code194318%_
                                                           _%hd194271194313%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl194272194315%_))
                                                          (_%K194264194289%_
                                                           _%code194318%_
                                                           _%n194311%_
                                                           _%phi194304%_
                                                           _%phi-ctx194297%_)
                                                          (_%E194263194278%_))))
                                                  (_%E194263194278%_))))
                                          (_%E194263194278%_))))
                                  (_%E194263194278%_))))
                          (_%E194263194278%_))))))
          (let ((_g195364_ (gxc#generate-meta-code _%ctx194252%_)))
            (begin
              (let ((_g195365_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g195364_)
                           (##vector-length _g195364_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g195365_ 2)))
                    (error "Context expects 2 values" _g195365_)))
              (let ((_%ssi-code194257%_
                     (let () (declare (not safe)) (##vector-ref _g195364_ 0)))
                    (_%phi-code194258%_
                     (let () (declare (not safe)) (##vector-ref _g195364_ 1))))
                (begin
                  (_%compile-ssi194254%_ _%ssi-code194257%_)
                  (for-each _%compile-phi194255%_ _%phi-code194258%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx194234%_)
        (let* ((_%path194236%_
                (gxc#compile-output-file _%ctx194234%_ '#f '".ssxi.ss"))
               (_%code194238%_
                (let ((__tmp195366
                       (##structure-ref
                        _%ctx194234%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp195366)))
               (_%idstr194240%_
                (symbol->string
                 (##structure-ref
                  _%ctx194234%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg194248%_
                (let ((_%$e194242%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr194240%_ '#\/))))
                  (if _%$e194242%_
                      ((lambda (_%x194245%_)
                         (let ((__tmp195367
                                (substring _%idstr194240%_ '0 _%x194245%_)))
                           (declare (not safe))
                           (##string->symbol __tmp195367)))
                       _%$e194242%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path194236%_))
          (gxc#with-output-to-scheme-file
           _%path194236%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg194248%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg194248%_))
                 '#!void)
             (newline)
             (pretty-print _%code194238%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx194227%_)
        (let* ((_%state194229%_
                (let ((__obj195269
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj195269 _%ctx194227%_)
                  __obj195269))
               (_%ssi-code194231%_
                (let ((__tmp195368
                       (##structure-ref
                        _%ctx194227%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state194229%_
                   __tmp195368))))
          (values _%ssi-code194231%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state194229%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx194220%_)
        (let ((_%lifts194222%_ (box '())))
          (let ((__tmp195371
                 (lambda ()
                   (let ((_%code194225%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx194220%_))))
                     (if (null? (unbox _%lifts194222%_))
                         _%code194225%_
                         (cons 'begin
                               (let ((__tmp195373 (cons _%code194225%_ '()))
                                     (__tmp195372
                                      (reverse (unbox _%lifts194222%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195373 __tmp195372)))))))
                (__tmp195370
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp195369
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195371
             gxc#current-compile-lift
             _%lifts194222%_
             gxc#current-compile-marks
             __tmp195370
             gxc#current-compile-identifiers
             __tmp195369)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx194216%_)
        (let ((_%modules194218%_ (box '())))
          (let ((__tmp195374
                 (##structure-ref _%ctx194216%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules194218%_ __tmp195374))
          (reverse (unbox _%modules194218%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path194196%_ _%code194197%_ _%phi?194198%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path194196%_))
        (gxc#with-output-to-scheme-file
         _%path194196%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp195375
                                           (if _%phi?194198%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp195375)))))))
           (pretty-print _%code194197%_)))
        (let ((_%compile-it194202%_
               (lambda ()
                 (gxc#gsc-compile-file _%path194196%_ _%phi?194198%_))))
          (if (let () (declare (not safe)) (gxc#current-compile-parallel))
              (let ((__tmp195376
                     (cons 'compile-file (cons _%path194196%_ '()))))
                (declare (not safe))
                (gxc#add-compile-job!__% _%compile-it194202%_ __tmp195376))
              (_%compile-it194202%_)))))
    (define gxc#compile-scm-file__0
      (lambda (_%path194207%_ _%code194208%_)
        (let ((_%phi?194210%_ '#f))
          (gxc#compile-scm-file__%
           _%path194207%_
           _%code194208%_
           _%phi?194210%_))))
    (define gxc#compile-scm-file
      (lambda _g195378_
        (let ((_g195377_ (let () (declare (not safe)) (##length _g195378_))))
          (cond ((let () (declare (not safe)) (##fx= _g195377_ 2))
                 (apply gxc#compile-scm-file__0 _g195378_))
                ((let () (declare (not safe)) (##fx= _g195377_ 3))
                 (apply gxc#compile-scm-file__% _g195378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g195378_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?194097%_)
        (let _%lp194099%_ ((_%rest194101%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194102%_ '()))
          (let* ((_%rest194103194123%_ _%rest194101%_)
                 (_%else194107194131%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts194102%_)))
                        (reverse _%opts194102%_)))))
            (let ((_%K194117194174%_
                   (lambda (_%rest194172%_)
                     (_%lp194099%_ _%rest194172%_ _%opts194102%_)))
                  (_%K194112194156%_
                   (lambda (_%rest194154%_)
                     (_%lp194099%_ _%rest194154%_ _%opts194102%_)))
                  (_%K194109194138%_
                   (lambda (_%rest194135%_ _%opt194136%_)
                     (_%lp194099%_
                      _%rest194135%_
                      (cons _%opt194136%_ _%opts194102%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194103194123%_))
                  (let ((_%tl194119194179%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194103194123%_)))
                        (_%hd194118194177%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194103194123%_))))
                    (if (equal? _%hd194118194177%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194119194179%_))
                            (let* ((_%tl194121194182%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194119194179%_)))
                                   (_%rest194185%_ _%tl194121194182%_))
                              (_%K194117194174%_ _%rest194185%_))
                            (let ((_%opt194146%_ _%hd194118194177%_)
                                  (_%rest194148%_ _%tl194119194179%_))
                              (_%K194109194138%_
                               _%rest194148%_
                               _%opt194146%_)))
                        (if (equal? _%hd194118194177%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194119194179%_))
                                (let* ((_%tl194116194164%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194119194179%_)))
                                       (_%rest194167%_ _%tl194116194164%_))
                                  (_%K194112194156%_ _%rest194167%_))
                                (let ((_%opt194146%_ _%hd194118194177%_)
                                      (_%rest194148%_ _%tl194119194179%_))
                                  (_%K194109194138%_
                                   _%rest194148%_
                                   _%opt194146%_)))
                            (let ((_%opt194146%_ _%hd194118194177%_)
                                  (_%rest194148%_ _%tl194119194179%_))
                              (_%K194109194138%_
                               _%rest194148%_
                               _%opt194146%_)))))
                  (_%else194107194131%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?194191%_ '#f)) (gxc#gsc-link-options__% _%phi?194191%_))))
    (define gxc#gsc-link-options
      (lambda _g195380_
        (let ((_g195379_ (let () (declare (not safe)) (##length _g195380_))))
          (cond ((let () (declare (not safe)) (##fx= _g195379_ 0))
                 (apply gxc#gsc-link-options__0 _g195380_))
                ((let () (declare (not safe)) (##fx= _g195379_ 1))
                 (apply gxc#gsc-link-options__% _g195380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g195380_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords193946%_ _%static?193942193947%_ _%phi?193949%_)
        (let ((_%static?193951%_
               (if (eq? _%static?193942193947%_ absent-value)
                   '#f
                   _%static?193942193947%_)))
          (if _%phi?193949%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp193953%_ ((_%rest193955%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts193956%_ '()))
                (let* ((_%rest193957193983%_ _%rest193955%_)
                       (_%else193962193991%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts193956%_)))
                              (reverse! _%opts193956%_)))))
                  (let ((_%K193977194054%_
                         (lambda (_%rest194051%_ _%opt194052%_)
                           (if _%static?193951%_
                               (_%lp193953%_
                                _%rest194051%_
                                (cons _%opt194052%_
                                      (cons '"-cc-options" _%opts193956%_)))
                               (_%lp193953%_ _%rest194051%_ _%opts193956%_))))
                        (_%K193972194031%_
                         (lambda (_%rest194028%_ _%opt194029%_)
                           (_%lp193953%_
                            _%rest194028%_
                            (cons _%opt194029%_
                                  (cons '"-cc-options" _%opts193956%_)))))
                        (_%K193967194011%_
                         (lambda (_%rest194009%_)
                           (_%lp193953%_ _%rest194009%_ _%opts193956%_)))
                        (_%K193964193997%_
                         (lambda (_%rest193995%_)
                           (_%lp193953%_ _%rest193995%_ _%opts193956%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest193957193983%_))
                        (let ((_%tl193979194059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest193957193983%_)))
                              (_%hd193978194057%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest193957193983%_))))
                          (if (equal? _%hd193978194057%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193979194059%_))
                                  (let ((_%tl193981194064%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193979194059%_)))
                                        (_%hd193980194062%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193979194059%_))))
                                    (if (equal? _%hd193980194062%_ '"-Bstatic")
                                        (let ((_%opt194067%_
                                               _%hd193980194062%_)
                                              (_%rest194069%_
                                               _%tl193981194064%_))
                                          (_%K193977194054%_
                                           _%rest194069%_
                                           _%opt194067%_))
                                        (let ((_%opt194044%_
                                               _%hd193980194062%_)
                                              (_%rest194046%_
                                               _%tl193981194064%_))
                                          (_%K193972194031%_
                                           _%rest194046%_
                                           _%opt194044%_))))
                                  (let ((_%rest194003%_ _%tl193979194059%_))
                                    (_%K193964193997%_ _%rest194003%_)))
                              (if (equal? _%hd193978194057%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl193979194059%_))
                                      (let* ((_%tl193971194019%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl193979194059%_)))
                                             (_%rest194022%_
                                              _%tl193971194019%_))
                                        (_%K193967194011%_ _%rest194022%_))
                                      (let ((_%rest194003%_
                                             _%tl193979194059%_))
                                        (_%K193964193997%_ _%rest194003%_)))
                                  (let ((_%rest194003%_ _%tl193979194059%_))
                                    (_%K193964193997%_ _%rest194003%_)))))
                        (_%else193962193991%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords194074%_ _%static?193942194075%_)
        (let ((_%phi?194077%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords194074%_
           _%static?193942194075%_
           _%phi?194077%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g195382_
        (let ((_g195381_ (let () (declare (not safe)) (##length _g195382_))))
          (cond ((let () (declare (not safe)) (##fx= _g195381_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g195382_))
                ((let () (declare (not safe)) (##fx= _g195381_ 3))
                 (apply gxc#gsc-cc-options__%__% _g195382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g195382_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords194086%_ . _%args194087%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords194086%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194086%_
                  'static:
                  absent-value))
               _%args194087%_)))
    (define gxc#gsc-cc-options
      (lambda _%args193943194093%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args193943194093%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords193791%_ _%static?193787193792%_ _%phi?193794%_)
        (let ((_%static?193796%_
               (if (eq? _%static?193787193792%_ absent-value)
                   '#f
                   _%static?193787193792%_)))
          (if _%phi?193794%_
              '()
              (let _%lp193798%_ ((_%rest193800%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts193801%_ '()))
                (let* ((_%rest193802193828%_ _%rest193800%_)
                       (_%else193807193836%_
                        (lambda () (reverse! _%opts193801%_))))
                  (let ((_%K193822193899%_
                         (lambda (_%rest193896%_ _%opt193897%_)
                           (if _%static?193796%_
                               (_%lp193798%_
                                _%rest193896%_
                                (cons _%opt193897%_
                                      (cons '"-ld-options" _%opts193801%_)))
                               (_%lp193798%_ _%rest193896%_ _%opts193801%_))))
                        (_%K193817193876%_
                         (lambda (_%rest193873%_ _%opt193874%_)
                           (_%lp193798%_
                            _%rest193873%_
                            (cons _%opt193874%_
                                  (cons '"-ld-options" _%opts193801%_)))))
                        (_%K193812193856%_
                         (lambda (_%rest193854%_)
                           (_%lp193798%_ _%rest193854%_ _%opts193801%_)))
                        (_%K193809193842%_
                         (lambda (_%rest193840%_)
                           (_%lp193798%_ _%rest193840%_ _%opts193801%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest193802193828%_))
                        (let ((_%tl193824193904%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest193802193828%_)))
                              (_%hd193823193902%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest193802193828%_))))
                          (if (equal? _%hd193823193902%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193824193904%_))
                                  (let ((_%tl193826193909%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193824193904%_)))
                                        (_%hd193825193907%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193824193904%_))))
                                    (if (equal? _%hd193825193907%_ '"-static")
                                        (let ((_%opt193912%_
                                               _%hd193825193907%_)
                                              (_%rest193914%_
                                               _%tl193826193909%_))
                                          (_%K193822193899%_
                                           _%rest193914%_
                                           _%opt193912%_))
                                        (let ((_%opt193889%_
                                               _%hd193825193907%_)
                                              (_%rest193891%_
                                               _%tl193826193909%_))
                                          (_%K193817193876%_
                                           _%rest193891%_
                                           _%opt193889%_))))
                                  (let ((_%rest193848%_ _%tl193824193904%_))
                                    (_%K193809193842%_ _%rest193848%_)))
                              (if (equal? _%hd193823193902%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl193824193904%_))
                                      (let* ((_%tl193816193864%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl193824193904%_)))
                                             (_%rest193867%_
                                              _%tl193816193864%_))
                                        (_%K193812193856%_ _%rest193867%_))
                                      (let ((_%rest193848%_
                                             _%tl193824193904%_))
                                        (_%K193809193842%_ _%rest193848%_)))
                                  (let ((_%rest193848%_ _%tl193824193904%_))
                                    (_%K193809193842%_ _%rest193848%_)))))
                        (_%else193807193836%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords193919%_ _%static?193787193920%_)
        (let ((_%phi?193922%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords193919%_
           _%static?193787193920%_
           _%phi?193922%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g195384_
        (let ((_g195383_ (let () (declare (not safe)) (##length _g195384_))))
          (cond ((let () (declare (not safe)) (##fx= _g195383_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g195384_))
                ((let () (declare (not safe)) (##fx= _g195383_ 3))
                 (apply gxc#gsc-ld-options__%__% _g195384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g195384_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords193931%_ . _%args193932%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords193931%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193931%_
                  'static:
                  absent-value))
               _%args193932%_)))
    (define gxc#gsc-ld-options
      (lambda _%args193788193938%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args193788193938%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193782%_)
        (let ((_%user-staticdir193784%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193782%_
                       '" -I "
                       _%user-staticdir193784%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193694%_ ((_%rest193696%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193697%_ '()))
          (let* ((_%rest193698193718%_ _%rest193696%_)
                 (_%else193702193726%_ (lambda () _%opts193697%_)))
            (let ((_%K193712193769%_
                   (lambda (_%rest193767%_)
                     (_%lp193694%_ _%rest193767%_ _%opts193697%_)))
                  (_%K193707193747%_
                   (lambda (_%rest193744%_ _%opt193745%_)
                     (_%lp193694%_
                      _%rest193744%_
                      (let ((__tmp195385
                             (let ((__tmp195386
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt193745%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp195386))))
                        (declare (not safe))
                        (##append _%opts193697%_ __tmp195385)))))
                  (_%K193704193732%_
                   (lambda (_%rest193730%_)
                     (_%lp193694%_ _%rest193730%_ _%opts193697%_))))
              (if (let () (declare (not safe)) (##pair? _%rest193698193718%_))
                  (let ((_%tl193714193774%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193698193718%_)))
                        (_%hd193713193772%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193698193718%_))))
                    (if (equal? _%hd193713193772%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193714193774%_))
                            (let* ((_%tl193716193777%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193714193774%_)))
                                   (_%rest193780%_ _%tl193716193777%_))
                              (_%K193712193769%_ _%rest193780%_))
                            (let ((_%rest193738%_ _%tl193714193774%_))
                              (_%K193704193732%_ _%rest193738%_)))
                        (if (equal? _%hd193713193772%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193714193774%_))
                                (let ((_%tl193711193757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193714193774%_)))
                                      (_%hd193710193755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193714193774%_))))
                                  (let ((_%opt193760%_ _%hd193710193755%_)
                                        (_%rest193762%_ _%tl193711193757%_))
                                    (_%K193707193747%_
                                     _%rest193762%_
                                     _%opt193760%_)))
                                (let ((_%rest193738%_ _%tl193714193774%_))
                                  (_%K193704193732%_ _%rest193738%_)))
                            (let ((_%rest193738%_ _%tl193714193774%_))
                              (_%K193704193732%_ _%rest193738%_)))))
                  (_%else193702193726%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str193691%_)
        (not (let () (declare (not safe)) (string-empty? _%str193691%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path193684%_ _%phi?193685%_)
        (let ((_%gsc-link-opts193687%_
               (gxc#gsc-link-options__% _%phi?193685%_))
              (_%gsc-cc-opts193688%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?193685%_))
              (_%gsc-ld-opts193689%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?193685%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp195387
                  (let ((__tmp195388
                         (let ((__tmp195389 (cons _%path193684%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195389
                            _%gsc-link-opts193687%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195388 _%gsc-ld-opts193689%_))))
             (declare (not safe))
             (__foldr1 cons __tmp195387 _%gsc-cc-opts193688%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193650%_ _%n193651%_ _%ext193652%_)
        (letrec ((_%module-relative-path193654%_
                  (lambda (_%ctx193682%_)
                    (path-strip-directory
                     (let ((__tmp195390
                            (##structure-ref
                             _%ctx193682%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp195390)))))
                 (_%module-source-directory193655%_
                  (lambda (_%ctx193678%_)
                    (path-directory
                     (let ((_%mpath193680%_
                            (##structure-ref
                             _%ctx193678%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath193680%_)
                           _%mpath193680%_
                           (last _%mpath193680%_))))))
                 (_%section-string193656%_
                  (lambda (_%n193672%_)
                    (if (number? _%n193672%_)
                        (number->string _%n193672%_)
                        (if (symbol? _%n193672%_)
                            (symbol->string _%n193672%_)
                            (if (string? _%n193672%_)
                                _%n193672%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193672%_)))))))
                 (_%file-name193657%_
                  (lambda (_%path193670%_)
                    (if _%n193651%_
                        (string-append
                         _%path193670%_
                         '"~"
                         (_%section-string193656%_ _%n193651%_)
                         _%ext193652%_)
                        (string-append _%path193670%_ _%ext193652%_))))
                 (_%file-path193658%_
                  (lambda ()
                    (let ((_%$e193664%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193664%_
                          ((lambda (_%outdir193667%_)
                             (path-expand
                              (_%file-name193657%_
                               (let ((__tmp195391
                                      (##structure-ref
                                       _%ctx193650%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp195391)))
                              _%outdir193667%_))
                           _%$e193664%_)
                          (path-expand
                           (_%file-name193657%_
                            (_%module-relative-path193654%_ _%ctx193650%_))
                           (_%module-source-directory193655%_
                            _%ctx193650%_)))))))
          (let ((_%path193660%_ (_%file-path193658%_)))
            (let ((__tmp195392
                   (lambda ()
                     (let ((__tmp195393 (path-directory _%path193660%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195393)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195392))
            _%path193660%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193631%_)
        (letrec ((_%file-name193633%_
                  (lambda (_%id193648%_)
                    (let ((__tmp195394 (gxc#static-module-name _%id193648%_)))
                      (declare (not safe))
                      (##string-append __tmp195394 '".scm"))))
                 (_%file-path193634%_
                  (lambda ()
                    (let* ((_%file193640%_
                            (_%file-name193633%_
                             (##structure-ref
                              _%ctx193631%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e193642%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193642%_
                          ((lambda (_%outdir193645%_)
                             (path-expand
                              _%file193640%_
                              (path-expand '"static" _%outdir193645%_)))
                           _%$e193642%_)
                          (path-expand _%file193640%_ '"static"))))))
          (let ((_%path193636%_ (_%file-path193634%_)))
            (let ((__tmp195395
                   (lambda ()
                     (let ((__tmp195396 (path-directory _%path193636%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195396)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195395))
            _%path193636%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193624%_ _%opts193625%_)
        (let ((_%$e193627%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193625%_))))
          (if _%$e193627%_
              (values _%$e193627%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx193624%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr193614%_)
        (if (string? _%idstr193614%_)
            (let* ((_%str193617%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr193614%_)))
                   (_%strs193619%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str193617%_ '#\/))))
              (declare (not safe))
              (string-join _%strs193619%_ '"__"))
            (if (symbol? _%idstr193614%_)
                (gxc#static-module-name (symbol->string _%idstr193614%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193614%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp195397
               (let ((__tmp195398 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp195398 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp195397))))
    (define gxc#invoke__%
      (lambda (_%@@keywords193578%_
               _%stdout-redirection193574193579%_
               _%stderr-redirection193575193581%_
               _%program193583%_
               _%args193584%_)
        (let* ((_%stdout-redirection193586%_
                (if (eq? _%stdout-redirection193574193579%_ absent-value)
                    '#f
                    _%stdout-redirection193574193579%_))
               (_%stderr-redirection193588%_
                (if (eq? _%stderr-redirection193575193581%_ absent-value)
                    '#f
                    _%stderr-redirection193575193581%_)))
          (let ((__tmp195399 (cons _%program193583%_ _%args193584%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp195399))
          (let* ((_%proc193590%_
                  (open-process
                   (cons 'path:
                         (cons _%program193583%_
                               (cons 'arguments:
                                     (cons _%args193584%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193586%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193595%_
                  (if (or _%stdout-redirection193586%_
                          _%stderr-redirection193588%_)
                      (read-line _%proc193590%_ '#f)
                      '#f))
                 (_%status193598%_ (process-status _%proc193590%_)))
            (let () (declare (not safe)) (##close-port _%proc193590%_))
            (if (zero? _%status193598%_)
                '#!void
                (begin
                  (display _%output193595%_)
                  (let ((__tmp195400 (cons _%program193583%_ _%args193584%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp195400
                     _%status193598%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193603%_ . _%args193604%_)
        (apply gxc#invoke__%
               _%@@keywords193603%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193603%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193603%_
                  'stderr-redirection:
                  absent-value))
               _%args193604%_)))
    (define gxc#invoke
      (lambda _%args193576193610%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193576193610%_)))))
