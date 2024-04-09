(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712697262)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp195295 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp195295))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp195296 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp195296))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195152%_ _%fun195153%_)
        (with-output-to-file
         (cons 'path: (cons _%path195152%_ gxc#scheme-file-settings))
         _%fun195153%_)))
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
      (lambda (_%gerbil-libdir195147%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195147%_)))
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
      (lambda (_%dir195145%_) (delete-file-or-directory _%dir195145%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195118%_ _%opts195119%_)
        (if (string? _%srcpath195118%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195118%_)))
        (let ((_%outdir195121%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195119%_)))
              (_%invoke-gsc?195122%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195119%_)))
              (_%gsc-options195123%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195119%_)))
              (_%keep-scm?195124%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195119%_)))
              (_%verbosity195125%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195119%_)))
              (_%optimize195126%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195119%_)))
              (_%debug195127%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195119%_)))
              (_%gen-ssxi195128%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195119%_)))
              (_%parallel?195129%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts195119%_))))
          (if _%outdir195121%_
              (let ((__tmp195297
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195121%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195297))
              '#!void)
          (if _%optimize195126%_
              (let ((__tmp195298
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195298))
              '#!void)
          (let ((__tmp195301
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195118%_))
                   (gxc#compile-top-module
                    (let ((__tmp195302
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath195118%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195302)))))
                (__tmp195300 (gxc#compile-timestamp))
                (__tmp195299
                 (cons 'compile-module (cons _%srcpath195118%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195301
             gxc#current-compile-output-dir
             _%outdir195121%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195122%_
             gxc#current-compile-gsc-options
             _%gsc-options195123%_
             gxc#current-compile-keep-scm
             _%keep-scm?195124%_
             gxc#current-compile-verbose
             _%verbosity195125%_
             gxc#current-compile-optimize
             _%optimize195126%_
             gxc#current-compile-debug
             _%debug195127%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195128%_
             gxc#current-compile-timestamp
             __tmp195300
             gxc#current-compile-context
             __tmp195299
             gxc#current-compile-parallel
             _%parallel?195129%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195138%_)
        (let ((_%opts195140%_ '()))
          (gxc#compile-module__% _%srcpath195138%_ _%opts195140%_))))
    (define gxc#compile-module
      (lambda _g195304_
        (let ((_g195303_ (let () (declare (not safe)) (##length _g195304_))))
          (cond ((let () (declare (not safe)) (##fx= _g195303_ 1))
                 (apply gxc#compile-module__0 _g195304_))
                ((let () (declare (not safe)) (##fx= _g195303_ 2))
                 (apply gxc#compile-module__% _g195304_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g195304_))))))
    (define gxc#compile-exe__%
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
              (_%debug195101%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195094%_)))
              (_%parallel?195102%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts195094%_))))
          (if _%outdir195096%_
              (let ((__tmp195305
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195096%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195305))
              '#!void)
          (let ((__tmp195308
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195093%_))
                   (gxc#compile-executable-module
                    (let ((__tmp195309
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath195093%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp195309))
                    _%opts195094%_)))
                (__tmp195307 (gxc#compile-timestamp))
                (__tmp195306 (cons 'compile-exe (cons _%srcpath195093%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195308
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
             gxc#current-compile-debug
             _%debug195101%_
             gxc#current-compile-timestamp
             __tmp195307
             gxc#current-compile-context
             __tmp195306
             gxc#current-compile-parallel
             _%parallel?195102%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195110%_)
        (let ((_%opts195112%_ '()))
          (gxc#compile-exe__% _%srcpath195110%_ _%opts195112%_))))
    (define gxc#compile-exe
      (lambda _g195311_
        (let ((_g195310_ (let () (declare (not safe)) (##length _g195311_))))
          (cond ((let () (declare (not safe)) (##fx= _g195310_ 1))
                 (apply gxc#compile-exe__0 _g195311_))
                ((let () (declare (not safe)) (##fx= _g195310_ 2))
                 (apply gxc#compile-exe__% _g195311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g195311_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195089%_ _%opts195090%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195090%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx195089%_
             _%opts195090%_)
            (gxc#compile-executable-module/separate
             _%ctx195089%_
             _%opts195090%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194879%_ _%opts194880%_)
        (letrec ((_%generate-stub194882%_
                  (lambda (_%builtin-modules195085%_)
                    (let ((_%mod-main195087%_
                           (gxc#find-runtime-symbol _%ctx194879%_ 'main)))
                      (let ((__tmp195312
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules195085%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp195312))
                      (let ((__tmp195313
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195087%_
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
                        (##write __tmp195313))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194883%_
                  (lambda (_%gerbil-libdir195083%_)
                    (let ((__tmp195314
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir195083%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp195314 read))))
                 (_%replace-extension194884%_
                  (lambda (_%path195080%_ _%ext195081%_)
                    (string-append
                     (path-strip-extension _%path195080%_)
                     _%ext195081%_)))
                 (_%userlib-module?194885%_
                  (lambda (_%ctx195078%_)
                    (if (not (_%exclude-module?194887%_ _%ctx195078%_))
                        (not (_%libgerbil-module?194886%_ _%ctx195078%_))
                        '#f)))
                 (_%libgerbil-module?194886%_
                  (lambda (_%ctx195071%_)
                    (let ((_%id-str195073%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195071%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?194887%_ _%id-str195073%_))
                          (let ((_%$e195075%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195073%_))))
                            (if _%$e195075%_
                                _%$e195075%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str195073%_))))
                          '#f))))
                 (_%exclude-module?194887%_
                  (lambda (_%ctx-or-str195067%_)
                    (let ((_%str195069%_
                           (if (string? _%ctx-or-str195067%_)
                               _%ctx-or-str195067%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str195067%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str195069%_))))
                 (_%not-file-empty?194888%_
                  (lambda (_%path195065%_)
                    (not (gxc#file-empty? _%path195065%_))))
                 (_%fold-libgerbil-runtime-scm194889%_
                  (lambda (_%gerbil-staticdir195058%_ _%libgerbil-scm195059%_)
                    (let ((_%gerbil-runtime-scm195063%_
                           (let ((__tmp195315
                                  (lambda (_%rtm195061%_)
                                    (path-expand
                                     (let ((__tmp195316
                                            (let ((__tmp195317
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm195061%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp195317
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp195316 '".scm"))
                                     _%gerbil-staticdir195058%_))))
                             (declare (not safe))
                             (##map __tmp195315 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates194890%_
                       (append _%gerbil-runtime-scm195063%_
                               _%libgerbil-scm195059%_)))))
                 (_%remove-duplicates194890%_
                  (lambda (_%strlst195018%_)
                    (let _%loop195020%_ ((_%rest195022%_ _%strlst195018%_)
                                         (_%result195023%_ '()))
                      (let* ((_%rest195024195032%_ _%rest195022%_)
                             (_%else195026195040%_
                              (lambda () (reverse! _%result195023%_)))
                             (_%K195028195046%_
                              (lambda (_%rest195043%_ _%path195044%_)
                                (if (member _%path195044%_ _%result195023%_)
                                    (_%loop195020%_
                                     _%rest195043%_
                                     _%result195023%_)
                                    (_%loop195020%_
                                     _%rest195043%_
                                     (cons _%path195044%_
                                           _%result195023%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest195024195032%_))
                            (let ((_%hd195029195049%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest195024195032%_)))
                                  (_%tl195030195051%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest195024195032%_))))
                              (let* ((_%path195054%_ _%hd195029195049%_)
                                     (_%rest195056%_ _%tl195030195051%_))
                                (_%K195028195046%_
                                 _%rest195056%_
                                 _%path195054%_)))
                            (_%else195026195040%_))))))
                 (_%compile-stub194891%_
                  (lambda (_%output-scm194898%_ _%output-bin194899%_)
                    (let* ((_%gerbil-home194901%_
                            (let ((__tmp195318
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195318)))
                           (_%gerbil-libdir194903%_
                            (path-expand '"lib" _%gerbil-home194901%_))
                           (_%gerbil-staticdir194905%_
                            (path-expand '"static" _%gerbil-libdir194903%_))
                           (_%deps194907%_
                            (gxc#find-runtime-module-deps _%ctx194879%_))
                           (_%libgerbil-deps194909%_
                            (filter _%libgerbil-module?194886%_
                                    _%deps194907%_))
                           (_%libgerbil-scm194911%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps194909%_)))
                           (_%libgerbil-scm194913%_
                            (_%fold-libgerbil-runtime-scm194889%_
                             _%gerbil-staticdir194905%_
                             _%libgerbil-scm194911%_))
                           (_%libgerbil-c194919%_
                            (map (lambda (_%g194914194916%_)
                                   (_%replace-extension194884%_
                                    _%g194914194916%_
                                    '".c"))
                                 _%libgerbil-scm194913%_))
                           (_%libgerbil-o194925%_
                            (map (lambda (_%g194920194922%_)
                                   (_%replace-extension194884%_
                                    _%g194920194922%_
                                    '".o"))
                                 _%libgerbil-scm194913%_))
                           (_%src-deps194927%_
                            (filter _%userlib-module?194885%_ _%deps194907%_))
                           (_%src-deps-scm194929%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps194927%_)))
                           (_%src-deps-scm194931%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194888%_
                               _%src-deps-scm194929%_)))
                           (_%src-deps-scm194933%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194931%_)))
                           (_%src-deps-c194939%_
                            (let ((__tmp195319
                                   (lambda (_%g194934194936%_)
                                     (_%replace-extension194884%_
                                      _%g194934194936%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp195319 _%src-deps-scm194933%_)))
                           (_%src-deps-o194945%_
                            (let ((__tmp195320
                                   (lambda (_%g194940194942%_)
                                     (_%replace-extension194884%_
                                      _%g194940194942%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp195320 _%src-deps-scm194933%_)))
                           (_%src-bin-scm194947%_
                            (gxc#find-static-module-file _%ctx194879%_))
                           (_%src-bin-scm194949%_
                            (path-expand _%src-bin-scm194947%_))
                           (_%src-bin-c194951%_
                            (_%replace-extension194884%_
                             _%src-bin-scm194949%_
                             '".c"))
                           (_%src-bin-o194953%_
                            (_%replace-extension194884%_
                             _%src-bin-scm194949%_
                             '".o"))
                           (_%output-bin194955%_
                            (path-expand _%output-bin194899%_))
                           (_%output-scm194957%_
                            (path-expand _%output-scm194898%_))
                           (_%output-c194959%_
                            (_%replace-extension194884%_
                             _%output-scm194957%_
                             '".c"))
                           (_%output-o194961%_
                            (_%replace-extension194884%_
                             _%output-scm194957%_
                             '".o"))
                           (_%output_-c194963%_
                            (_%replace-extension194884%_
                             _%output-scm194957%_
                             '"_.c"))
                           (_%output_-o194965%_
                            (_%replace-extension194884%_
                             _%output-scm194957%_
                             '"_.o"))
                           (_%gsc-link-opts194967%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194969%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts194971%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir194905%_))
                           (_%output-ld-opts194973%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts194975%_
                            (_%get-libgerbil-ld-opts194883%_
                             _%gerbil-libdir194903%_))
                           (_%rpath194977%_
                            (gxc#gerbil-rpath _%gerbil-libdir194903%_))
                           (_%builtin-modules194981%_
                            (_%remove-duplicates194890%_
                             (let ((__tmp195321
                                    (let ((__tmp195323
                                           (lambda (_%mod194979%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod194979%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp195322
                                           (cons _%ctx194879%_
                                                 _%deps194907%_)))
                                      (declare (not safe))
                                      (##map __tmp195323 __tmp195322))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp195321)))))
                      (letrec ((_%compile-obj194984%_
                                (lambda (_%scm-path194991%_ _%c-path194992%_)
                                  (let* ((_%o-path194994%_
                                          (_%replace-extension194884%_
                                           _%c-path194992%_
                                           '".o"))
                                         (_%lock194996%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path194994%_
                                             '".lock")))
                                         (_%locked194998%_ '#f)
                                         (_%unlock195001%_
                                          (lambda ()
                                            (close-port _%locked194998%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock194996%_)))))
                                    (let _%retry195004%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock194996%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry195004%_))
                                          (begin
                                            (set! _%locked194998%_
                                                  (let ((__tmp195324
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock194996%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp195324)))
                                            (if _%locked194998%_
                                                '#!void
                                                (_%retry195004%_)))))
                                    (let ((__tmp195326
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path194994%_)))
                                                     (not _%scm-path194991%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path194991%_
                                                        _%o-path194994%_)))
                                                 (let ((_%gsc-cc-opts195015%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp195327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp195328 (cons _%c-path194992%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195328
                            _%gsc-static-opts194971%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195327 _%gsc-cc-opts195015%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp195325
                                           (lambda () (_%unlock195001%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp195326
                                       __tmp195325))))))
                        (let ((__tmp195329
                               (lambda ()
                                 (let ((__tmp195330
                                        (path-directory _%output-bin194955%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp195330)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp195329))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194957%_
                         (lambda ()
                           (_%generate-stub194882%_
                            _%builtin-modules194981%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it194989%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp195331
                                                   (let ((__tmp195332
                                                          (let ((__tmp195333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm194949%_
                               (cons _%output-scm194957%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195333 _%src-deps-scm194933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp195332
                                                      _%libgerbil-c194919%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp195331
                                               _%gsc-link-opts194967%_))))
                                     (for-each
                                      _%compile-obj194984%_
                                      (let ((__tmp195334
                                             (cons _%src-bin-scm194949%_
                                                   (cons _%output-scm194957%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195334
                                         _%src-deps-scm194933%_))
                                      (let ((__tmp195335
                                             (cons _%src-bin-c194951%_
                                                   (cons _%output-c194959%_
                                                         (cons _%output_-c194963%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195335
                                         _%src-deps-c194939%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin194955%_
                                                        (let ((__tmp195336
                                                               (cons _%src-bin-o194953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o194961%_
                                   (cons _%output_-o194965%_
                                         (let ((__tmp195337
                                                (let ((__tmp195338
                                                       (let ((__tmp195340
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir194903%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts194975%_))))
                     (__tmp195339
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath194977%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp195340 __tmp195339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195338
                                                   _%output-ld-opts194973%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195337
                                            _%libgerbil-o194925%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp195336 _%src-deps-o194945%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp195341
                                            (cons _%output-c194959%_
                                                  (cons _%output_-c194963%_
                                                        (cons _%output-o194961%_
                                                              (cons _%output_-o194965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp195341)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it194989%_))
                                  (_%compile-it194989%_)))
                            '#!void))))))
          (let* ((_%output-bin194893%_
                  (gxc#compile-exe-output-file _%ctx194879%_ _%opts194880%_))
                 (_%output-scm194895%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194893%_ '"__exe.scm"))))
            (_%compile-stub194891%_
             _%output-scm194895%_
             _%output-bin194893%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194701%_ _%opts194702%_)
        (letrec ((_%reset-declare194704%_
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
                 (_%generate-stub194705%_
                  (lambda (_%deps194870%_)
                    (let ((_%mod-main194872%_
                           (gxc#find-runtime-symbol _%ctx194701%_ 'main))
                          (_%reset-decl194873%_ (_%reset-declare194704%_))
                          (_%user-decl194874%_ (_%user-declare194706%_)))
                      (for-each
                       (lambda (_%dep194876%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194873%_))
                         (newline)
                         (if _%user-decl194874%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194874%_))
                               (newline))
                             '#!void)
                         (let ((__tmp195342
                                (cons 'include (cons _%dep194876%_ '()))))
                           (declare (not safe))
                           (##write __tmp195342))
                         (newline))
                       _%deps194870%_)
                      (let ((__tmp195343
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp195343))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194706%_
                  (lambda ()
                    (let* ((_%gsc-opts194775%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194702%_)))
                           (_%gsc-prelude194777%_
                            (if _%gsc-opts194775%_
                                (member '"-prelude" _%gsc-opts194775%_)
                                '#f))
                           (_%gsc-prelude194779%_
                            (if _%gsc-prelude194777%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194777%_)))
                                '#f)))
                      (let _%lp194782%_ ((_%rest194784%_
                                          (cons _%gsc-prelude194779%_ '()))
                                         (_%user-decls194785%_ '()))
                        (let* ((_%rest194786194794%_ _%rest194784%_)
                               (_%else194788194802%_
                                (lambda ()
                                  (if (null? _%user-decls194785%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194785%_)))))
                               (_%K194790194858%_
                                (lambda (_%rest194805%_ _%expr194806%_)
                                  (let* ((_%expr194807194819%_ _%expr194806%_)
                                         (_%else194810194827%_
                                          (lambda ()
                                            (_%lp194782%_
                                             _%rest194805%_
                                             _%user-decls194785%_))))
                                    (let ((_%K194815194848%_
                                           (lambda (_%decls194846%_)
                                             (_%lp194782%_
                                              _%rest194805%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls194785%_
                                                 _%decls194846%_)))))
                                          (_%K194812194833%_
                                           (lambda (_%exprs194831%_)
                                             (_%lp194782%_
                                              (append _%exprs194831%_
                                                      _%rest194805%_)
                                              _%user-decls194785%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194807194819%_))
                                          (let ((_%tl194817194853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194807194819%_)))
                                                (_%hd194816194851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194807194819%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194816194851%_
                                                         'declare))
                                                (let ((_%decls194856%_
                                                       _%tl194817194853%_))
                                                  (_%K194815194848%_
                                                   _%decls194856%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194816194851%_
                                                             'begin))
                                                    (let ((_%exprs194841%_
                                                           _%tl194817194853%_))
                                                      (_%K194812194833%_
                                                       _%exprs194841%_))
                                                    (_%else194810194827%_))))
                                          (_%else194810194827%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194786194794%_))
                              (let ((_%hd194791194861%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194786194794%_)))
                                    (_%tl194792194863%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194786194794%_))))
                                (let* ((_%expr194866%_ _%hd194791194861%_)
                                       (_%rest194868%_ _%tl194792194863%_))
                                  (_%K194790194858%_
                                   _%rest194868%_
                                   _%expr194866%_)))
                              (_%else194788194802%_)))))))
                 (_%compile-stub194707%_
                  (lambda (_%output-scm194714%_ _%output-bin194715%_)
                    (let* ((_%gerbil-home194717%_
                            (let ((__tmp195344
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195344)))
                           (_%gerbil-libdir194719%_
                            (path-expand '"lib" _%gerbil-home194717%_))
                           (_%runtime194721%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194723%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194717%_))
                           (_%include-gambit-sharp194725%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194723%_
                               '"\")")))
                           (_%bin-scm194727%_
                            (gxc#find-static-module-file _%ctx194701%_))
                           (_%deps194729%_
                            (gxc#find-runtime-module-deps _%ctx194701%_))
                           (_%deps194731%_
                            (map gxc#find-static-module-file _%deps194729%_))
                           (_%deps194736%_
                            (let ((__tmp195345
                                   (lambda (_%$obj194733%_)
                                     (not (gxc#file-empty? _%$obj194733%_)))))
                              (declare (not safe))
                              (##filter __tmp195345 _%deps194731%_)))
                           (_%deps194740%_
                            (let ((__tmp195346
                                   (lambda (_%f194738%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f194738%_
                                             _%runtime194721%_))))))
                              (declare (not safe))
                              (##filter __tmp195346 _%deps194736%_)))
                           (_%output-base194742%_
                            (let ((__tmp195347
                                   (path-strip-extension
                                    _%output-scm194714%_)))
                              (declare (not safe))
                              (##string-append __tmp195347)))
                           (_%output-c194744%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194742%_ '".c")))
                           (_%output-o194746%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194742%_ '".o")))
                           (_%output-c_194748%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194742%_ '"_.c")))
                           (_%output-o_194750%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194742%_ '"_.o")))
                           (_%gsc-link-opts194752%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts194754%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts194756%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir194719%_)))
                           (_%output-ld-opts194758%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros194760%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194725%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194725%_
                                            '()))))
                           (_%gsc-link-opts194762%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194752%_
                               _%gsc-gx-macros194760%_)))
                           (_%rpath194764%_
                            (gxc#gerbil-rpath _%gerbil-libdir194719%_))
                           (_%default-ld-options194766%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp195348
                             (lambda ()
                               (let ((__tmp195349
                                      (path-directory _%output-bin194715%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195349)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195348))
                      (gxc#with-output-to-scheme-file
                       _%output-scm194714%_
                       (lambda ()
                         (_%generate-stub194705%_
                          (let ((__tmp195350
                                 (let ((__tmp195351
                                        (cons _%bin-scm194727%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp195351
                                    _%deps194740%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp195350 _%runtime194721%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it194772%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_194748%_
                                                      (let ((__tmp195352
                                                             (cons _%output-scm194714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp195352 _%gsc-link-opts194762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp195353
                                                 (let ((__tmp195354
                                                        (cons _%output-c194744%_
                                                              (cons _%output-c_194748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp195354
                                                    _%gsc-static-opts194756%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195353
                                             _%gsc-cc-opts194754%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin194715%_
                                                      (cons _%output-o194746%_
                                                            (cons _%output-o_194750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp195355
                                 (let ((__tmp195357
                                        (cons '"-L"
                                              (cons _%gerbil-libdir194719%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options194766%_))))
                                       (__tmp195356
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath194764%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp195357 __tmp195356))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp195355
                             _%output-ld-opts194758%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it194772%_))
                                (_%compile-it194772%_)))
                          '#!void)))))
          (let* ((_%output-bin194709%_
                  (gxc#compile-exe-output-file _%ctx194701%_ _%opts194702%_))
                 (_%output-scm194711%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194709%_ '"__exe.scm"))))
            (_%compile-stub194707%_
             _%output-scm194711%_
             _%output-bin194709%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx194650%_ _%id194651%_)
        (let ((_%$e194697%_
               (let ((__tmp195359
                      (lambda (_%e194652194654%_)
                        (let* ((_%g194656194666%_ _%e194652194654%_)
                               (_%else194658194674%_ (lambda () '#f))
                               (_%K194660194678%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194656194666%_
                                 'gx#module-export::t))
                              (let* ((_%e194661194681%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194656194666%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194662194684%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194656194666%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194663194687%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194656194666%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194663194687%_ '0))
                                    (let ((_%e194664194690%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194656194666%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194692194694%_)
                                             (eq? _%g194692194694%_
                                                  _%id194651%_))
                                           _%e194664194690%_)
                                          (_%K194660194678%_)
                                          (_%else194658194674%_)))
                                    (_%else194658194674%_)))
                              (_%else194658194674%_)))))
                     (__tmp195358
                      (##structure-ref
                       _%ctx194650%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp195359 __tmp195358))))
          (if _%$e194697%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194697%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194641%_ _%id194642%_)
        (let ((_%$e194644%_
               (gxc#find-export-binding _%ctx194641%_ _%id194642%_)))
          (if _%$e194644%_
              ((lambda (_%bind194647%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194647%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194642%_)))
                 (##structure-ref _%bind194647%_ '1 gx#binding::t '#f))
               _%$e194644%_)
              (let ((__tmp195360
                     (##structure-ref
                      _%ctx194641%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp195360
                 _%id194642%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx194507%_)
        (letrec* ((_%ht194509%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template194510%_
                   (lambda (_%in194586%_ _%phi194587%_)
                     (let ((_%iphi194589%_
                            (fx+ _%phi194587%_
                                 (##direct-structure-ref
                                  _%in194586%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194590%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194586%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194592%_ ((_%rest194594%_ _%imports194590%_)
                                          (_%r194595%_ '()))
                         (let* ((_%rest194596194604%_ _%rest194594%_)
                                (_%else194598194612%_ (lambda () _%r194595%_))
                                (_%K194600194629%_
                                 (lambda (_%rest194615%_ _%in194616%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194616%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi194589%_))
                                           (_%lp194592%_
                                            _%rest194615%_
                                            (cons _%in194616%_ _%r194595%_))
                                           (_%lp194592%_
                                            _%rest194615%_
                                            _%r194595%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194616%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194620%_
                                                  (fx+ _%phi194587%_
                                                       (##direct-structure-ref
                                                        _%in194616%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194620%_))
                                                 (_%lp194592%_
                                                  _%rest194615%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in194616%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r194595%_))
                                                 (_%lp194592%_
                                                  _%rest194615%_
                                                  _%r194595%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194616%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194623%_
                                                      (fx+ _%iphi194589%_
                                                           (##direct-structure-ref
                                                            _%in194616%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194623%_))
                                                     (_%lp194592%_
                                                      _%rest194615%_
                                                      (cons (##direct-structure-ref
                                                             _%in194616%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r194595%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194623%_))
                                                         (_%lp194592%_
                                                          _%rest194615%_
                                                          (let ((__tmp195361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template194510%_
                          _%in194616%_
                          _%iphi194589%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r194595%_ __tmp195361)))
                 (_%lp194592%_ _%rest194615%_ _%r194595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp194592%_
                                                _%rest194615%_
                                                _%r194595%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194596194604%_))
                               (let ((_%hd194601194632%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194596194604%_)))
                                     (_%tl194602194634%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194596194604%_))))
                                 (let* ((_%in194637%_ _%hd194601194632%_)
                                        (_%rest194639%_ _%tl194602194634%_))
                                   (_%K194600194629%_
                                    _%rest194639%_
                                    _%in194637%_)))
                               (_%else194598194612%_)))))))
                  (_%find-deps194511%_
                   (lambda (_%rest194519%_ _%deps194520%_)
                     (let* ((_%rest194521194529%_ _%rest194519%_)
                            (_%else194523194537%_ (lambda () _%deps194520%_))
                            (_%K194525194574%_
                             (lambda (_%rest194540%_ _%hd194541%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd194541%_
                                      'gx#module-context::t))
                                   (let ((_%id194544%_
                                          (##structure-ref
                                           _%hd194541%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports194545%_
                                          (##structure-ref
                                           _%hd194541%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht194509%_
                                            _%id194544%_))
                                         (_%find-deps194511%_
                                          _%rest194540%_
                                          _%deps194520%_)
                                         (let ((_%$e194548%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd194541%_))))
                                           (if _%$e194548%_
                                               ((lambda (_%pre194551%_)
                                                  (let ((_%xdeps194553%_
                                                         (_%find-deps194511%_
                                                          (cons _%pre194551%_
                                                                _%imports194545%_)
                                                          _%deps194520%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht194509%_
                                                       _%id194544%_
                                                       _%hd194541%_))
                                                    (_%find-deps194511%_
                                                     _%rest194540%_
                                                     (cons _%hd194541%_
                                                           _%xdeps194553%_))))
                                                _%$e194548%_)
                                               (let ((_%xdeps194556%_
                                                      (_%find-deps194511%_
                                                       _%imports194545%_
                                                       _%deps194520%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht194509%_
                                                    _%id194544%_
                                                    _%hd194541%_))
                                                 (_%find-deps194511%_
                                                  _%rest194540%_
                                                  (cons _%hd194541%_
                                                        _%xdeps194556%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd194541%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194559%_
                                              (##structure-ref
                                               _%hd194541%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht194509%_
                                                _%id194559%_))
                                             (_%find-deps194511%_
                                              _%rest194540%_
                                              _%deps194520%_)
                                             (let ((_%xdeps194563%_
                                                    (_%find-deps194511%_
                                                     (##structure-ref
                                                      _%hd194541%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps194520%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht194509%_
                                                      _%id194559%_))
                                                   (_%find-deps194511%_
                                                    _%rest194540%_
                                                    _%xdeps194563%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht194509%_
                                                        _%id194559%_
                                                        _%hd194541%_))
                                                     (_%find-deps194511%_
                                                      _%rest194540%_
                                                      (cons _%hd194541%_
                                                            _%xdeps194563%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd194541%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd194541%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps194511%_
                                                (cons (##direct-structure-ref
                                                       _%hd194541%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest194540%_)
                                                _%deps194520%_)
                                               (_%find-deps194511%_
                                                _%rest194540%_
                                                _%deps194520%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd194541%_
                                                  'gx#module-export::t))
                                               (_%find-deps194511%_
                                                (cons (##direct-structure-ref
                                                       _%hd194541%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest194540%_)
                                                _%deps194520%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd194541%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd194541%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps194511%_
                (cons (##direct-structure-ref
                       _%hd194541%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest194540%_)
                _%deps194520%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd194541%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps194570%_
                          (_%import-set-template194510%_ _%hd194541%_ '0)))
                     (_%find-deps194511%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest194540%_ _%xdeps194570%_))
                      _%deps194520%_))
                   (_%find-deps194511%_ _%rest194540%_ _%deps194520%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd194541%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest194521194529%_))
                           (let ((_%hd194526194577%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest194521194529%_)))
                                 (_%tl194527194579%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest194521194529%_))))
                             (let* ((_%hd194582%_ _%hd194526194577%_)
                                    (_%rest194584%_ _%tl194527194579%_))
                               (_%K194525194574%_
                                _%rest194584%_
                                _%hd194582%_)))
                           (_%else194523194537%_))))))
          (let ((__tmp195362
                 (filter gx#expander-context-id
                         (_%find-deps194511%_
                          (let ((_%$e194513%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx194507%_))))
                            (if _%$e194513%_
                                ((lambda (_%pre194516%_)
                                   (cons _%pre194516%_
                                         (##structure-ref
                                          _%ctx194507%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e194513%_)
                                (##structure-ref
                                 _%ctx194507%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp195362)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx194437%_)
        (let* ((_%context-id194439%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx194437%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx194437%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx194437%_)))
               (_%scm194441%_
                (let ((__tmp195363
                       (gxc#static-module-name _%context-id194439%_)))
                  (declare (not safe))
                  (##string-append __tmp195363 '".scm")))
               (_%dirs194443%_ (let () (declare (not safe)) (load-path)))
               (_%dirs194449%_
                (let ((_%user-libpath194445%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath194445%_
                      (let ((_%user-libpath194447%_
                             (path-expand '"lib" _%user-libpath194445%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath194447%_ _%dirs194443%_))
                            _%dirs194443%_
                            (cons _%user-libpath194447%_ _%dirs194443%_)))
                      _%dirs194443%_)))
               (_%dirs194459%_
                (let ((_%$e194451%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e194451%_
                      ((lambda (_%g194453194455%_)
                         (cons _%g194453194455%_ _%dirs194449%_))
                       _%$e194451%_)
                      _%dirs194449%_)))
               (_%dirs194465%_
                (let ((__tmp195364
                       (lambda (_%g194460194462%_)
                         (path-expand '"static" _%g194460194462%_))))
                  (declare (not safe))
                  (##map __tmp195364 _%dirs194459%_))))
          (let _%lp194468%_ ((_%rest194470%_ _%dirs194465%_))
            (let* ((_%rest194471194479%_ _%rest194470%_)
                   (_%else194473194487%_
                    (lambda ()
                      (let ((__tmp195365
                             (##structure-ref
                              _%ctx194437%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp195365
                         _%scm194441%_))))
                   (_%K194475194495%_
                    (lambda (_%rest194490%_ _%dir194491%_)
                      (let ((_%path194493%_
                             (path-expand _%scm194441%_ _%dir194491%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194493%_))
                            _%path194493%_
                            (_%lp194468%_ _%rest194490%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest194471194479%_))
                  (let ((_%hd194476194498%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194471194479%_)))
                        (_%tl194477194500%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194471194479%_))))
                    (let* ((_%dir194503%_ _%hd194476194498%_)
                           (_%rest194505%_ _%tl194477194500%_))
                      (_%K194475194495%_ _%rest194505%_ _%dir194503%_)))
                  (_%else194473194487%_)))))))
    (define gxc#file-empty?
      (lambda (_%path194435%_)
        (zero? (let ((__tmp195366 (file-info _%path194435%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp195366)))))
    (define gxc#compile-top-module
      (lambda (_%ctx194431%_)
        (let ((__tmp195370
               (lambda ()
                 (let ((__tmp195371
                        (##structure-ref
                         _%ctx194431%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp195371))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp195372
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx194431%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp195372))
                     '#!void)
                 (gxc#collect-bindings _%ctx194431%_)
                 (gxc#compile-runtime-code _%ctx194431%_)
                 (gxc#compile-meta-code _%ctx194431%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx194431%_)
                     '#!void)))
              (__tmp195369
               (let ((__obj195293
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj195293)
                 __obj195293))
              (__tmp195368 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195367
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
           __tmp195370
           gx#current-expander-context
           _%ctx194431%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp195369
           gxc#current-compile-runtime-sections
           __tmp195368
           gxc#current-compile-runtime-names
           __tmp195367))))
    (define gxc#collect-bindings
      (lambda (_%ctx194429%_)
        (let ((__tmp195373
               (##structure-ref _%ctx194429%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp195373))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx194377%_)
        (letrec ((_%compile1194379%_
                  (lambda (_%ctx194418%_)
                    (let* ((_%code194420%_
                            (##structure-ref
                             _%ctx194418%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm194424%_
                            (let ((_%idstr194422%_
                                   (let ((__tmp195374
                                          (##structure-ref
                                           _%ctx194418%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp195374))))
                              (declare (not safe))
                              (##string-append _%idstr194422%_ '"~0")))
                           (_%rtc?194426%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code194420%_))))
                      (if _%rtc?194426%_
                          (let ((__tmp195375
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp195375
                             _%ctx194418%_
                             _%rtm194424%_))
                          '#!void)
                      (_%generate-runtime-code194381%_
                       _%ctx194418%_
                       _%code194420%_
                       (if _%rtc?194426%_ _%rtm194424%_ '#f)))))
                 (_%context-timestamp194380%_
                  (lambda (_%ctx194416%_)
                    (let ((__tmp195376
                           (let ((__tmp195377
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx194416%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp195377 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp195376))))
                 (_%generate-runtime-code194381%_
                  (lambda (_%ctx194388%_ _%code194389%_ _%rtm194390%_)
                    (let* ((_%runtime-code?194392%_ (if _%rtm194390%_ '#t '#f))
                           (_%lifts194394%_ (box '()))
                           (_%runtime-code194397%_
                            (if _%runtime-code?194392%_
                                (let ((__tmp195380
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code194389%_))))
                                      (__tmp195379
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp195378
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp195380
                                   gx#current-expander-context
                                   _%ctx194388%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts194394%_
                                   gxc#current-compile-marks
                                   __tmp195379
                                   gxc#current-compile-identifiers
                                   __tmp195378))
                                '#f))
                           (_%runtime-code194399%_
                            (if _%runtime-code?194392%_
                                (if (null? (unbox _%lifts194394%_))
                                    _%runtime-code194397%_
                                    (cons 'begin
                                          (let ((__tmp195382
                                                 (cons _%runtime-code194397%_
                                                       '()))
                                                (__tmp195381
                                                 (reverse (unbox _%lifts194394%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp195382
                                             __tmp195381))))
                                '#f))
                           (_%runtime-code194401%_
                            (if _%runtime-code?194392%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp194380%_
                                                         _%ctx194388%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code194399%_ '())))
                                '#f))
                           (_%loader-code194404%_
                            (let ((__tmp195383
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code194389%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195383
                               gx#current-expander-context
                               _%ctx194388%_)))
                           (_%loader-code194406%_
                            (cons 'begin
                                  (cons _%loader-code194404%_
                                        (cons (if _%runtime-code?194392%_
                                                  (cons 'load-module
                                                        (cons _%rtm194390%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0194408%_
                            (gxc#compile-output-file _%ctx194388%_ '0 '".scm"))
                           (_%scmrt194410%_
                            (gxc#compile-output-file
                             _%ctx194388%_
                             '#f
                             '".scm"))
                           (_%scms194412%_
                            (gxc#compile-static-output-file _%ctx194388%_)))
                      (if _%runtime-code?194392%_
                          (gxc#compile-scm-file__0
                           _%scm0194408%_
                           _%runtime-code194401%_)
                          '#!void)
                      (let ((__tmp195384
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt194410%_
                                _%loader-code194406%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp195384
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (file-exists? _%scms194412%_)
                          (delete-file _%scms194412%_)
                          '#!void)
                      (if _%runtime-code?194392%_
                          (copy-file _%scm0194408%_ _%scms194412%_)
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms194412%_ void)))))))
          (let* ((_%all-modules194383%_
                  (cons _%ctx194377%_ (gxc#lift-nested-modules _%ctx194377%_)))
                 (__tmp195385
                  (lambda (_%ctx194385%_)
                    (let ((__tmp195386
                           (lambda () (_%compile1194379%_ _%ctx194385%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195386
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp195385 _%all-modules194383%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx194277%_)
        (letrec ((_%compile-ssi194279%_
                  (lambda (_%code194345%_)
                    (let* ((_%path194347%_
                            (gxc#compile-output-file
                             _%ctx194277%_
                             '#f
                             '".ssi"))
                           (_%prelude194359%_
                            (let* ((_%super194349%_
                                    (##structure-ref
                                     _%ctx194277%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e194351%_
                                    (##structure-ref
                                     _%super194349%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e194351%_
                                  ((lambda (_%g194353194355%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g194353194355%_)))
                                   _%$e194351%_)
                                  ':<root>)))
                           (_%ns194361%_
                            (##structure-ref
                             _%ctx194277%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr194363%_
                            (symbol->string
                             (##structure-ref
                              _%ctx194277%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg194371%_
                            (let ((_%$e194365%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr194363%_ '#\/))))
                              (if _%$e194365%_
                                  ((lambda (_%x194368%_)
                                     (let ((__tmp195387
                                            (substring
                                             _%idstr194363%_
                                             '0
                                             _%x194368%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp195387)))
                                   _%$e194365%_)
                                  '#f)))
                           (_%rt194373%_
                            (let ((__tmp195388
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp195388 _%ctx194277%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path194347%_))
                      (gxc#with-output-to-scheme-file
                       _%path194347%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude194359%_))
                         (if _%pkg194371%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg194371%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns194361%_))
                         (newline)
                         (pretty-print _%code194345%_)
                         (if _%rt194373%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt194373%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi194280%_
                  (lambda (_%part194285%_)
                    (let* ((_%part194286194299%_ _%part194285%_)
                           (_%E194288194303%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part194286194299%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K194289194314%_
                            (lambda (_%code194306%_
                                     _%n194307%_
                                     _%phi194308%_
                                     _%phi-ctx194309%_)
                              (let ((_%code194312%_
                                     (let ((__tmp195389
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code194306%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp195389
                                        gx#current-expander-context
                                        _%phi-ctx194309%_
                                        gx#current-expander-phi
                                        _%phi194308%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx194277%_
                                  _%n194307%_
                                  '".scm")
                                 _%code194312%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part194286194299%_))
                          (let ((_%hd194290194317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part194286194299%_)))
                                (_%tl194291194319%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part194286194299%_))))
                            (let ((_%phi-ctx194322%_ _%hd194290194317%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194291194319%_))
                                  (let ((_%hd194292194324%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194291194319%_)))
                                        (_%tl194293194326%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194291194319%_))))
                                    (let ((_%phi194329%_ _%hd194292194324%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl194293194326%_))
                                          (let ((_%hd194294194331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl194293194326%_)))
                                                (_%tl194295194333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl194293194326%_))))
                                            (let ((_%n194336%_
                                                   _%hd194294194331%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl194295194333%_))
                                                  (let ((_%hd194296194338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl194295194333%_)))
                                                        (_%tl194297194340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl194295194333%_))))
                                                    (let ((_%code194343%_
                                                           _%hd194296194338%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl194297194340%_))
                                                          (_%K194289194314%_
                                                           _%code194343%_
                                                           _%n194336%_
                                                           _%phi194329%_
                                                           _%phi-ctx194322%_)
                                                          (_%E194288194303%_))))
                                                  (_%E194288194303%_))))
                                          (_%E194288194303%_))))
                                  (_%E194288194303%_))))
                          (_%E194288194303%_))))))
          (let ((_g195390_ (gxc#generate-meta-code _%ctx194277%_)))
            (begin
              (let ((_g195391_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g195390_)
                           (##vector-length _g195390_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g195391_ 2)))
                    (error "Context expects 2 values" _g195391_)))
              (let ((_%ssi-code194282%_
                     (let () (declare (not safe)) (##vector-ref _g195390_ 0)))
                    (_%phi-code194283%_
                     (let () (declare (not safe)) (##vector-ref _g195390_ 1))))
                (begin
                  (_%compile-ssi194279%_ _%ssi-code194282%_)
                  (for-each _%compile-phi194280%_ _%phi-code194283%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx194259%_)
        (let* ((_%path194261%_
                (gxc#compile-output-file _%ctx194259%_ '#f '".ssxi.ss"))
               (_%code194263%_
                (let ((__tmp195392
                       (##structure-ref
                        _%ctx194259%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp195392)))
               (_%idstr194265%_
                (symbol->string
                 (##structure-ref
                  _%ctx194259%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg194273%_
                (let ((_%$e194267%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr194265%_ '#\/))))
                  (if _%$e194267%_
                      ((lambda (_%x194270%_)
                         (let ((__tmp195393
                                (substring _%idstr194265%_ '0 _%x194270%_)))
                           (declare (not safe))
                           (##string->symbol __tmp195393)))
                       _%$e194267%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path194261%_))
          (gxc#with-output-to-scheme-file
           _%path194261%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg194273%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg194273%_))
                 '#!void)
             (newline)
             (pretty-print _%code194263%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx194252%_)
        (let* ((_%state194254%_
                (let ((__obj195294
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj195294 _%ctx194252%_)
                  __obj195294))
               (_%ssi-code194256%_
                (let ((__tmp195394
                       (##structure-ref
                        _%ctx194252%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state194254%_
                   __tmp195394))))
          (values _%ssi-code194256%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state194254%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx194245%_)
        (let ((_%lifts194247%_ (box '())))
          (let ((__tmp195397
                 (lambda ()
                   (let ((_%code194250%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx194245%_))))
                     (if (null? (unbox _%lifts194247%_))
                         _%code194250%_
                         (cons 'begin
                               (let ((__tmp195399 (cons _%code194250%_ '()))
                                     (__tmp195398
                                      (reverse (unbox _%lifts194247%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195399 __tmp195398)))))))
                (__tmp195396
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp195395
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195397
             gxc#current-compile-lift
             _%lifts194247%_
             gxc#current-compile-marks
             __tmp195396
             gxc#current-compile-identifiers
             __tmp195395)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx194241%_)
        (let ((_%modules194243%_ (box '())))
          (let ((__tmp195400
                 (##structure-ref _%ctx194241%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules194243%_ __tmp195400))
          (reverse (unbox _%modules194243%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path194221%_ _%code194222%_ _%phi?194223%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path194221%_))
        (gxc#with-output-to-scheme-file
         _%path194221%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp195401
                                           (if _%phi?194223%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp195401)))))))
           (pretty-print _%code194222%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it194227%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path194221%_ _%phi?194223%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp195402
                         (cons 'compile-file (cons _%path194221%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it194227%_ __tmp195402))
                  (_%compile-it194227%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path194232%_ _%code194233%_)
        (let ((_%phi?194235%_ '#f))
          (gxc#compile-scm-file__%
           _%path194232%_
           _%code194233%_
           _%phi?194235%_))))
    (define gxc#compile-scm-file
      (lambda _g195404_
        (let ((_g195403_ (let () (declare (not safe)) (##length _g195404_))))
          (cond ((let () (declare (not safe)) (##fx= _g195403_ 2))
                 (apply gxc#compile-scm-file__0 _g195404_))
                ((let () (declare (not safe)) (##fx= _g195403_ 3))
                 (apply gxc#compile-scm-file__% _g195404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g195404_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?194122%_)
        (let _%lp194124%_ ((_%rest194126%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194127%_ '()))
          (let* ((_%rest194128194148%_ _%rest194126%_)
                 (_%else194132194156%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts194127%_)))
                        (reverse _%opts194127%_)))))
            (let ((_%K194142194199%_
                   (lambda (_%rest194197%_)
                     (_%lp194124%_ _%rest194197%_ _%opts194127%_)))
                  (_%K194137194181%_
                   (lambda (_%rest194179%_)
                     (_%lp194124%_ _%rest194179%_ _%opts194127%_)))
                  (_%K194134194163%_
                   (lambda (_%rest194160%_ _%opt194161%_)
                     (_%lp194124%_
                      _%rest194160%_
                      (cons _%opt194161%_ _%opts194127%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194128194148%_))
                  (let ((_%tl194144194204%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194128194148%_)))
                        (_%hd194143194202%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194128194148%_))))
                    (if (equal? _%hd194143194202%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194144194204%_))
                            (let* ((_%tl194146194207%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194144194204%_)))
                                   (_%rest194210%_ _%tl194146194207%_))
                              (_%K194142194199%_ _%rest194210%_))
                            (let ((_%opt194171%_ _%hd194143194202%_)
                                  (_%rest194173%_ _%tl194144194204%_))
                              (_%K194134194163%_
                               _%rest194173%_
                               _%opt194171%_)))
                        (if (equal? _%hd194143194202%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194144194204%_))
                                (let* ((_%tl194141194189%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194144194204%_)))
                                       (_%rest194192%_ _%tl194141194189%_))
                                  (_%K194137194181%_ _%rest194192%_))
                                (let ((_%opt194171%_ _%hd194143194202%_)
                                      (_%rest194173%_ _%tl194144194204%_))
                                  (_%K194134194163%_
                                   _%rest194173%_
                                   _%opt194171%_)))
                            (let ((_%opt194171%_ _%hd194143194202%_)
                                  (_%rest194173%_ _%tl194144194204%_))
                              (_%K194134194163%_
                               _%rest194173%_
                               _%opt194171%_)))))
                  (_%else194132194156%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?194216%_ '#f)) (gxc#gsc-link-options__% _%phi?194216%_))))
    (define gxc#gsc-link-options
      (lambda _g195406_
        (let ((_g195405_ (let () (declare (not safe)) (##length _g195406_))))
          (cond ((let () (declare (not safe)) (##fx= _g195405_ 0))
                 (apply gxc#gsc-link-options__0 _g195406_))
                ((let () (declare (not safe)) (##fx= _g195405_ 1))
                 (apply gxc#gsc-link-options__% _g195406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g195406_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords193971%_ _%static?193967193972%_ _%phi?193974%_)
        (let ((_%static?193976%_
               (if (eq? _%static?193967193972%_ absent-value)
                   '#f
                   _%static?193967193972%_)))
          (if _%phi?193974%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp193978%_ ((_%rest193980%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts193981%_ '()))
                (let* ((_%rest193982194008%_ _%rest193980%_)
                       (_%else193987194016%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts193981%_)))
                              (reverse! _%opts193981%_)))))
                  (let ((_%K194002194079%_
                         (lambda (_%rest194076%_ _%opt194077%_)
                           (if _%static?193976%_
                               (_%lp193978%_
                                _%rest194076%_
                                (cons _%opt194077%_
                                      (cons '"-cc-options" _%opts193981%_)))
                               (_%lp193978%_ _%rest194076%_ _%opts193981%_))))
                        (_%K193997194056%_
                         (lambda (_%rest194053%_ _%opt194054%_)
                           (_%lp193978%_
                            _%rest194053%_
                            (cons _%opt194054%_
                                  (cons '"-cc-options" _%opts193981%_)))))
                        (_%K193992194036%_
                         (lambda (_%rest194034%_)
                           (_%lp193978%_ _%rest194034%_ _%opts193981%_)))
                        (_%K193989194022%_
                         (lambda (_%rest194020%_)
                           (_%lp193978%_ _%rest194020%_ _%opts193981%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest193982194008%_))
                        (let ((_%tl194004194084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest193982194008%_)))
                              (_%hd194003194082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest193982194008%_))))
                          (if (equal? _%hd194003194082%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194004194084%_))
                                  (let ((_%tl194006194089%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194004194084%_)))
                                        (_%hd194005194087%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194004194084%_))))
                                    (if (equal? _%hd194005194087%_ '"-Bstatic")
                                        (let ((_%opt194092%_
                                               _%hd194005194087%_)
                                              (_%rest194094%_
                                               _%tl194006194089%_))
                                          (_%K194002194079%_
                                           _%rest194094%_
                                           _%opt194092%_))
                                        (let ((_%opt194069%_
                                               _%hd194005194087%_)
                                              (_%rest194071%_
                                               _%tl194006194089%_))
                                          (_%K193997194056%_
                                           _%rest194071%_
                                           _%opt194069%_))))
                                  (let ((_%rest194028%_ _%tl194004194084%_))
                                    (_%K193989194022%_ _%rest194028%_)))
                              (if (equal? _%hd194003194082%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl194004194084%_))
                                      (let* ((_%tl193996194044%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl194004194084%_)))
                                             (_%rest194047%_
                                              _%tl193996194044%_))
                                        (_%K193992194036%_ _%rest194047%_))
                                      (let ((_%rest194028%_
                                             _%tl194004194084%_))
                                        (_%K193989194022%_ _%rest194028%_)))
                                  (let ((_%rest194028%_ _%tl194004194084%_))
                                    (_%K193989194022%_ _%rest194028%_)))))
                        (_%else193987194016%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords194099%_ _%static?193967194100%_)
        (let ((_%phi?194102%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords194099%_
           _%static?193967194100%_
           _%phi?194102%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g195408_
        (let ((_g195407_ (let () (declare (not safe)) (##length _g195408_))))
          (cond ((let () (declare (not safe)) (##fx= _g195407_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g195408_))
                ((let () (declare (not safe)) (##fx= _g195407_ 3))
                 (apply gxc#gsc-cc-options__%__% _g195408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g195408_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords194111%_ . _%args194112%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords194111%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194111%_
                  'static:
                  absent-value))
               _%args194112%_)))
    (define gxc#gsc-cc-options
      (lambda _%args193968194118%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args193968194118%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords193816%_ _%static?193812193817%_ _%phi?193819%_)
        (let ((_%static?193821%_
               (if (eq? _%static?193812193817%_ absent-value)
                   '#f
                   _%static?193812193817%_)))
          (if _%phi?193819%_
              '()
              (let _%lp193823%_ ((_%rest193825%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts193826%_ '()))
                (let* ((_%rest193827193853%_ _%rest193825%_)
                       (_%else193832193861%_
                        (lambda () (reverse! _%opts193826%_))))
                  (let ((_%K193847193924%_
                         (lambda (_%rest193921%_ _%opt193922%_)
                           (if _%static?193821%_
                               (_%lp193823%_
                                _%rest193921%_
                                (cons _%opt193922%_
                                      (cons '"-ld-options" _%opts193826%_)))
                               (_%lp193823%_ _%rest193921%_ _%opts193826%_))))
                        (_%K193842193901%_
                         (lambda (_%rest193898%_ _%opt193899%_)
                           (_%lp193823%_
                            _%rest193898%_
                            (cons _%opt193899%_
                                  (cons '"-ld-options" _%opts193826%_)))))
                        (_%K193837193881%_
                         (lambda (_%rest193879%_)
                           (_%lp193823%_ _%rest193879%_ _%opts193826%_)))
                        (_%K193834193867%_
                         (lambda (_%rest193865%_)
                           (_%lp193823%_ _%rest193865%_ _%opts193826%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest193827193853%_))
                        (let ((_%tl193849193929%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest193827193853%_)))
                              (_%hd193848193927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest193827193853%_))))
                          (if (equal? _%hd193848193927%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193849193929%_))
                                  (let ((_%tl193851193934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193849193929%_)))
                                        (_%hd193850193932%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193849193929%_))))
                                    (if (equal? _%hd193850193932%_ '"-static")
                                        (let ((_%opt193937%_
                                               _%hd193850193932%_)
                                              (_%rest193939%_
                                               _%tl193851193934%_))
                                          (_%K193847193924%_
                                           _%rest193939%_
                                           _%opt193937%_))
                                        (let ((_%opt193914%_
                                               _%hd193850193932%_)
                                              (_%rest193916%_
                                               _%tl193851193934%_))
                                          (_%K193842193901%_
                                           _%rest193916%_
                                           _%opt193914%_))))
                                  (let ((_%rest193873%_ _%tl193849193929%_))
                                    (_%K193834193867%_ _%rest193873%_)))
                              (if (equal? _%hd193848193927%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl193849193929%_))
                                      (let* ((_%tl193841193889%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl193849193929%_)))
                                             (_%rest193892%_
                                              _%tl193841193889%_))
                                        (_%K193837193881%_ _%rest193892%_))
                                      (let ((_%rest193873%_
                                             _%tl193849193929%_))
                                        (_%K193834193867%_ _%rest193873%_)))
                                  (let ((_%rest193873%_ _%tl193849193929%_))
                                    (_%K193834193867%_ _%rest193873%_)))))
                        (_%else193832193861%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords193944%_ _%static?193812193945%_)
        (let ((_%phi?193947%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords193944%_
           _%static?193812193945%_
           _%phi?193947%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g195410_
        (let ((_g195409_ (let () (declare (not safe)) (##length _g195410_))))
          (cond ((let () (declare (not safe)) (##fx= _g195409_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g195410_))
                ((let () (declare (not safe)) (##fx= _g195409_ 3))
                 (apply gxc#gsc-ld-options__%__% _g195410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g195410_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords193956%_ . _%args193957%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords193956%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193956%_
                  'static:
                  absent-value))
               _%args193957%_)))
    (define gxc#gsc-ld-options
      (lambda _%args193813193963%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args193813193963%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193807%_)
        (let ((_%user-staticdir193809%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193807%_
                       '" -I "
                       _%user-staticdir193809%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193719%_ ((_%rest193721%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193722%_ '()))
          (let* ((_%rest193723193743%_ _%rest193721%_)
                 (_%else193727193751%_ (lambda () _%opts193722%_)))
            (let ((_%K193737193794%_
                   (lambda (_%rest193792%_)
                     (_%lp193719%_ _%rest193792%_ _%opts193722%_)))
                  (_%K193732193772%_
                   (lambda (_%rest193769%_ _%opt193770%_)
                     (_%lp193719%_
                      _%rest193769%_
                      (let ((__tmp195411
                             (let ((__tmp195412
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt193770%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp195412))))
                        (declare (not safe))
                        (##append _%opts193722%_ __tmp195411)))))
                  (_%K193729193757%_
                   (lambda (_%rest193755%_)
                     (_%lp193719%_ _%rest193755%_ _%opts193722%_))))
              (if (let () (declare (not safe)) (##pair? _%rest193723193743%_))
                  (let ((_%tl193739193799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193723193743%_)))
                        (_%hd193738193797%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193723193743%_))))
                    (if (equal? _%hd193738193797%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193739193799%_))
                            (let* ((_%tl193741193802%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193739193799%_)))
                                   (_%rest193805%_ _%tl193741193802%_))
                              (_%K193737193794%_ _%rest193805%_))
                            (let ((_%rest193763%_ _%tl193739193799%_))
                              (_%K193729193757%_ _%rest193763%_)))
                        (if (equal? _%hd193738193797%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193739193799%_))
                                (let ((_%tl193736193782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193739193799%_)))
                                      (_%hd193735193780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193739193799%_))))
                                  (let ((_%opt193785%_ _%hd193735193780%_)
                                        (_%rest193787%_ _%tl193736193782%_))
                                    (_%K193732193772%_
                                     _%rest193787%_
                                     _%opt193785%_)))
                                (let ((_%rest193763%_ _%tl193739193799%_))
                                  (_%K193729193757%_ _%rest193763%_)))
                            (let ((_%rest193763%_ _%tl193739193799%_))
                              (_%K193729193757%_ _%rest193763%_)))))
                  (_%else193727193751%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str193716%_)
        (not (let () (declare (not safe)) (string-empty? _%str193716%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path193709%_ _%phi?193710%_)
        (let ((_%gsc-link-opts193712%_
               (gxc#gsc-link-options__% _%phi?193710%_))
              (_%gsc-cc-opts193713%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?193710%_))
              (_%gsc-ld-opts193714%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?193710%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp195413
                  (let ((__tmp195414
                         (let ((__tmp195415 (cons _%path193709%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp195415
                            _%gsc-link-opts193712%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp195414 _%gsc-ld-opts193714%_))))
             (declare (not safe))
             (__foldr1 cons __tmp195413 _%gsc-cc-opts193713%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193675%_ _%n193676%_ _%ext193677%_)
        (letrec ((_%module-relative-path193679%_
                  (lambda (_%ctx193707%_)
                    (path-strip-directory
                     (let ((__tmp195416
                            (##structure-ref
                             _%ctx193707%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp195416)))))
                 (_%module-source-directory193680%_
                  (lambda (_%ctx193703%_)
                    (path-directory
                     (let ((_%mpath193705%_
                            (##structure-ref
                             _%ctx193703%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath193705%_)
                           _%mpath193705%_
                           (last _%mpath193705%_))))))
                 (_%section-string193681%_
                  (lambda (_%n193697%_)
                    (if (number? _%n193697%_)
                        (number->string _%n193697%_)
                        (if (symbol? _%n193697%_)
                            (symbol->string _%n193697%_)
                            (if (string? _%n193697%_)
                                _%n193697%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193697%_)))))))
                 (_%file-name193682%_
                  (lambda (_%path193695%_)
                    (if _%n193676%_
                        (string-append
                         _%path193695%_
                         '"~"
                         (_%section-string193681%_ _%n193676%_)
                         _%ext193677%_)
                        (string-append _%path193695%_ _%ext193677%_))))
                 (_%file-path193683%_
                  (lambda ()
                    (let ((_%$e193689%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193689%_
                          ((lambda (_%outdir193692%_)
                             (path-expand
                              (_%file-name193682%_
                               (let ((__tmp195417
                                      (##structure-ref
                                       _%ctx193675%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp195417)))
                              _%outdir193692%_))
                           _%$e193689%_)
                          (path-expand
                           (_%file-name193682%_
                            (_%module-relative-path193679%_ _%ctx193675%_))
                           (_%module-source-directory193680%_
                            _%ctx193675%_)))))))
          (let ((_%path193685%_ (_%file-path193683%_)))
            (let ((__tmp195418
                   (lambda ()
                     (let ((__tmp195419 (path-directory _%path193685%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195419)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195418))
            _%path193685%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193656%_)
        (letrec ((_%file-name193658%_
                  (lambda (_%id193673%_)
                    (let ((__tmp195420 (gxc#static-module-name _%id193673%_)))
                      (declare (not safe))
                      (##string-append __tmp195420 '".scm"))))
                 (_%file-path193659%_
                  (lambda ()
                    (let* ((_%file193665%_
                            (_%file-name193658%_
                             (##structure-ref
                              _%ctx193656%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e193667%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193667%_
                          ((lambda (_%outdir193670%_)
                             (path-expand
                              _%file193665%_
                              (path-expand '"static" _%outdir193670%_)))
                           _%$e193667%_)
                          (path-expand _%file193665%_ '"static"))))))
          (let ((_%path193661%_ (_%file-path193659%_)))
            (let ((__tmp195421
                   (lambda ()
                     (let ((__tmp195422 (path-directory _%path193661%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195422)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195421))
            _%path193661%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193649%_ _%opts193650%_)
        (let ((_%$e193652%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193650%_))))
          (if _%$e193652%_
              (values _%$e193652%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx193649%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr193639%_)
        (if (string? _%idstr193639%_)
            (let* ((_%str193642%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr193639%_)))
                   (_%strs193644%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str193642%_ '#\/))))
              (declare (not safe))
              (string-join _%strs193644%_ '"__"))
            (if (symbol? _%idstr193639%_)
                (gxc#static-module-name (symbol->string _%idstr193639%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193639%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp195423
               (let ((__tmp195424 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp195424 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp195423))))
    (define gxc#invoke__%
      (lambda (_%@@keywords193603%_
               _%stdout-redirection193599193604%_
               _%stderr-redirection193600193606%_
               _%program193608%_
               _%args193609%_)
        (let* ((_%stdout-redirection193611%_
                (if (eq? _%stdout-redirection193599193604%_ absent-value)
                    '#f
                    _%stdout-redirection193599193604%_))
               (_%stderr-redirection193613%_
                (if (eq? _%stderr-redirection193600193606%_ absent-value)
                    '#f
                    _%stderr-redirection193600193606%_)))
          (let ((__tmp195425 (cons _%program193608%_ _%args193609%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp195425))
          (let* ((_%proc193615%_
                  (open-process
                   (cons 'path:
                         (cons _%program193608%_
                               (cons 'arguments:
                                     (cons _%args193609%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193611%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193620%_
                  (if (or _%stdout-redirection193611%_
                          _%stderr-redirection193613%_)
                      (read-line _%proc193615%_ '#f)
                      '#f))
                 (_%status193623%_ (process-status _%proc193615%_)))
            (let () (declare (not safe)) (##close-port _%proc193615%_))
            (if (zero? _%status193623%_)
                '#!void
                (begin
                  (display _%output193620%_)
                  (let ((__tmp195426 (cons _%program193608%_ _%args193609%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp195426
                     _%status193623%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193628%_ . _%args193629%_)
        (apply gxc#invoke__%
               _%@@keywords193628%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193628%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193628%_
                  'stderr-redirection:
                  absent-value))
               _%args193629%_)))
    (define gxc#invoke
      (lambda _%args193601193635%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193601193635%_)))))
