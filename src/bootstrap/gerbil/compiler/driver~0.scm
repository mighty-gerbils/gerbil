(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712702637)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp195332 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp195332))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp195333 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp195333))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195189%_ _%fun195190%_)
        (with-output-to-file
         (cons 'path: (cons _%path195189%_ gxc#scheme-file-settings))
         _%fun195190%_)))
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
      (lambda (_%gerbil-libdir195184%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195184%_)))
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
      (lambda (_%dir195182%_) (delete-file-or-directory _%dir195182%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195155%_ _%opts195156%_)
        (if (string? _%srcpath195155%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195155%_)))
        (let ((_%outdir195158%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195156%_)))
              (_%invoke-gsc?195159%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195156%_)))
              (_%gsc-options195160%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195156%_)))
              (_%keep-scm?195161%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195156%_)))
              (_%verbosity195162%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195156%_)))
              (_%optimize195163%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195156%_)))
              (_%debug195164%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195156%_)))
              (_%gen-ssxi195165%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195156%_)))
              (_%parallel?195166%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts195156%_))))
          (if _%outdir195158%_
              (let ((__tmp195334
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195158%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195334))
              '#!void)
          (if _%optimize195163%_
              (let ((__tmp195335
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195335))
              '#!void)
          (let ((__tmp195338
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195155%_))
                   (gxc#compile-top-module
                    (let ((__tmp195339
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath195155%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195339)))))
                (__tmp195337 (gxc#compile-timestamp))
                (__tmp195336
                 (cons 'compile-module (cons _%srcpath195155%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195338
             gxc#current-compile-output-dir
             _%outdir195158%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195159%_
             gxc#current-compile-gsc-options
             _%gsc-options195160%_
             gxc#current-compile-keep-scm
             _%keep-scm?195161%_
             gxc#current-compile-verbose
             _%verbosity195162%_
             gxc#current-compile-optimize
             _%optimize195163%_
             gxc#current-compile-debug
             _%debug195164%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195165%_
             gxc#current-compile-timestamp
             __tmp195337
             gxc#current-compile-context
             __tmp195336
             gxc#current-compile-parallel
             _%parallel?195166%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195175%_)
        (let ((_%opts195177%_ '()))
          (gxc#compile-module__% _%srcpath195175%_ _%opts195177%_))))
    (define gxc#compile-module
      (lambda _g195341_
        (let ((_g195340_ (let () (declare (not safe)) (##length _g195341_))))
          (cond ((let () (declare (not safe)) (##fx= _g195340_ 1))
                 (apply gxc#compile-module__0 _g195341_))
                ((let () (declare (not safe)) (##fx= _g195340_ 2))
                 (apply gxc#compile-module__% _g195341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g195341_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195130%_ _%opts195131%_)
        (if (string? _%srcpath195130%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195130%_)))
        (let ((_%outdir195133%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195131%_)))
              (_%invoke-gsc?195134%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195131%_)))
              (_%gsc-options195135%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195131%_)))
              (_%keep-scm?195136%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195131%_)))
              (_%verbosity195137%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195131%_)))
              (_%debug195138%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195131%_)))
              (_%parallel?195139%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts195131%_))))
          (if _%outdir195133%_
              (let ((__tmp195342
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195133%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195342))
              '#!void)
          (let ((__tmp195345
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195130%_))
                   (gxc#compile-executable-module
                    (let ((__tmp195346
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath195130%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195346))
                    _%opts195131%_)))
                (__tmp195344 (gxc#compile-timestamp))
                (__tmp195343 (cons 'compile-exe (cons _%srcpath195130%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195345
             gxc#current-compile-output-dir
             _%outdir195133%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195134%_
             gxc#current-compile-gsc-options
             _%gsc-options195135%_
             gxc#current-compile-keep-scm
             _%keep-scm?195136%_
             gxc#current-compile-verbose
             _%verbosity195137%_
             gxc#current-compile-debug
             _%debug195138%_
             gxc#current-compile-timestamp
             __tmp195344
             gxc#current-compile-context
             __tmp195343
             gxc#current-compile-parallel
             _%parallel?195139%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195147%_)
        (let ((_%opts195149%_ '()))
          (gxc#compile-exe__% _%srcpath195147%_ _%opts195149%_))))
    (define gxc#compile-exe
      (lambda _g195348_
        (let ((_g195347_ (let () (declare (not safe)) (##length _g195348_))))
          (cond ((let () (declare (not safe)) (##fx= _g195347_ 1))
                 (apply gxc#compile-exe__0 _g195348_))
                ((let () (declare (not safe)) (##fx= _g195347_ 2))
                 (apply gxc#compile-exe__% _g195348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g195348_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195126%_ _%opts195127%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195127%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx195126%_
             _%opts195127%_)
            (gxc#compile-executable-module/separate
             _%ctx195126%_
             _%opts195127%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194916%_ _%opts194917%_)
        (letrec ((_%generate-stub194919%_
                  (lambda (_%builtin-modules195122%_)
                    (let ((_%mod-main195124%_
                           (gxc#find-runtime-symbol _%ctx194916%_ 'main)))
                      (let ((__tmp195349
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules195122%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp195349))
                      (let ((__tmp195350
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195124%_
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
                        (##write __tmp195350))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194920%_
                  (lambda (_%gerbil-libdir195120%_)
                    (let ((__tmp195351
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir195120%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp195351 read))))
                 (_%replace-extension194921%_
                  (lambda (_%path195117%_ _%ext195118%_)
                    (string-append
                     (path-strip-extension _%path195117%_)
                     _%ext195118%_)))
                 (_%userlib-module?194922%_
                  (lambda (_%ctx195115%_)
                    (if (not (_%exclude-module?194924%_ _%ctx195115%_))
                        (not (_%libgerbil-module?194923%_ _%ctx195115%_))
                        '#f)))
                 (_%libgerbil-module?194923%_
                  (lambda (_%ctx195108%_)
                    (let ((_%id-str195110%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195108%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?194924%_ _%id-str195110%_))
                          (let ((_%$e195112%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195110%_))))
                            (if _%$e195112%_
                                _%$e195112%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str195110%_))))
                          '#f))))
                 (_%exclude-module?194924%_
                  (lambda (_%ctx-or-str195104%_)
                    (let ((_%str195106%_
                           (if (string? _%ctx-or-str195104%_)
                               _%ctx-or-str195104%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str195104%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str195106%_))))
                 (_%not-file-empty?194925%_
                  (lambda (_%path195102%_)
                    (not (gxc#file-empty? _%path195102%_))))
                 (_%fold-libgerbil-runtime-scm194926%_
                  (lambda (_%gerbil-staticdir195095%_ _%libgerbil-scm195096%_)
                    (let ((_%gerbil-runtime-scm195100%_
                           (let ((__tmp195352
                                  (lambda (_%rtm195098%_)
                                    (path-expand
                                     (let ((__tmp195353
                                            (let ((__tmp195354
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm195098%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp195354
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp195353 '".scm"))
                                     _%gerbil-staticdir195095%_))))
                             (declare (not safe))
                             (##map __tmp195352 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates194927%_
                       (append _%gerbil-runtime-scm195100%_
                               _%libgerbil-scm195096%_)))))
                 (_%remove-duplicates194927%_
                  (lambda (_%strlst195055%_)
                    (let _%loop195057%_ ((_%rest195059%_ _%strlst195055%_)
                                         (_%result195060%_ '()))
                      (let* ((_%rest195061195069%_ _%rest195059%_)
                             (_%else195063195077%_
                              (lambda () (reverse! _%result195060%_)))
                             (_%K195065195083%_
                              (lambda (_%rest195080%_ _%path195081%_)
                                (if (member _%path195081%_ _%result195060%_)
                                    (_%loop195057%_
                                     _%rest195080%_
                                     _%result195060%_)
                                    (_%loop195057%_
                                     _%rest195080%_
                                     (cons _%path195081%_
                                           _%result195060%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest195061195069%_))
                            (let ((_%hd195066195086%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest195061195069%_)))
                                  (_%tl195067195088%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest195061195069%_))))
                              (let* ((_%path195091%_ _%hd195066195086%_)
                                     (_%rest195093%_ _%tl195067195088%_))
                                (_%K195065195083%_
                                 _%rest195093%_
                                 _%path195091%_)))
                            (_%else195063195077%_))))))
                 (_%compile-stub194928%_
                  (lambda (_%output-scm194935%_ _%output-bin194936%_)
                    (let* ((_%gerbil-home194938%_
                            (let ((__tmp195355
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195355)))
                           (_%gerbil-libdir194940%_
                            (path-expand '"lib" _%gerbil-home194938%_))
                           (_%gerbil-staticdir194942%_
                            (path-expand '"static" _%gerbil-libdir194940%_))
                           (_%deps194944%_
                            (gxc#find-runtime-module-deps _%ctx194916%_))
                           (_%libgerbil-deps194946%_
                            (filter _%libgerbil-module?194923%_
                                    _%deps194944%_))
                           (_%libgerbil-scm194948%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps194946%_)))
                           (_%libgerbil-scm194950%_
                            (_%fold-libgerbil-runtime-scm194926%_
                             _%gerbil-staticdir194942%_
                             _%libgerbil-scm194948%_))
                           (_%libgerbil-c194956%_
                            (map (lambda (_%g194951194953%_)
                                   (_%replace-extension194921%_
                                    _%g194951194953%_
                                    '".c"))
                                 _%libgerbil-scm194950%_))
                           (_%libgerbil-o194962%_
                            (map (lambda (_%g194957194959%_)
                                   (_%replace-extension194921%_
                                    _%g194957194959%_
                                    '".o"))
                                 _%libgerbil-scm194950%_))
                           (_%src-deps194964%_
                            (filter _%userlib-module?194922%_ _%deps194944%_))
                           (_%src-deps-scm194966%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps194964%_)))
                           (_%src-deps-scm194968%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194925%_
                               _%src-deps-scm194966%_)))
                           (_%src-deps-scm194970%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194968%_)))
                           (_%src-deps-c194976%_
                            (let ((__tmp195356
                                   (lambda (_%g194971194973%_)
                                     (_%replace-extension194921%_
                                      _%g194971194973%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp195356 _%src-deps-scm194970%_)))
                           (_%src-deps-o194982%_
                            (let ((__tmp195357
                                   (lambda (_%g194977194979%_)
                                     (_%replace-extension194921%_
                                      _%g194977194979%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp195357 _%src-deps-scm194970%_)))
                           (_%src-bin-scm194984%_
                            (gxc#find-static-module-file _%ctx194916%_))
                           (_%src-bin-scm194986%_
                            (path-expand _%src-bin-scm194984%_))
                           (_%src-bin-c194988%_
                            (_%replace-extension194921%_
                             _%src-bin-scm194986%_
                             '".c"))
                           (_%src-bin-o194990%_
                            (_%replace-extension194921%_
                             _%src-bin-scm194986%_
                             '".o"))
                           (_%output-bin194992%_
                            (path-expand _%output-bin194936%_))
                           (_%output-scm194994%_
                            (path-expand _%output-scm194935%_))
                           (_%output-c194996%_
                            (_%replace-extension194921%_
                             _%output-scm194994%_
                             '".c"))
                           (_%output-o194998%_
                            (_%replace-extension194921%_
                             _%output-scm194994%_
                             '".o"))
                           (_%output_-c195000%_
                            (_%replace-extension194921%_
                             _%output-scm194994%_
                             '"_.c"))
                           (_%output_-o195002%_
                            (_%replace-extension194921%_
                             _%output-scm194994%_
                             '"_.o"))
                           (_%gsc-link-opts195004%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts195006%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts195008%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir194942%_))
                           (_%output-ld-opts195010%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts195012%_
                            (_%get-libgerbil-ld-opts194920%_
                             _%gerbil-libdir194940%_))
                           (_%rpath195014%_
                            (gxc#gerbil-rpath _%gerbil-libdir194940%_))
                           (_%builtin-modules195018%_
                            (_%remove-duplicates194927%_
                             (let ((__tmp195358
                                    (let ((__tmp195360
                                           (lambda (_%mod195016%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod195016%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp195359
                                           (cons _%ctx194916%_
                                                 _%deps194944%_)))
                                      (declare (not safe))
                                      (##map __tmp195360 __tmp195359))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp195358)))))
                      (letrec ((_%compile-obj195021%_
                                (lambda (_%scm-path195028%_ _%c-path195029%_)
                                  (let* ((_%o-path195031%_
                                          (_%replace-extension194921%_
                                           _%c-path195029%_
                                           '".o"))
                                         (_%lock195033%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path195031%_
                                             '".lock")))
                                         (_%locked195035%_ '#f)
                                         (_%unlock195038%_
                                          (lambda ()
                                            (close-port _%locked195035%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock195033%_)))))
                                    (let _%retry195041%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock195033%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry195041%_))
                                          (begin
                                            (set! _%locked195035%_
                                                  (let ((__tmp195361
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock195033%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp195361)))
                                            (if _%locked195035%_
                                                '#!void
                                                (_%retry195041%_)))))
                                    (let ((__tmp195363
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path195031%_)))
                                                     (not _%scm-path195028%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path195028%_
                                                        _%o-path195031%_)))
                                                 (let ((_%gsc-cc-opts195052%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp195364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195365 (cons _%c-path195029%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195365
                            _%gsc-static-opts195008%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195364 _%gsc-cc-opts195052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp195362
                                           (lambda () (_%unlock195038%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp195363
                                       __tmp195362))))))
                        (let ((__tmp195366
                               (lambda ()
                                 (let ((__tmp195367
                                        (path-directory _%output-bin194992%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp195367)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp195366))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194994%_
                         (lambda ()
                           (_%generate-stub194919%_
                            _%builtin-modules195018%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it195026%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp195368
                                                   (let ((__tmp195369
                                                          (let ((__tmp195370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm194986%_
                               (cons _%output-scm194994%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195370 _%src-deps-scm194970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp195369
                                                      _%libgerbil-c194956%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp195368
                                               _%gsc-link-opts195004%_))))
                                     (for-each
                                      _%compile-obj195021%_
                                      (let ((__tmp195371
                                             (cons _%src-bin-scm194986%_
                                                   (cons _%output-scm194994%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195371
                                         _%src-deps-scm194970%_))
                                      (let ((__tmp195372
                                             (cons _%src-bin-c194988%_
                                                   (cons _%output-c194996%_
                                                         (cons _%output_-c195000%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195372
                                         _%src-deps-c194976%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin194992%_
                                                        (let ((__tmp195373
                                                               (cons _%src-bin-o194990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o194998%_
                                   (cons _%output_-o195002%_
                                         (let ((__tmp195374
                                                (let ((__tmp195375
                                                       (let ((__tmp195377
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir194940%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts195012%_))))
                     (__tmp195376
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath195014%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp195377 __tmp195376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195375
                                                   _%output-ld-opts195010%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195374
                                            _%libgerbil-o194962%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp195373 _%src-deps-o194982%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp195378
                                            (cons _%output-c194996%_
                                                  (cons _%output_-c195000%_
                                                        (cons _%output-o194998%_
                                                              (cons _%output_-o195002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp195378)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it195026%_))
                                  (_%compile-it195026%_)))
                            '#!void))))))
          (let* ((_%output-bin194930%_
                  (gxc#compile-exe-output-file _%ctx194916%_ _%opts194917%_))
                 (_%output-scm194932%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194930%_ '"__exe.scm"))))
            (_%compile-stub194928%_
             _%output-scm194932%_
             _%output-bin194930%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194738%_ _%opts194739%_)
        (letrec ((_%reset-declare194741%_
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
                 (_%generate-stub194742%_
                  (lambda (_%deps194907%_)
                    (let ((_%mod-main194909%_
                           (gxc#find-runtime-symbol _%ctx194738%_ 'main))
                          (_%reset-decl194910%_ (_%reset-declare194741%_))
                          (_%user-decl194911%_ (_%user-declare194743%_)))
                      (for-each
                       (lambda (_%dep194913%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194910%_))
                         (newline)
                         (if _%user-decl194911%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194911%_))
                               (newline))
                             '#!void)
                         (let ((__tmp195379
                                (cons 'include (cons _%dep194913%_ '()))))
                           (declare (not safe))
                           (##write __tmp195379))
                         (newline))
                       _%deps194907%_)
                      (let ((__tmp195380
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp195380))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194743%_
                  (lambda ()
                    (let* ((_%gsc-opts194812%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194739%_)))
                           (_%gsc-prelude194814%_
                            (if _%gsc-opts194812%_
                                (member '"-prelude" _%gsc-opts194812%_)
                                '#f))
                           (_%gsc-prelude194816%_
                            (if _%gsc-prelude194814%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194814%_)))
                                '#f)))
                      (let _%lp194819%_ ((_%rest194821%_
                                          (cons _%gsc-prelude194816%_ '()))
                                         (_%user-decls194822%_ '()))
                        (let* ((_%rest194823194831%_ _%rest194821%_)
                               (_%else194825194839%_
                                (lambda ()
                                  (if (null? _%user-decls194822%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194822%_)))))
                               (_%K194827194895%_
                                (lambda (_%rest194842%_ _%expr194843%_)
                                  (let* ((_%expr194844194856%_ _%expr194843%_)
                                         (_%else194847194864%_
                                          (lambda ()
                                            (_%lp194819%_
                                             _%rest194842%_
                                             _%user-decls194822%_))))
                                    (let ((_%K194852194885%_
                                           (lambda (_%decls194883%_)
                                             (_%lp194819%_
                                              _%rest194842%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls194822%_
                                                 _%decls194883%_)))))
                                          (_%K194849194870%_
                                           (lambda (_%exprs194868%_)
                                             (_%lp194819%_
                                              (append _%exprs194868%_
                                                      _%rest194842%_)
                                              _%user-decls194822%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194844194856%_))
                                          (let ((_%tl194854194890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194844194856%_)))
                                                (_%hd194853194888%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194844194856%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194853194888%_
                                                         'declare))
                                                (let ((_%decls194893%_
                                                       _%tl194854194890%_))
                                                  (_%K194852194885%_
                                                   _%decls194893%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194853194888%_
                                                             'begin))
                                                    (let ((_%exprs194878%_
                                                           _%tl194854194890%_))
                                                      (_%K194849194870%_
                                                       _%exprs194878%_))
                                                    (_%else194847194864%_))))
                                          (_%else194847194864%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194823194831%_))
                              (let ((_%hd194828194898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194823194831%_)))
                                    (_%tl194829194900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194823194831%_))))
                                (let* ((_%expr194903%_ _%hd194828194898%_)
                                       (_%rest194905%_ _%tl194829194900%_))
                                  (_%K194827194895%_
                                   _%rest194905%_
                                   _%expr194903%_)))
                              (_%else194825194839%_)))))))
                 (_%compile-stub194744%_
                  (lambda (_%output-scm194751%_ _%output-bin194752%_)
                    (let* ((_%gerbil-home194754%_
                            (let ((__tmp195381
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195381)))
                           (_%gerbil-libdir194756%_
                            (path-expand '"lib" _%gerbil-home194754%_))
                           (_%runtime194758%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194760%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194754%_))
                           (_%include-gambit-sharp194762%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194760%_
                               '"\")")))
                           (_%bin-scm194764%_
                            (gxc#find-static-module-file _%ctx194738%_))
                           (_%deps194766%_
                            (gxc#find-runtime-module-deps _%ctx194738%_))
                           (_%deps194768%_
                            (map gxc#find-static-module-file _%deps194766%_))
                           (_%deps194773%_
                            (let ((__tmp195382
                                   (lambda (_%$obj194770%_)
                                     (not (gxc#file-empty? _%$obj194770%_)))))
                              (declare (not safe))
                              (##filter __tmp195382 _%deps194768%_)))
                           (_%deps194777%_
                            (let ((__tmp195383
                                   (lambda (_%f194775%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f194775%_
                                             _%runtime194758%_))))))
                              (declare (not safe))
                              (##filter __tmp195383 _%deps194773%_)))
                           (_%output-base194779%_
                            (let ((__tmp195384
                                   (path-strip-extension
                                    _%output-scm194751%_)))
                              (declare (not safe))
                              (##string-append __tmp195384)))
                           (_%output-c194781%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194779%_ '".c")))
                           (_%output-o194783%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194779%_ '".o")))
                           (_%output-c_194785%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194779%_ '"_.c")))
                           (_%output-o_194787%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194779%_ '"_.o")))
                           (_%gsc-link-opts194789%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194791%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts194793%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir194756%_)))
                           (_%output-ld-opts194795%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros194797%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194762%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194762%_
                                            '()))))
                           (_%gsc-link-opts194799%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194789%_
                               _%gsc-gx-macros194797%_)))
                           (_%rpath194801%_
                            (gxc#gerbil-rpath _%gerbil-libdir194756%_))
                           (_%default-ld-options194803%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp195385
                             (lambda ()
                               (let ((__tmp195386
                                      (path-directory _%output-bin194752%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195386)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195385))
                      (gxc#with-output-to-scheme-file
                       _%output-scm194751%_
                       (lambda ()
                         (_%generate-stub194742%_
                          (let ((__tmp195387
                                 (let ((__tmp195388
                                        (cons _%bin-scm194764%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp195388
                                    _%deps194777%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp195387 _%runtime194758%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it194809%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_194785%_
                                                      (let ((__tmp195389
                                                             (cons _%output-scm194751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195389 _%gsc-link-opts194799%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp195390
                                                 (let ((__tmp195391
                                                        (cons _%output-c194781%_
                                                              (cons _%output-c_194785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp195391
                                                    _%gsc-static-opts194793%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195390
                                             _%gsc-cc-opts194791%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin194752%_
                                                      (cons _%output-o194783%_
                                                            (cons _%output-o_194787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195392
                                 (let ((__tmp195394
                                        (cons '"-L"
                                              (cons _%gerbil-libdir194756%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options194803%_))))
                                       (__tmp195393
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath194801%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp195394 __tmp195393))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp195392
                             _%output-ld-opts194795%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it194809%_))
                                (_%compile-it194809%_)))
                          '#!void)))))
          (let* ((_%output-bin194746%_
                  (gxc#compile-exe-output-file _%ctx194738%_ _%opts194739%_))
                 (_%output-scm194748%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194746%_ '"__exe.scm"))))
            (_%compile-stub194744%_
             _%output-scm194748%_
             _%output-bin194746%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx194687%_ _%id194688%_)
        (let ((_%$e194734%_
               (let ((__tmp195396
                      (lambda (_%e194689194691%_)
                        (let* ((_%g194693194703%_ _%e194689194691%_)
                               (_%else194695194711%_ (lambda () '#f))
                               (_%K194697194715%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194693194703%_
                                 'gx#module-export::t))
                              (let* ((_%e194698194718%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194693194703%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194699194721%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194693194703%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194700194724%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194693194703%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194700194724%_ '0))
                                    (let ((_%e194701194727%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194693194703%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194729194731%_)
                                             (eq? _%g194729194731%_
                                                  _%id194688%_))
                                           _%e194701194727%_)
                                          (_%K194697194715%_)
                                          (_%else194695194711%_)))
                                    (_%else194695194711%_)))
                              (_%else194695194711%_)))))
                     (__tmp195395
                      (##structure-ref
                       _%ctx194687%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp195396 __tmp195395))))
          (if _%$e194734%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194734%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194678%_ _%id194679%_)
        (let ((_%$e194681%_
               (gxc#find-export-binding _%ctx194678%_ _%id194679%_)))
          (if _%$e194681%_
              ((lambda (_%bind194684%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194684%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194679%_)))
                 (##structure-ref _%bind194684%_ '1 gx#binding::t '#f))
               _%$e194681%_)
              (let ((__tmp195397
                     (##structure-ref
                      _%ctx194678%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp195397
                 _%id194679%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx194544%_)
        (letrec* ((_%ht194546%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template194547%_
                   (lambda (_%in194623%_ _%phi194624%_)
                     (let ((_%iphi194626%_
                            (fx+ _%phi194624%_
                                 (##direct-structure-ref
                                  _%in194623%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194627%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194623%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194629%_ ((_%rest194631%_ _%imports194627%_)
                                          (_%r194632%_ '()))
                         (let* ((_%rest194633194641%_ _%rest194631%_)
                                (_%else194635194649%_ (lambda () _%r194632%_))
                                (_%K194637194666%_
                                 (lambda (_%rest194652%_ _%in194653%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194653%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi194626%_))
                                           (_%lp194629%_
                                            _%rest194652%_
                                            (cons _%in194653%_ _%r194632%_))
                                           (_%lp194629%_
                                            _%rest194652%_
                                            _%r194632%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194653%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194657%_
                                                  (fx+ _%phi194624%_
                                                       (##direct-structure-ref
                                                        _%in194653%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194657%_))
                                                 (_%lp194629%_
                                                  _%rest194652%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in194653%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r194632%_))
                                                 (_%lp194629%_
                                                  _%rest194652%_
                                                  _%r194632%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194653%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194660%_
                                                      (fx+ _%iphi194626%_
                                                           (##direct-structure-ref
                                                            _%in194653%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194660%_))
                                                     (_%lp194629%_
                                                      _%rest194652%_
                                                      (cons (##direct-structure-ref
                                                             _%in194653%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r194632%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194660%_))
                                                         (_%lp194629%_
                                                          _%rest194652%_
                                                          (let ((__tmp195398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template194547%_
                          _%in194653%_
                          _%iphi194626%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r194632%_ __tmp195398)))
                 (_%lp194629%_ _%rest194652%_ _%r194632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp194629%_
                                                _%rest194652%_
                                                _%r194632%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194633194641%_))
                               (let ((_%hd194638194669%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194633194641%_)))
                                     (_%tl194639194671%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194633194641%_))))
                                 (let* ((_%in194674%_ _%hd194638194669%_)
                                        (_%rest194676%_ _%tl194639194671%_))
                                   (_%K194637194666%_
                                    _%rest194676%_
                                    _%in194674%_)))
                               (_%else194635194649%_)))))))
                  (_%find-deps194548%_
                   (lambda (_%rest194556%_ _%deps194557%_)
                     (let* ((_%rest194558194566%_ _%rest194556%_)
                            (_%else194560194574%_ (lambda () _%deps194557%_))
                            (_%K194562194611%_
                             (lambda (_%rest194577%_ _%hd194578%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd194578%_
                                      'gx#module-context::t))
                                   (let ((_%id194581%_
                                          (##structure-ref
                                           _%hd194578%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports194582%_
                                          (##structure-ref
                                           _%hd194578%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht194546%_
                                            _%id194581%_))
                                         (_%find-deps194548%_
                                          _%rest194577%_
                                          _%deps194557%_)
                                         (let ((_%$e194585%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd194578%_))))
                                           (if _%$e194585%_
                                               ((lambda (_%pre194588%_)
                                                  (let ((_%xdeps194590%_
                                                         (_%find-deps194548%_
                                                          (cons _%pre194588%_
                                                                _%imports194582%_)
                                                          _%deps194557%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht194546%_
                                                       _%id194581%_
                                                       _%hd194578%_))
                                                    (_%find-deps194548%_
                                                     _%rest194577%_
                                                     (cons _%hd194578%_
                                                           _%xdeps194590%_))))
                                                _%$e194585%_)
                                               (let ((_%xdeps194593%_
                                                      (_%find-deps194548%_
                                                       _%imports194582%_
                                                       _%deps194557%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht194546%_
                                                    _%id194581%_
                                                    _%hd194578%_))
                                                 (_%find-deps194548%_
                                                  _%rest194577%_
                                                  (cons _%hd194578%_
                                                        _%xdeps194593%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd194578%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194596%_
                                              (##structure-ref
                                               _%hd194578%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht194546%_
                                                _%id194596%_))
                                             (_%find-deps194548%_
                                              _%rest194577%_
                                              _%deps194557%_)
                                             (let ((_%xdeps194600%_
                                                    (_%find-deps194548%_
                                                     (##structure-ref
                                                      _%hd194578%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps194557%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht194546%_
                                                      _%id194596%_))
                                                   (_%find-deps194548%_
                                                    _%rest194577%_
                                                    _%xdeps194600%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht194546%_
                                                        _%id194596%_
                                                        _%hd194578%_))
                                                     (_%find-deps194548%_
                                                      _%rest194577%_
                                                      (cons _%hd194578%_
                                                            _%xdeps194600%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd194578%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd194578%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps194548%_
                                                (cons (##direct-structure-ref
                                                       _%hd194578%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest194577%_)
                                                _%deps194557%_)
                                               (_%find-deps194548%_
                                                _%rest194577%_
                                                _%deps194557%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd194578%_
                                                  'gx#module-export::t))
                                               (_%find-deps194548%_
                                                (cons (##direct-structure-ref
                                                       _%hd194578%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest194577%_)
                                                _%deps194557%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd194578%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd194578%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps194548%_
                (cons (##direct-structure-ref
                       _%hd194578%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest194577%_)
                _%deps194557%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd194578%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps194607%_
                          (_%import-set-template194547%_ _%hd194578%_ '0)))
                     (_%find-deps194548%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest194577%_ _%xdeps194607%_))
                      _%deps194557%_))
                   (_%find-deps194548%_ _%rest194577%_ _%deps194557%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd194578%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest194558194566%_))
                           (let ((_%hd194563194614%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest194558194566%_)))
                                 (_%tl194564194616%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest194558194566%_))))
                             (let* ((_%hd194619%_ _%hd194563194614%_)
                                    (_%rest194621%_ _%tl194564194616%_))
                               (_%K194562194611%_
                                _%rest194621%_
                                _%hd194619%_)))
                           (_%else194560194574%_))))))
          (let ((__tmp195399
                 (filter gx#expander-context-id
                         (_%find-deps194548%_
                          (let ((_%$e194550%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx194544%_))))
                            (if _%$e194550%_
                                ((lambda (_%pre194553%_)
                                   (cons _%pre194553%_
                                         (##structure-ref
                                          _%ctx194544%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e194550%_)
                                (##structure-ref
                                 _%ctx194544%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp195399)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx194474%_)
        (let* ((_%context-id194476%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx194474%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx194474%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx194474%_)))
               (_%scm194478%_
                (let ((__tmp195400
                       (gxc#static-module-name _%context-id194476%_)))
                  (declare (not safe))
                  (##string-append __tmp195400 '".scm")))
               (_%dirs194480%_ (let () (declare (not safe)) (load-path)))
               (_%dirs194486%_
                (let ((_%user-libpath194482%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath194482%_
                      (let ((_%user-libpath194484%_
                             (path-expand '"lib" _%user-libpath194482%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath194484%_ _%dirs194480%_))
                            _%dirs194480%_
                            (cons _%user-libpath194484%_ _%dirs194480%_)))
                      _%dirs194480%_)))
               (_%dirs194496%_
                (let ((_%$e194488%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e194488%_
                      ((lambda (_%g194490194492%_)
                         (cons _%g194490194492%_ _%dirs194486%_))
                       _%$e194488%_)
                      _%dirs194486%_)))
               (_%dirs194502%_
                (let ((__tmp195401
                       (lambda (_%g194497194499%_)
                         (path-expand '"static" _%g194497194499%_))))
                  (declare (not safe))
                  (##map __tmp195401 _%dirs194496%_))))
          (let _%lp194505%_ ((_%rest194507%_ _%dirs194502%_))
            (let* ((_%rest194508194516%_ _%rest194507%_)
                   (_%else194510194524%_
                    (lambda ()
                      (let ((__tmp195402
                             (##structure-ref
                              _%ctx194474%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp195402
                         _%scm194478%_))))
                   (_%K194512194532%_
                    (lambda (_%rest194527%_ _%dir194528%_)
                      (let ((_%path194530%_
                             (path-expand _%scm194478%_ _%dir194528%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194530%_))
                            _%path194530%_
                            (_%lp194505%_ _%rest194527%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest194508194516%_))
                  (let ((_%hd194513194535%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194508194516%_)))
                        (_%tl194514194537%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194508194516%_))))
                    (let* ((_%dir194540%_ _%hd194513194535%_)
                           (_%rest194542%_ _%tl194514194537%_))
                      (_%K194512194532%_ _%rest194542%_ _%dir194540%_)))
                  (_%else194510194524%_)))))))
    (define gxc#file-empty?
      (lambda (_%path194472%_)
        (zero? (let ((__tmp195403 (file-info _%path194472%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp195403)))))
    (define gxc#compile-top-module
      (lambda (_%ctx194468%_)
        (let ((__tmp195407
               (lambda ()
                 (let ((__tmp195408
                        (##structure-ref
                         _%ctx194468%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp195408))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp195409
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx194468%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp195409))
                     '#!void)
                 (gxc#collect-bindings _%ctx194468%_)
                 (gxc#compile-runtime-code _%ctx194468%_)
                 (gxc#compile-meta-code _%ctx194468%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx194468%_)
                     '#!void)))
              (__tmp195406
               (let ((__obj195330
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj195330)
                 __obj195330))
              (__tmp195405 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195404
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
           __tmp195407
           gx#current-expander-context
           _%ctx194468%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp195406
           gxc#current-compile-runtime-sections
           __tmp195405
           gxc#current-compile-runtime-names
           __tmp195404))))
    (define gxc#collect-bindings
      (lambda (_%ctx194466%_)
        (let ((__tmp195410
               (##structure-ref _%ctx194466%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp195410))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx194414%_)
        (letrec ((_%compile1194416%_
                  (lambda (_%ctx194455%_)
                    (let* ((_%code194457%_
                            (##structure-ref
                             _%ctx194455%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm194461%_
                            (let ((_%idstr194459%_
                                   (let ((__tmp195411
                                          (##structure-ref
                                           _%ctx194455%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp195411))))
                              (declare (not safe))
                              (##string-append _%idstr194459%_ '"~0")))
                           (_%rtc?194463%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code194457%_))))
                      (if _%rtc?194463%_
                          (let ((__tmp195412
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp195412
                             _%ctx194455%_
                             _%rtm194461%_))
                          '#!void)
                      (_%generate-runtime-code194418%_
                       _%ctx194455%_
                       _%code194457%_
                       (if _%rtc?194463%_ _%rtm194461%_ '#f)))))
                 (_%context-timestamp194417%_
                  (lambda (_%ctx194453%_)
                    (let ((__tmp195413
                           (let ((__tmp195414
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx194453%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp195414 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp195413))))
                 (_%generate-runtime-code194418%_
                  (lambda (_%ctx194425%_ _%code194426%_ _%rtm194427%_)
                    (let* ((_%runtime-code?194429%_ (if _%rtm194427%_ '#t '#f))
                           (_%lifts194431%_ (box '()))
                           (_%runtime-code194434%_
                            (if _%runtime-code?194429%_
                                (let ((__tmp195417
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code194426%_))))
                                      (__tmp195416
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp195415
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp195417
                                   gx#current-expander-context
                                   _%ctx194425%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts194431%_
                                   gxc#current-compile-marks
                                   __tmp195416
                                   gxc#current-compile-identifiers
                                   __tmp195415))
                                '#f))
                           (_%runtime-code194436%_
                            (if _%runtime-code?194429%_
                                (if (null? (unbox _%lifts194431%_))
                                    _%runtime-code194434%_
                                    (cons 'begin
                                          (let ((__tmp195419
                                                 (cons _%runtime-code194434%_
                                                       '()))
                                                (__tmp195418
                                                 (reverse (unbox _%lifts194431%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195419
                                             __tmp195418))))
                                '#f))
                           (_%runtime-code194438%_
                            (if _%runtime-code?194429%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp194417%_
                                                         _%ctx194425%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code194436%_ '())))
                                '#f))
                           (_%loader-code194441%_
                            (let ((__tmp195420
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code194426%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195420
                               gx#current-expander-context
                               _%ctx194425%_)))
                           (_%loader-code194443%_
                            (cons 'begin
                                  (cons _%loader-code194441%_
                                        (cons (if _%runtime-code?194429%_
                                                  (cons 'load-module
                                                        (cons _%rtm194427%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0194445%_
                            (gxc#compile-output-file _%ctx194425%_ '0 '".scm"))
                           (_%scmrt194447%_
                            (gxc#compile-output-file
                             _%ctx194425%_
                             '#f
                             '".scm"))
                           (_%scms194449%_
                            (gxc#compile-static-output-file _%ctx194425%_)))
                      (if _%runtime-code?194429%_
                          (gxc#compile-scm-file__0
                           _%scm0194445%_
                           _%runtime-code194438%_)
                          '#!void)
                      (let ((__tmp195421
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt194447%_
                                _%loader-code194443%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp195421
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (file-exists? _%scms194449%_)
                          (delete-file _%scms194449%_)
                          '#!void)
                      (if _%runtime-code?194429%_
                          (copy-file _%scm0194445%_ _%scms194449%_)
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms194449%_ void)))))))
          (let* ((_%all-modules194420%_
                  (cons _%ctx194414%_ (gxc#lift-nested-modules _%ctx194414%_)))
                 (__tmp195422
                  (lambda (_%ctx194422%_)
                    (let ((__tmp195423
                           (lambda () (_%compile1194416%_ _%ctx194422%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195423
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp195422 _%all-modules194420%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx194314%_)
        (letrec ((_%compile-ssi194316%_
                  (lambda (_%code194382%_)
                    (let* ((_%path194384%_
                            (gxc#compile-output-file
                             _%ctx194314%_
                             '#f
                             '".ssi"))
                           (_%prelude194396%_
                            (let* ((_%super194386%_
                                    (##structure-ref
                                     _%ctx194314%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e194388%_
                                    (##structure-ref
                                     _%super194386%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e194388%_
                                  ((lambda (_%g194390194392%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g194390194392%_)))
                                   _%$e194388%_)
                                  ':<root>)))
                           (_%ns194398%_
                            (##structure-ref
                             _%ctx194314%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr194400%_
                            (symbol->string
                             (##structure-ref
                              _%ctx194314%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg194408%_
                            (let ((_%$e194402%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr194400%_ '#\/))))
                              (if _%$e194402%_
                                  ((lambda (_%x194405%_)
                                     (let ((__tmp195424
                                            (substring
                                             _%idstr194400%_
                                             '0
                                             _%x194405%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp195424)))
                                   _%$e194402%_)
                                  '#f)))
                           (_%rt194410%_
                            (let ((__tmp195425
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp195425 _%ctx194314%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path194384%_))
                      (gxc#with-output-to-scheme-file
                       _%path194384%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude194396%_))
                         (if _%pkg194408%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg194408%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns194398%_))
                         (newline)
                         (pretty-print _%code194382%_)
                         (if _%rt194410%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt194410%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi194317%_
                  (lambda (_%part194322%_)
                    (let* ((_%part194323194336%_ _%part194322%_)
                           (_%E194325194340%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part194323194336%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K194326194351%_
                            (lambda (_%code194343%_
                                     _%n194344%_
                                     _%phi194345%_
                                     _%phi-ctx194346%_)
                              (let ((_%code194349%_
                                     (let ((__tmp195426
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code194343%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp195426
                                        gx#current-expander-context
                                        _%phi-ctx194346%_
                                        gx#current-expander-phi
                                        _%phi194345%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx194314%_
                                  _%n194344%_
                                  '".scm")
                                 _%code194349%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part194323194336%_))
                          (let ((_%hd194327194354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part194323194336%_)))
                                (_%tl194328194356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part194323194336%_))))
                            (let ((_%phi-ctx194359%_ _%hd194327194354%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194328194356%_))
                                  (let ((_%hd194329194361%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194328194356%_)))
                                        (_%tl194330194363%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194328194356%_))))
                                    (let ((_%phi194366%_ _%hd194329194361%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl194330194363%_))
                                          (let ((_%hd194331194368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl194330194363%_)))
                                                (_%tl194332194370%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl194330194363%_))))
                                            (let ((_%n194373%_
                                                   _%hd194331194368%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl194332194370%_))
                                                  (let ((_%hd194333194375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl194332194370%_)))
                                                        (_%tl194334194377%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl194332194370%_))))
                                                    (let ((_%code194380%_
                                                           _%hd194333194375%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl194334194377%_))
                                                          (_%K194326194351%_
                                                           _%code194380%_
                                                           _%n194373%_
                                                           _%phi194366%_
                                                           _%phi-ctx194359%_)
                                                          (_%E194325194340%_))))
                                                  (_%E194325194340%_))))
                                          (_%E194325194340%_))))
                                  (_%E194325194340%_))))
                          (_%E194325194340%_))))))
          (let ((_g195427_ (gxc#generate-meta-code _%ctx194314%_)))
            (begin
              (let ((_g195428_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g195427_)
                           (##vector-length _g195427_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g195428_ 2)))
                    (error "Context expects 2 values" _g195428_)))
              (let ((_%ssi-code194319%_
                     (let () (declare (not safe)) (##vector-ref _g195427_ 0)))
                    (_%phi-code194320%_
                     (let () (declare (not safe)) (##vector-ref _g195427_ 1))))
                (begin
                  (_%compile-ssi194316%_ _%ssi-code194319%_)
                  (for-each _%compile-phi194317%_ _%phi-code194320%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx194296%_)
        (let* ((_%path194298%_
                (gxc#compile-output-file _%ctx194296%_ '#f '".ssxi.ss"))
               (_%code194300%_
                (let ((__tmp195429
                       (##structure-ref
                        _%ctx194296%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp195429)))
               (_%idstr194302%_
                (symbol->string
                 (##structure-ref
                  _%ctx194296%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg194310%_
                (let ((_%$e194304%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr194302%_ '#\/))))
                  (if _%$e194304%_
                      ((lambda (_%x194307%_)
                         (let ((__tmp195430
                                (substring _%idstr194302%_ '0 _%x194307%_)))
                           (declare (not safe))
                           (##string->symbol __tmp195430)))
                       _%$e194304%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path194298%_))
          (gxc#with-output-to-scheme-file
           _%path194298%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg194310%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg194310%_))
                 '#!void)
             (newline)
             (pretty-print _%code194300%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx194289%_)
        (let* ((_%state194291%_
                (let ((__obj195331
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj195331 _%ctx194289%_)
                  __obj195331))
               (_%ssi-code194293%_
                (let ((__tmp195431
                       (##structure-ref
                        _%ctx194289%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state194291%_
                   __tmp195431))))
          (values _%ssi-code194293%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state194291%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx194282%_)
        (let ((_%lifts194284%_ (box '())))
          (let ((__tmp195434
                 (lambda ()
                   (let ((_%code194287%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx194282%_))))
                     (if (null? (unbox _%lifts194284%_))
                         _%code194287%_
                         (cons 'begin
                               (let ((__tmp195436 (cons _%code194287%_ '()))
                                     (__tmp195435
                                      (reverse (unbox _%lifts194284%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195436 __tmp195435)))))))
                (__tmp195433
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp195432
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195434
             gxc#current-compile-lift
             _%lifts194284%_
             gxc#current-compile-marks
             __tmp195433
             gxc#current-compile-identifiers
             __tmp195432)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx194278%_)
        (let ((_%modules194280%_ (box '())))
          (let ((__tmp195437
                 (##structure-ref _%ctx194278%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules194280%_ __tmp195437))
          (reverse (unbox _%modules194280%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path194258%_ _%code194259%_ _%phi?194260%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path194258%_))
        (gxc#with-output-to-scheme-file
         _%path194258%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp195438
                                           (if _%phi?194260%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp195438)))))))
           (pretty-print _%code194259%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it194264%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path194258%_ _%phi?194260%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp195439
                         (cons 'compile-file (cons _%path194258%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it194264%_ __tmp195439))
                  (_%compile-it194264%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path194269%_ _%code194270%_)
        (let ((_%phi?194272%_ '#f))
          (gxc#compile-scm-file__%
           _%path194269%_
           _%code194270%_
           _%phi?194272%_))))
    (define gxc#compile-scm-file
      (lambda _g195441_
        (let ((_g195440_ (let () (declare (not safe)) (##length _g195441_))))
          (cond ((let () (declare (not safe)) (##fx= _g195440_ 2))
                 (apply gxc#compile-scm-file__0 _g195441_))
                ((let () (declare (not safe)) (##fx= _g195440_ 3))
                 (apply gxc#compile-scm-file__% _g195441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g195441_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?194159%_)
        (let _%lp194161%_ ((_%rest194163%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194164%_ '()))
          (let* ((_%rest194165194185%_ _%rest194163%_)
                 (_%else194169194193%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts194164%_)))
                        (reverse _%opts194164%_)))))
            (let ((_%K194179194236%_
                   (lambda (_%rest194234%_)
                     (_%lp194161%_ _%rest194234%_ _%opts194164%_)))
                  (_%K194174194218%_
                   (lambda (_%rest194216%_)
                     (_%lp194161%_ _%rest194216%_ _%opts194164%_)))
                  (_%K194171194200%_
                   (lambda (_%rest194197%_ _%opt194198%_)
                     (_%lp194161%_
                      _%rest194197%_
                      (cons _%opt194198%_ _%opts194164%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194165194185%_))
                  (let ((_%tl194181194241%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194165194185%_)))
                        (_%hd194180194239%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194165194185%_))))
                    (if (equal? _%hd194180194239%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194181194241%_))
                            (let* ((_%tl194183194244%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194181194241%_)))
                                   (_%rest194247%_ _%tl194183194244%_))
                              (_%K194179194236%_ _%rest194247%_))
                            (let ((_%opt194208%_ _%hd194180194239%_)
                                  (_%rest194210%_ _%tl194181194241%_))
                              (_%K194171194200%_
                               _%rest194210%_
                               _%opt194208%_)))
                        (if (equal? _%hd194180194239%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194181194241%_))
                                (let* ((_%tl194178194226%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194181194241%_)))
                                       (_%rest194229%_ _%tl194178194226%_))
                                  (_%K194174194218%_ _%rest194229%_))
                                (let ((_%opt194208%_ _%hd194180194239%_)
                                      (_%rest194210%_ _%tl194181194241%_))
                                  (_%K194171194200%_
                                   _%rest194210%_
                                   _%opt194208%_)))
                            (let ((_%opt194208%_ _%hd194180194239%_)
                                  (_%rest194210%_ _%tl194181194241%_))
                              (_%K194171194200%_
                               _%rest194210%_
                               _%opt194208%_)))))
                  (_%else194169194193%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?194253%_ '#f)) (gxc#gsc-link-options__% _%phi?194253%_))))
    (define gxc#gsc-link-options
      (lambda _g195443_
        (let ((_g195442_ (let () (declare (not safe)) (##length _g195443_))))
          (cond ((let () (declare (not safe)) (##fx= _g195442_ 0))
                 (apply gxc#gsc-link-options__0 _g195443_))
                ((let () (declare (not safe)) (##fx= _g195442_ 1))
                 (apply gxc#gsc-link-options__% _g195443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g195443_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords194008%_ _%static?194004194009%_ _%phi?194011%_)
        (let ((_%static?194013%_
               (if (eq? _%static?194004194009%_ absent-value)
                   '#f
                   _%static?194004194009%_)))
          (if _%phi?194011%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp194015%_ ((_%rest194017%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts194018%_ '()))
                (let* ((_%rest194019194045%_ _%rest194017%_)
                       (_%else194024194053%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts194018%_)))
                              (reverse! _%opts194018%_)))))
                  (let ((_%K194039194116%_
                         (lambda (_%rest194113%_ _%opt194114%_)
                           (if _%static?194013%_
                               (_%lp194015%_
                                _%rest194113%_
                                (cons _%opt194114%_
                                      (cons '"-cc-options" _%opts194018%_)))
                               (_%lp194015%_ _%rest194113%_ _%opts194018%_))))
                        (_%K194034194093%_
                         (lambda (_%rest194090%_ _%opt194091%_)
                           (_%lp194015%_
                            _%rest194090%_
                            (cons _%opt194091%_
                                  (cons '"-cc-options" _%opts194018%_)))))
                        (_%K194029194073%_
                         (lambda (_%rest194071%_)
                           (_%lp194015%_ _%rest194071%_ _%opts194018%_)))
                        (_%K194026194059%_
                         (lambda (_%rest194057%_)
                           (_%lp194015%_ _%rest194057%_ _%opts194018%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest194019194045%_))
                        (let ((_%tl194041194121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest194019194045%_)))
                              (_%hd194040194119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest194019194045%_))))
                          (if (equal? _%hd194040194119%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194041194121%_))
                                  (let ((_%tl194043194126%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194041194121%_)))
                                        (_%hd194042194124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194041194121%_))))
                                    (if (equal? _%hd194042194124%_ '"-Bstatic")
                                        (let ((_%opt194129%_
                                               _%hd194042194124%_)
                                              (_%rest194131%_
                                               _%tl194043194126%_))
                                          (_%K194039194116%_
                                           _%rest194131%_
                                           _%opt194129%_))
                                        (let ((_%opt194106%_
                                               _%hd194042194124%_)
                                              (_%rest194108%_
                                               _%tl194043194126%_))
                                          (_%K194034194093%_
                                           _%rest194108%_
                                           _%opt194106%_))))
                                  (let ((_%rest194065%_ _%tl194041194121%_))
                                    (_%K194026194059%_ _%rest194065%_)))
                              (if (equal? _%hd194040194119%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl194041194121%_))
                                      (let* ((_%tl194033194081%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl194041194121%_)))
                                             (_%rest194084%_
                                              _%tl194033194081%_))
                                        (_%K194029194073%_ _%rest194084%_))
                                      (let ((_%rest194065%_
                                             _%tl194041194121%_))
                                        (_%K194026194059%_ _%rest194065%_)))
                                  (let ((_%rest194065%_ _%tl194041194121%_))
                                    (_%K194026194059%_ _%rest194065%_)))))
                        (_%else194024194053%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords194136%_ _%static?194004194137%_)
        (let ((_%phi?194139%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords194136%_
           _%static?194004194137%_
           _%phi?194139%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g195445_
        (let ((_g195444_ (let () (declare (not safe)) (##length _g195445_))))
          (cond ((let () (declare (not safe)) (##fx= _g195444_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g195445_))
                ((let () (declare (not safe)) (##fx= _g195444_ 3))
                 (apply gxc#gsc-cc-options__%__% _g195445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g195445_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords194148%_ . _%args194149%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords194148%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194148%_
                  'static:
                  absent-value))
               _%args194149%_)))
    (define gxc#gsc-cc-options
      (lambda _%args194005194155%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args194005194155%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords193853%_ _%static?193849193854%_ _%phi?193856%_)
        (let ((_%static?193858%_
               (if (eq? _%static?193849193854%_ absent-value)
                   '#f
                   _%static?193849193854%_)))
          (if _%phi?193856%_
              '()
              (let _%lp193860%_ ((_%rest193862%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts193863%_ '()))
                (let* ((_%rest193864193890%_ _%rest193862%_)
                       (_%else193869193898%_
                        (lambda () (reverse! _%opts193863%_))))
                  (let ((_%K193884193961%_
                         (lambda (_%rest193958%_ _%opt193959%_)
                           (if _%static?193858%_
                               (_%lp193860%_
                                _%rest193958%_
                                (cons _%opt193959%_
                                      (cons '"-ld-options" _%opts193863%_)))
                               (_%lp193860%_ _%rest193958%_ _%opts193863%_))))
                        (_%K193879193938%_
                         (lambda (_%rest193935%_ _%opt193936%_)
                           (_%lp193860%_
                            _%rest193935%_
                            (cons _%opt193936%_
                                  (cons '"-ld-options" _%opts193863%_)))))
                        (_%K193874193918%_
                         (lambda (_%rest193916%_)
                           (_%lp193860%_ _%rest193916%_ _%opts193863%_)))
                        (_%K193871193904%_
                         (lambda (_%rest193902%_)
                           (_%lp193860%_ _%rest193902%_ _%opts193863%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest193864193890%_))
                        (let ((_%tl193886193966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest193864193890%_)))
                              (_%hd193885193964%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest193864193890%_))))
                          (if (equal? _%hd193885193964%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193886193966%_))
                                  (let ((_%tl193888193971%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193886193966%_)))
                                        (_%hd193887193969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193886193966%_))))
                                    (if (equal? _%hd193887193969%_ '"-static")
                                        (let ((_%opt193974%_
                                               _%hd193887193969%_)
                                              (_%rest193976%_
                                               _%tl193888193971%_))
                                          (_%K193884193961%_
                                           _%rest193976%_
                                           _%opt193974%_))
                                        (let ((_%opt193951%_
                                               _%hd193887193969%_)
                                              (_%rest193953%_
                                               _%tl193888193971%_))
                                          (_%K193879193938%_
                                           _%rest193953%_
                                           _%opt193951%_))))
                                  (let ((_%rest193910%_ _%tl193886193966%_))
                                    (_%K193871193904%_ _%rest193910%_)))
                              (if (equal? _%hd193885193964%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl193886193966%_))
                                      (let* ((_%tl193878193926%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl193886193966%_)))
                                             (_%rest193929%_
                                              _%tl193878193926%_))
                                        (_%K193874193918%_ _%rest193929%_))
                                      (let ((_%rest193910%_
                                             _%tl193886193966%_))
                                        (_%K193871193904%_ _%rest193910%_)))
                                  (let ((_%rest193910%_ _%tl193886193966%_))
                                    (_%K193871193904%_ _%rest193910%_)))))
                        (_%else193869193898%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords193981%_ _%static?193849193982%_)
        (let ((_%phi?193984%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords193981%_
           _%static?193849193982%_
           _%phi?193984%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g195447_
        (let ((_g195446_ (let () (declare (not safe)) (##length _g195447_))))
          (cond ((let () (declare (not safe)) (##fx= _g195446_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g195447_))
                ((let () (declare (not safe)) (##fx= _g195446_ 3))
                 (apply gxc#gsc-ld-options__%__% _g195447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g195447_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords193993%_ . _%args193994%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords193993%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193993%_
                  'static:
                  absent-value))
               _%args193994%_)))
    (define gxc#gsc-ld-options
      (lambda _%args193850194000%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args193850194000%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193844%_)
        (let ((_%user-staticdir193846%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193844%_
                       '" -I "
                       _%user-staticdir193846%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193756%_ ((_%rest193758%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193759%_ '()))
          (let* ((_%rest193760193780%_ _%rest193758%_)
                 (_%else193764193788%_ (lambda () _%opts193759%_)))
            (let ((_%K193774193831%_
                   (lambda (_%rest193829%_)
                     (_%lp193756%_ _%rest193829%_ _%opts193759%_)))
                  (_%K193769193809%_
                   (lambda (_%rest193806%_ _%opt193807%_)
                     (_%lp193756%_
                      _%rest193806%_
                      (let ((__tmp195448
                             (let ((__tmp195449
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt193807%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp195449))))
                        (declare (not safe))
                        (##append _%opts193759%_ __tmp195448)))))
                  (_%K193766193794%_
                   (lambda (_%rest193792%_)
                     (_%lp193756%_ _%rest193792%_ _%opts193759%_))))
              (if (let () (declare (not safe)) (##pair? _%rest193760193780%_))
                  (let ((_%tl193776193836%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193760193780%_)))
                        (_%hd193775193834%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193760193780%_))))
                    (if (equal? _%hd193775193834%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193776193836%_))
                            (let* ((_%tl193778193839%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193776193836%_)))
                                   (_%rest193842%_ _%tl193778193839%_))
                              (_%K193774193831%_ _%rest193842%_))
                            (let ((_%rest193800%_ _%tl193776193836%_))
                              (_%K193766193794%_ _%rest193800%_)))
                        (if (equal? _%hd193775193834%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193776193836%_))
                                (let ((_%tl193773193819%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193776193836%_)))
                                      (_%hd193772193817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193776193836%_))))
                                  (let ((_%opt193822%_ _%hd193772193817%_)
                                        (_%rest193824%_ _%tl193773193819%_))
                                    (_%K193769193809%_
                                     _%rest193824%_
                                     _%opt193822%_)))
                                (let ((_%rest193800%_ _%tl193776193836%_))
                                  (_%K193766193794%_ _%rest193800%_)))
                            (let ((_%rest193800%_ _%tl193776193836%_))
                              (_%K193766193794%_ _%rest193800%_)))))
                  (_%else193764193788%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str193753%_)
        (not (let () (declare (not safe)) (string-empty? _%str193753%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path193746%_ _%phi?193747%_)
        (let ((_%gsc-link-opts193749%_
               (gxc#gsc-link-options__% _%phi?193747%_))
              (_%gsc-cc-opts193750%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?193747%_))
              (_%gsc-ld-opts193751%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?193747%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp195450
                  (let ((__tmp195451
                         (let ((__tmp195452 (cons _%path193746%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195452
                            _%gsc-link-opts193749%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195451 _%gsc-ld-opts193751%_))))
             (declare (not safe))
             (__foldr1 cons __tmp195450 _%gsc-cc-opts193750%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193712%_ _%n193713%_ _%ext193714%_)
        (letrec ((_%module-relative-path193716%_
                  (lambda (_%ctx193744%_)
                    (path-strip-directory
                     (let ((__tmp195453
                            (##structure-ref
                             _%ctx193744%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp195453)))))
                 (_%module-source-directory193717%_
                  (lambda (_%ctx193740%_)
                    (path-directory
                     (let ((_%mpath193742%_
                            (##structure-ref
                             _%ctx193740%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath193742%_)
                           _%mpath193742%_
                           (last _%mpath193742%_))))))
                 (_%section-string193718%_
                  (lambda (_%n193734%_)
                    (if (number? _%n193734%_)
                        (number->string _%n193734%_)
                        (if (symbol? _%n193734%_)
                            (symbol->string _%n193734%_)
                            (if (string? _%n193734%_)
                                _%n193734%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193734%_)))))))
                 (_%file-name193719%_
                  (lambda (_%path193732%_)
                    (if _%n193713%_
                        (string-append
                         _%path193732%_
                         '"~"
                         (_%section-string193718%_ _%n193713%_)
                         _%ext193714%_)
                        (string-append _%path193732%_ _%ext193714%_))))
                 (_%file-path193720%_
                  (lambda ()
                    (let ((_%$e193726%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193726%_
                          ((lambda (_%outdir193729%_)
                             (path-expand
                              (_%file-name193719%_
                               (let ((__tmp195454
                                      (##structure-ref
                                       _%ctx193712%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp195454)))
                              _%outdir193729%_))
                           _%$e193726%_)
                          (path-expand
                           (_%file-name193719%_
                            (_%module-relative-path193716%_ _%ctx193712%_))
                           (_%module-source-directory193717%_
                            _%ctx193712%_)))))))
          (let ((_%path193722%_ (_%file-path193720%_)))
            (let ((__tmp195455
                   (lambda ()
                     (let ((__tmp195456 (path-directory _%path193722%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195456)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195455))
            _%path193722%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193693%_)
        (letrec ((_%file-name193695%_
                  (lambda (_%id193710%_)
                    (let ((__tmp195457 (gxc#static-module-name _%id193710%_)))
                      (declare (not safe))
                      (##string-append __tmp195457 '".scm"))))
                 (_%file-path193696%_
                  (lambda ()
                    (let* ((_%file193702%_
                            (_%file-name193695%_
                             (##structure-ref
                              _%ctx193693%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e193704%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193704%_
                          ((lambda (_%outdir193707%_)
                             (path-expand
                              _%file193702%_
                              (path-expand '"static" _%outdir193707%_)))
                           _%$e193704%_)
                          (path-expand _%file193702%_ '"static"))))))
          (let ((_%path193698%_ (_%file-path193696%_)))
            (let ((__tmp195458
                   (lambda ()
                     (let ((__tmp195459 (path-directory _%path193698%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195459)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195458))
            _%path193698%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193686%_ _%opts193687%_)
        (let ((_%$e193689%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193687%_))))
          (if _%$e193689%_
              (values _%$e193689%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx193686%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr193676%_)
        (if (string? _%idstr193676%_)
            (let* ((_%str193679%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr193676%_)))
                   (_%strs193681%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str193679%_ '#\/))))
              (declare (not safe))
              (string-join _%strs193681%_ '"__"))
            (if (symbol? _%idstr193676%_)
                (gxc#static-module-name (symbol->string _%idstr193676%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193676%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp195460
               (let ((__tmp195461 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp195461 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp195460))))
    (define gxc#invoke__%
      (lambda (_%@@keywords193640%_
               _%stdout-redirection193636193641%_
               _%stderr-redirection193637193643%_
               _%program193645%_
               _%args193646%_)
        (let* ((_%stdout-redirection193648%_
                (if (eq? _%stdout-redirection193636193641%_ absent-value)
                    '#f
                    _%stdout-redirection193636193641%_))
               (_%stderr-redirection193650%_
                (if (eq? _%stderr-redirection193637193643%_ absent-value)
                    '#f
                    _%stderr-redirection193637193643%_)))
          (let ((__tmp195462 (cons _%program193645%_ _%args193646%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp195462))
          (let* ((_%proc193652%_
                  (open-process
                   (cons 'path:
                         (cons _%program193645%_
                               (cons 'arguments:
                                     (cons _%args193646%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193648%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193657%_
                  (if (or _%stdout-redirection193648%_
                          _%stderr-redirection193650%_)
                      (read-line _%proc193652%_ '#f)
                      '#f))
                 (_%status193660%_ (process-status _%proc193652%_)))
            (let () (declare (not safe)) (##close-port _%proc193652%_))
            (if (zero? _%status193660%_)
                '#!void
                (begin
                  (display _%output193657%_)
                  (let ((__tmp195463 (cons _%program193645%_ _%args193646%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp195463
                     _%status193660%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193665%_ . _%args193666%_)
        (apply gxc#invoke__%
               _%@@keywords193665%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193665%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193665%_
                  'stderr-redirection:
                  absent-value))
               _%args193666%_)))
    (define gxc#invoke
      (lambda _%args193638193672%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193638193672%_)))))
