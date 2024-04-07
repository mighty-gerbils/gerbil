(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712533296)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196088 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196088))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196089 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196089))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195994%_ _%fun195995%_)
        (with-output-to-file
         (cons 'path: (cons _%path195994%_ gxc#scheme-file-settings))
         _%fun195995%_)))
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
      (lambda (_%gerbil-libdir195989%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195989%_)))
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
      (lambda (_%dir195987%_) (delete-file-or-directory _%dir195987%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195961%_ _%opts195962%_)
        (if (let () (declare (not safe)) (string? _%srcpath195961%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195961%_)))
        (let ((_%outdir195964%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195962%_)))
              (_%invoke-gsc?195965%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195962%_)))
              (_%gsc-options195966%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195962%_)))
              (_%keep-scm?195967%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195962%_)))
              (_%verbosity195968%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195962%_)))
              (_%optimize195969%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195962%_)))
              (_%debug195970%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195962%_)))
              (_%gen-ssxi195971%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195962%_))))
          (if _%outdir195964%_
              (let ((__tmp196090
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195964%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196090))
              '#!void)
          (if _%optimize195969%_
              (let ((__tmp196091
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196091))
              '#!void)
          (let ((__tmp196094
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195961%_))
                   (let ((__tmp196095
                          (let ((__tmp196096
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195961%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196096))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp196095))))
                (__tmp196093
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196092
                 (cons 'compile-module (cons _%srcpath195961%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196094
             gxc#current-compile-output-dir
             _%outdir195964%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195965%_
             gxc#current-compile-gsc-options
             _%gsc-options195966%_
             gxc#current-compile-keep-scm
             _%keep-scm?195967%_
             gxc#current-compile-verbose
             _%verbosity195968%_
             gxc#current-compile-optimize
             _%optimize195969%_
             gxc#current-compile-debug
             _%debug195970%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195971%_
             gxc#current-compile-timestamp
             __tmp196093
             gxc#current-compile-context
             __tmp196092
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195980%_)
        (let ((_%opts195982%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath195980%_ _%opts195982%_))))
    (define gxc#compile-module
      (lambda _g196098_
        (let ((_g196097_ (let () (declare (not safe)) (##length _g196098_))))
          (cond ((let () (declare (not safe)) (##fx= _g196097_ 1))
                 (apply (lambda (_%srcpath195980%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath195980%_)))
                        _g196098_))
                ((let () (declare (not safe)) (##fx= _g196097_ 2))
                 (apply (lambda (_%srcpath195984%_ _%opts195985%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath195984%_
                             _%opts195985%_)))
                        _g196098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196098_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195937%_ _%opts195938%_)
        (if (let () (declare (not safe)) (string? _%srcpath195937%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195937%_)))
        (let ((_%outdir195940%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195938%_)))
              (_%invoke-gsc?195941%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195938%_)))
              (_%gsc-options195942%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195938%_)))
              (_%keep-scm?195943%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195938%_)))
              (_%verbosity195944%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195938%_)))
              (_%debug195945%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts195938%_))))
          (if _%outdir195940%_
              (let ((__tmp196099
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195940%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196099))
              '#!void)
          (let ((__tmp196102
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195937%_))
                   (let ((__tmp196103
                          (let ((__tmp196104
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195937%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196104))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp196103
                      _%opts195938%_))))
                (__tmp196101
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196100 (cons 'compile-exe (cons _%srcpath195937%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196102
             gxc#current-compile-output-dir
             _%outdir195940%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195941%_
             gxc#current-compile-gsc-options
             _%gsc-options195942%_
             gxc#current-compile-keep-scm
             _%keep-scm?195943%_
             gxc#current-compile-verbose
             _%verbosity195944%_
             gxc#current-compile-debug
             _%debug195945%_
             gxc#current-compile-timestamp
             __tmp196101
             gxc#current-compile-context
             __tmp196100
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195953%_)
        (let ((_%opts195955%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath195953%_ _%opts195955%_))))
    (define gxc#compile-exe
      (lambda _g196106_
        (let ((_g196105_ (let () (declare (not safe)) (##length _g196106_))))
          (cond ((let () (declare (not safe)) (##fx= _g196105_ 1))
                 (apply (lambda (_%srcpath195953%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath195953%_)))
                        _g196106_))
                ((let () (declare (not safe)) (##fx= _g196105_ 2))
                 (apply (lambda (_%srcpath195957%_ _%opts195958%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath195957%_
                             _%opts195958%_)))
                        _g196106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196106_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195933%_ _%opts195934%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195934%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx195933%_
               _%opts195934%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx195933%_
               _%opts195934%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx195735%_ _%opts195736%_)
        (letrec ((_%generate-stub195738%_
                  (lambda (_%builtin-modules195929%_)
                    (let ((_%mod-main195931%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195735%_ 'main))))
                      (let ((__tmp196107
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules195929%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196107))
                      (let ((__tmp196108
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195931%_
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
                        (##write __tmp196108))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts195739%_
                  (lambda (_%gerbil-libdir195927%_)
                    (let ((__tmp196109
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir195927%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp196109 read))))
                 (_%replace-extension195740%_
                  (lambda (_%path195924%_ _%ext195925%_)
                    (string-append
                     (path-strip-extension _%path195924%_)
                     _%ext195925%_)))
                 (_%userlib-module?195741%_
                  (lambda (_%ctx195922%_)
                    (if (let ((__tmp196110
                               (let ()
                                 (declare (not safe))
                                 (_%exclude-module?195743%_ _%ctx195922%_))))
                          (declare (not safe))
                          (not __tmp196110))
                        (let ((__tmp196111
                               (let ()
                                 (declare (not safe))
                                 (_%libgerbil-module?195742%_ _%ctx195922%_))))
                          (declare (not safe))
                          (not __tmp196111))
                        '#f)))
                 (_%libgerbil-module?195742%_
                  (lambda (_%ctx195915%_)
                    (let ((_%id-str195917%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195915%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp196112
                                 (let ()
                                   (declare (not safe))
                                   (_%exclude-module?195743%_
                                    _%id-str195917%_))))
                            (declare (not safe))
                            (not __tmp196112))
                          (let ((_%$e195919%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195917%_))))
                            (if _%$e195919%_
                                _%$e195919%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str195917%_))))
                          '#f))))
                 (_%exclude-module?195743%_
                  (lambda (_%ctx-or-str195911%_)
                    (let ((_%str195913%_
                           (if (let ()
                                 (declare (not safe))
                                 (string? _%ctx-or-str195911%_))
                               _%ctx-or-str195911%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str195911%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str195913%_))))
                 (_%not-file-empty?195744%_
                  (lambda (_%path195909%_)
                    (let ((__tmp196113
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path195909%_))))
                      (declare (not safe))
                      (not __tmp196113))))
                 (_%fold-libgerbil-runtime-scm195745%_
                  (lambda (_%gerbil-staticdir195902%_ _%libgerbil-scm195903%_)
                    (let* ((_%gerbil-runtime-scm195907%_
                            (let ((__tmp196114
                                   (lambda (_%rtm195905%_)
                                     (path-expand
                                      (let ((__tmp196115
                                             (let ((__tmp196116
                                                    (let ()
                                                      (declare (not safe))
                                                      (string-split
                                                       _%rtm195905%_
                                                       '#\/))))
                                               (declare (not safe))
                                               (string-join
                                                __tmp196116
                                                '"__"))))
                                        (declare (not safe))
                                        (##string-append __tmp196115 '".scm"))
                                      _%gerbil-staticdir195902%_))))
                              (declare (not safe))
                              (##map __tmp196114 gxc#gerbil-runtime-modules)))
                           (__tmp196117
                            (append _%gerbil-runtime-scm195907%_
                                    _%libgerbil-scm195903%_)))
                      (declare (not safe))
                      (_%remove-duplicates195746%_ __tmp196117))))
                 (_%remove-duplicates195746%_
                  (lambda (_%strlst195862%_)
                    (let _%loop195864%_ ((_%rest195866%_ _%strlst195862%_)
                                         (_%result195867%_ '()))
                      (let* ((_%rest195868195876%_ _%rest195866%_)
                             (_%else195870195884%_
                              (lambda () (reverse! _%result195867%_)))
                             (_%K195872195890%_
                              (lambda (_%rest195887%_ _%path195888%_)
                                (if (member _%path195888%_ _%result195867%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop195864%_
                                       _%rest195887%_
                                       _%result195867%_))
                                    (let ((__tmp196118
                                           (cons _%path195888%_
                                                 _%result195867%_)))
                                      (declare (not safe))
                                      (_%loop195864%_
                                       _%rest195887%_
                                       __tmp196118))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest195868195876%_))
                            (let ((_%hd195873195893%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest195868195876%_)))
                                  (_%tl195874195895%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest195868195876%_))))
                              (let* ((_%path195898%_ _%hd195873195893%_)
                                     (_%rest195900%_ _%tl195874195895%_))
                                (declare (not safe))
                                (_%K195872195890%_
                                 _%rest195900%_
                                 _%path195898%_)))
                            (let ()
                              (declare (not safe))
                              (_%else195870195884%_)))))))
                 (_%compile-stub195747%_
                  (lambda (_%output-scm195754%_ _%output-bin195755%_)
                    (let* ((_%gerbil-home195757%_
                            (let ((__tmp196119
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196119)))
                           (_%gerbil-libdir195759%_
                            (path-expand '"lib" _%gerbil-home195757%_))
                           (_%gerbil-staticdir195761%_
                            (path-expand '"static" _%gerbil-libdir195759%_))
                           (_%tmp195763%_
                            (path-expand
                             (let ((__tmp196120
                                    (let ((__tmp196121
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp196121))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp196120))
                             '"/tmp"))
                           (_%tmp-path195767%_
                            (lambda (_%f195765%_)
                              (path-expand
                               (path-strip-directory _%f195765%_)
                               _%tmp195763%_)))
                           (_%deps195769%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195735%_)))
                           (_%libgerbil-deps195771%_
                            (filter _%libgerbil-module?195742%_
                                    _%deps195769%_))
                           (_%libgerbil-scm195773%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps195771%_)))
                           (_%libgerbil-scm195775%_
                            (let ()
                              (declare (not safe))
                              (_%fold-libgerbil-runtime-scm195745%_
                               _%gerbil-staticdir195761%_
                               _%libgerbil-scm195773%_)))
                           (_%libgerbil-c195781%_
                            (map (lambda (_%g195776195778%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%replace-extension195740%_
                                      _%g195776195778%_
                                      '".c")))
                                 _%libgerbil-scm195775%_))
                           (_%libgerbil-o195787%_
                            (map (lambda (_%g195782195784%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%replace-extension195740%_
                                      _%g195782195784%_
                                      '".o")))
                                 _%libgerbil-scm195775%_))
                           (_%src-deps195789%_
                            (filter _%userlib-module?195741%_ _%deps195769%_))
                           (_%src-deps-scm195791%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps195789%_)))
                           (_%src-deps-scm195793%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?195744%_
                               _%src-deps-scm195791%_)))
                           (_%src-deps-scm195795%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm195793%_)))
                           (_%src-deps-c195801%_
                            (let ((__tmp196122
                                   (lambda (_%g195796195798%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195740%_
                                        _%g195796195798%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp196122 _%src-deps-scm195795%_)))
                           (_%src-deps-o195807%_
                            (let ((__tmp196123
                                   (lambda (_%g195802195804%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195740%_
                                        _%g195802195804%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp196123 _%src-deps-scm195795%_)))
                           (_%src-bin-scm195809%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195735%_)))
                           (_%src-bin-scm195811%_
                            (path-expand _%src-bin-scm195809%_))
                           (_%src-bin-c195813%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195740%_
                               _%src-bin-scm195811%_
                               '".c")))
                           (_%src-bin-o195815%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195740%_
                               _%src-bin-scm195811%_
                               '".o")))
                           (_%output-bin195817%_
                            (path-expand _%output-bin195755%_))
                           (_%output-scm195819%_
                            (path-expand _%output-scm195754%_))
                           (_%output-c195821%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195740%_
                               _%output-scm195819%_
                               '".c")))
                           (_%output-o195823%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195740%_
                               _%output-scm195819%_
                               '".o")))
                           (_%output_-c195825%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195740%_
                               _%output-scm195819%_
                               '"_.c")))
                           (_%output_-o195827%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195740%_
                               _%output-scm195819%_
                               '"_.o")))
                           (_%gsc-link-opts195829%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195831%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195833%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir195761%_)))
                           (_%output-ld-opts195835%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil-ld-opts195837%_
                            (let ()
                              (declare (not safe))
                              (_%get-libgerbil-ld-opts195739%_
                               _%gerbil-libdir195759%_)))
                           (_%rpath195839%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195759%_)))
                           (_%builtin-modules195843%_
                            (let ((__tmp196124
                                   (let ((__tmp196125
                                          (let ((__tmp196127
                                                 (lambda (_%mod195841%_)
                                                   (symbol->string
                                                    (##structure-ref
                                                     _%mod195841%_
                                                     '1
                                                     gx#expander-context::t
                                                     '#f))))
                                                (__tmp196126
                                                 (cons _%ctx195735%_
                                                       _%deps195769%_)))
                                            (declare (not safe))
                                            (##map __tmp196127 __tmp196126))))
                                     (declare (not safe))
                                     (##append
                                      gxc#gerbil-runtime-modules
                                      __tmp196125))))
                              (declare (not safe))
                              (_%remove-duplicates195746%_ __tmp196124))))
                      (letrec ((_%compile-obj195846%_
                                (lambda (_%scm-path195853%_ _%c-path195854%_)
                                  (let ((_%o-path195856%_
                                         (let ()
                                           (declare (not safe))
                                           (_%replace-extension195740%_
                                            _%c-path195854%_
                                            '".o"))))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (##file-exists?
                                                _%o-path195856%_))
                                             (or (let ()
                                                   (declare (not safe))
                                                   (not _%scm-path195853%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (file-newer?
                                                    _%scm-path195853%_
                                                    _%o-path195856%_))))
                                        (let ((__tmp196128
                                               (lambda ()
                                                 (let ((__tmp196132
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#gerbil-gsc)))
                                                       (__tmp196129
                                                        (cons '"-obj"
                                                              (let ((__tmp196130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp196131 (cons _%c-path195854%_ '())))
                               (declare (not safe))
                               (__foldr1
                                cons
                                __tmp196131
                                _%gsc-static-opts195833%_))))
                        (declare (not safe))
                        (__foldr1 cons __tmp196130 _%gsc-cc-opts195831%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    __tmp196132
                                                    __tmp196129)))))
                                          (declare (not safe))
                                          (__spawn __tmp196128))
                                        '#f)))))
                        (let ((__tmp196133
                               (lambda ()
                                 (let ((__tmp196134
                                        (path-directory _%output-bin195817%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp196134)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp196133))
                        (let ((__tmp196135
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%generate-stub195738%_
                                    _%builtin-modules195843%_)))))
                          (declare (not safe))
                          (gxc#with-output-to-scheme-file
                           _%output-scm195819%_
                           __tmp196135))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (begin
                              (let ((__tmp196136
                                     (lambda ()
                                       (create-directory _%tmp195763%_))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp196136))
                              (let ((__tmp196141
                                     (let ()
                                       (declare (not safe))
                                       (gxc#gerbil-gsc)))
                                    (__tmp196137
                                     (cons '"-link"
                                           (let ((__tmp196138
                                                  (let ((__tmp196139
                                                         (let ((__tmp196140
                                                                (cons _%src-bin-scm195811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%output-scm195819%_ '()))))
                   (declare (not safe))
                   (__foldr1 cons __tmp196140 _%src-deps-scm195795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     __tmp196139
                                                     _%libgerbil-c195781%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp196138
                                              _%gsc-link-opts195829%_)))))
                                (declare (not safe))
                                (gxc#invoke__%
                                 '#f
                                 absent-value
                                 absent-value
                                 __tmp196141
                                 __tmp196137))
                              (let ((__tmp196145
                                     (lambda (_%maybe-thread195851%_)
                                       (if _%maybe-thread195851%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#join!
                                              _%maybe-thread195851%_))
                                           '#f)))
                                    (__tmp196142
                                     (map _%compile-obj195846%_
                                          (let ((__tmp196143
                                                 (cons _%src-bin-scm195811%_
                                                       (cons _%output-scm195819%_
                                                             (cons '#f '())))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp196143
                                             _%src-deps-scm195795%_))
                                          (let ((__tmp196144
                                                 (cons _%src-bin-c195813%_
                                                       (cons _%output-c195821%_
                                                             (cons _%output_-c195825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp196144
                                             _%src-deps-c195801%_)))))
                                (declare (not safe))
                                (##for-each __tmp196145 __tmp196142))
                              (let ((__tmp196150
                                     (let ()
                                       (declare (not safe))
                                       (gxc#gerbil-gsc)))
                                    (__tmp196146
                                     (cons '"-obj"
                                           (let ((__tmp196147
                                                  (let ((__tmp196148
                                                         (let ((__tmp196149
                                                                (cons _%src-bin-c195813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%output-c195821%_
                                    (cons _%output_-c195825%_ '())))))
                   (declare (not safe))
                   (__foldr1 cons __tmp196149 _%src-deps-c195801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     __tmp196148
                                                     _%gsc-static-opts195833%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp196147
                                              _%gsc-cc-opts195831%_)))))
                                (declare (not safe))
                                (gxc#invoke__%
                                 '#f
                                 absent-value
                                 absent-value
                                 __tmp196150
                                 __tmp196146))
                              (let ((__tmp196157
                                     (let ()
                                       (declare (not safe))
                                       (gxc#gerbil-gcc)))
                                    (__tmp196151
                                     (cons '"-w"
                                           (cons '"-o"
                                                 (cons _%output-bin195817%_
                                                       (let ((__tmp196152
                                                              (cons _%src-bin-o195815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-o195823%_
                                  (cons _%output_-o195827%_
                                        (let ((__tmp196153
                                               (let ((__tmp196154
                                                      (let ((__tmp196156
                                                             (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%gerbil-libdir195759%_
                                 (cons '"-lgambit"
                                       _%libgerbil-ld-opts195837%_))))
                    (__tmp196155
                     (if (let ()
                           (declare (not safe))
                           (gxc#gerbil-enable-shared?))
                         (cons _%rpath195839%_ '())
                         '())))
                (declare (not safe))
                (__foldr1 cons __tmp196156 __tmp196155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp196154
                                                  _%output-ld-opts195835%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           __tmp196153
                                           _%libgerbil-o195787%_)))))))
                 (declare (not safe))
                 (__foldr1 cons __tmp196152 _%src-deps-o195807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (gxc#invoke__%
                                 '#f
                                 absent-value
                                 absent-value
                                 __tmp196157
                                 __tmp196151))
                              (let ((__tmp196158
                                     (cons _%output-c195821%_
                                           (cons _%output_-c195825%_
                                                 (cons _%output-o195823%_
                                                       (cons _%output_-o195827%_
                                                             '()))))))
                                (declare (not safe))
                                (##for-each delete-file __tmp196158)))
                            '#!void))))))
          (let* ((_%output-bin195749%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195735%_
                     _%opts195736%_)))
                 (_%output-scm195751%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195749%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195747%_
               _%output-scm195751%_
               _%output-bin195749%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195751%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx195560%_ _%opts195561%_)
        (letrec ((_%reset-declare195563%_
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
                 (_%generate-stub195564%_
                  (lambda (_%deps195726%_)
                    (let ((_%mod-main195728%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195560%_ 'main)))
                          (_%reset-decl195729%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare195563%_)))
                          (_%user-decl195730%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare195565%_))))
                      (for-each
                       (lambda (_%dep195732%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl195729%_))
                         (newline)
                         (if _%user-decl195730%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl195730%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196159
                                (cons 'include (cons _%dep195732%_ '()))))
                           (declare (not safe))
                           (##write __tmp196159))
                         (newline))
                       _%deps195726%_)
                      (let ((__tmp196160
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main195728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196160))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare195565%_
                  (lambda ()
                    (let* ((_%gsc-opts195631%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts195561%_)))
                           (_%gsc-prelude195633%_
                            (if _%gsc-opts195631%_
                                (member '"-prelude" _%gsc-opts195631%_)
                                '#f))
                           (_%gsc-prelude195635%_
                            (if _%gsc-prelude195633%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude195633%_)))
                                '#f)))
                      (let _%lp195638%_ ((_%rest195640%_
                                          (cons _%gsc-prelude195635%_ '()))
                                         (_%user-decls195641%_ '()))
                        (let* ((_%rest195642195650%_ _%rest195640%_)
                               (_%else195644195658%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls195641%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls195641%_)))))
                               (_%K195646195714%_
                                (lambda (_%rest195661%_ _%expr195662%_)
                                  (let* ((_%expr195663195675%_ _%expr195662%_)
                                         (_%else195666195683%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp195638%_
                                               _%rest195661%_
                                               _%user-decls195641%_)))))
                                    (let ((_%K195671195704%_
                                           (lambda (_%decls195702%_)
                                             (let ((__tmp196161
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls195641%_
                                                       _%decls195702%_))))
                                               (declare (not safe))
                                               (_%lp195638%_
                                                _%rest195661%_
                                                __tmp196161))))
                                          (_%K195668195689%_
                                           (lambda (_%exprs195687%_)
                                             (let ((__tmp196162
                                                    (append _%exprs195687%_
                                                            _%rest195661%_)))
                                               (declare (not safe))
                                               (_%lp195638%_
                                                __tmp196162
                                                _%user-decls195641%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr195663195675%_))
                                          (let ((_%tl195673195709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr195663195675%_)))
                                                (_%hd195672195707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr195663195675%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd195672195707%_
                                                         'declare))
                                                (let ((_%decls195712%_
                                                       _%tl195673195709%_))
                                                  (declare (not safe))
                                                  (_%K195671195704%_
                                                   _%decls195712%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd195672195707%_
                                                             'begin))
                                                    (let ((_%exprs195697%_
                                                           _%tl195673195709%_))
                                                      (declare (not safe))
                                                      (_%K195668195689%_
                                                       _%exprs195697%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else195666195683%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195666195683%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest195642195650%_))
                              (let ((_%hd195647195717%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195642195650%_)))
                                    (_%tl195648195719%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195642195650%_))))
                                (let* ((_%expr195722%_ _%hd195647195717%_)
                                       (_%rest195724%_ _%tl195648195719%_))
                                  (declare (not safe))
                                  (_%K195646195714%_
                                   _%rest195724%_
                                   _%expr195722%_)))
                              (let ()
                                (declare (not safe))
                                (_%else195644195658%_))))))))
                 (_%compile-stub195566%_
                  (lambda (_%output-scm195573%_ _%output-bin195574%_)
                    (let* ((_%gerbil-home195576%_
                            (let ((__tmp196163
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196163)))
                           (_%gerbil-libdir195578%_
                            (path-expand '"lib" _%gerbil-home195576%_))
                           (_%runtime195580%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp195582%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home195576%_))
                           (_%include-gambit-sharp195584%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp195582%_
                               '"\")")))
                           (_%bin-scm195586%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195560%_)))
                           (_%deps195588%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195560%_)))
                           (_%deps195590%_
                            (map gxc#find-static-module-file _%deps195588%_))
                           (_%deps195595%_
                            (let ((__tmp196164
                                   (lambda (_%$obj195592%_)
                                     (let ((__tmp196165
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj195592%_))))
                                       (declare (not safe))
                                       (not __tmp196165)))))
                              (declare (not safe))
                              (##filter __tmp196164 _%deps195590%_)))
                           (_%deps195599%_
                            (let ((__tmp196166
                                   (lambda (_%f195597%_)
                                     (let ((__tmp196167
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f195597%_
                                               _%runtime195580%_))))
                                       (declare (not safe))
                                       (not __tmp196167)))))
                              (declare (not safe))
                              (##filter __tmp196166 _%deps195595%_)))
                           (_%output-base195601%_
                            (let ((__tmp196168
                                   (path-strip-extension
                                    _%output-scm195573%_)))
                              (declare (not safe))
                              (##string-append __tmp196168)))
                           (_%output-c195603%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195601%_ '".c")))
                           (_%output-o195605%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195601%_ '".o")))
                           (_%output-c_195607%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195601%_ '"_.c")))
                           (_%output-o_195609%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195601%_ '"_.o")))
                           (_%gsc-link-opts195611%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195613%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195615%_
                            (let ((__tmp196169
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir195578%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp196169)))
                           (_%output-ld-opts195617%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros195619%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp195584%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp195584%_
                                            '()))))
                           (_%gsc-link-opts195621%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts195611%_
                               _%gsc-gx-macros195619%_)))
                           (_%rpath195623%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195578%_)))
                           (_%default-ld-options195625%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196170
                             (lambda ()
                               (let ((__tmp196171
                                      (path-directory _%output-bin195574%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196171)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196170))
                      (let ((__tmp196172
                             (lambda ()
                               (let ((__tmp196173
                                      (let ((__tmp196174
                                             (let ((__tmp196175
                                                    (cons _%bin-scm195586%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp196175
                                                _%deps195599%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196174
                                         _%runtime195580%_))))
                                 (declare (not safe))
                                 (_%generate-stub195564%_ __tmp196173)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195573%_
                         __tmp196172))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196178
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196176
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_195607%_
                                                     (let ((__tmp196177
                                                            (cons _%output-scm195573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp196177 _%gsc-link-opts195621%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196178
                               __tmp196176))
                            (let ((__tmp196182
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196179
                                   (cons '"-obj"
                                         (let ((__tmp196180
                                                (let ((__tmp196181
                                                       (cons _%output-c195603%_
                                                             (cons _%output-c_195607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196181
                                                   _%gsc-static-opts195615%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196180
                                            _%gsc-cc-opts195613%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196182
                               __tmp196179))
                            (let ((__tmp196187
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196183
                                   (cons '"-w"
                                         (cons '"-o"
                                               (cons _%output-bin195574%_
                                                     (cons _%output-o195605%_
                                                           (cons _%output-o_195609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp196184
                                (let ((__tmp196186
                                       (cons '"-L"
                                             (cons _%gerbil-libdir195578%_
                                                   (cons '"-lgambit"
                                                         _%default-ld-options195625%_))))
                                      (__tmp196185
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#gerbil-enable-shared?))
                                           (cons _%rpath195623%_ '())
                                           '())))
                                  (declare (not safe))
                                  (__foldr1 cons __tmp196186 __tmp196185))))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp196184
                            _%output-ld-opts195617%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196187
                               __tmp196183)))
                          '#!void)))))
          (let* ((_%output-bin195568%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195560%_
                     _%opts195561%_)))
                 (_%output-scm195570%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195568%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195566%_
               _%output-scm195570%_
               _%output-bin195568%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195570%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx195509%_ _%id195510%_)
        (let ((_%$e195556%_
               (let ((__tmp196189
                      (lambda (_%e195511195513%_)
                        (let* ((_%g195515195525%_ _%e195511195513%_)
                               (_%else195517195533%_ (lambda () '#f))
                               (_%K195519195537%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g195515195525%_
                                 'gx#module-export::t))
                              (let* ((_%e195520195540%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195515195525%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e195521195543%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195515195525%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e195522195546%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195515195525%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e195522195546%_ '0))
                                    (let ((_%e195523195549%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g195515195525%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g195551195553%_)
                                             (eq? _%g195551195553%_
                                                  _%id195510%_))
                                           _%e195523195549%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K195519195537%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195517195533%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else195517195533%_))))
                              (let ()
                                (declare (not safe))
                                (_%else195517195533%_))))))
                     (__tmp196188
                      (##structure-ref
                       _%ctx195509%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196189 __tmp196188))))
          (if _%$e195556%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e195556%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx195500%_ _%id195501%_)
        (let ((_%$e195503%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx195500%_ _%id195501%_))))
          (if _%$e195503%_
              ((lambda (_%bind195506%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind195506%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id195501%_)))
                 (##structure-ref _%bind195506%_ '1 gx#binding::t '#f))
               _%$e195503%_)
              (let ((__tmp196190
                     (##structure-ref
                      _%ctx195500%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196190
                 _%id195501%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195366%_)
        (letrec* ((_%ht195368%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195369%_
                   (lambda (_%in195445%_ _%phi195446%_)
                     (let ((_%iphi195448%_
                            (fx+ _%phi195446%_
                                 (##direct-structure-ref
                                  _%in195445%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports195449%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in195445%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp195451%_ ((_%rest195453%_ _%imports195449%_)
                                          (_%r195454%_ '()))
                         (let* ((_%rest195455195463%_ _%rest195453%_)
                                (_%else195457195471%_ (lambda () _%r195454%_))
                                (_%K195459195488%_
                                 (lambda (_%rest195474%_ _%in195475%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in195475%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi195448%_))
                                             (let ((__tmp196191
                                                    (cons _%in195475%_
                                                          _%r195454%_)))
                                               (declare (not safe))
                                               (_%lp195451%_
                                                _%rest195474%_
                                                __tmp196191))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp195451%_
                                                _%rest195474%_
                                                _%r195454%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in195475%_
                                              'gx#module-import::t))
                                           (let ((_%iphi195479%_
                                                  (fx+ _%phi195446%_
                                                       (##direct-structure-ref
                                                        _%in195475%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi195479%_))
                                                 (let ((__tmp196192
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in195475%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r195454%_)))
                                                   (declare (not safe))
                                                   (_%lp195451%_
                                                    _%rest195474%_
                                                    __tmp196192))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp195451%_
                                                    _%rest195474%_
                                                    _%r195454%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in195475%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi195482%_
                                                      (fx+ _%iphi195448%_
                                                           (##direct-structure-ref
                                                            _%in195475%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi195482%_))
                                                     (let ((__tmp196193
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in195475%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r195454%_)))
               (declare (not safe))
               (_%lp195451%_ _%rest195474%_ __tmp196193))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi195482%_))
                                                         (let ((__tmp196194
                                                                (let ((__tmp196195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195369%_
                                  _%in195475%_
                                  _%iphi195448%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r195454%_ __tmp196195))))
                   (declare (not safe))
                   (_%lp195451%_ _%rest195474%_ __tmp196194))
                 (let ()
                   (declare (not safe))
                   (_%lp195451%_ _%rest195474%_ _%r195454%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp195451%_
                                                  _%rest195474%_
                                                  _%r195454%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest195455195463%_))
                               (let ((_%hd195460195491%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest195455195463%_)))
                                     (_%tl195461195493%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest195455195463%_))))
                                 (let* ((_%in195496%_ _%hd195460195491%_)
                                        (_%rest195498%_ _%tl195461195493%_))
                                   (declare (not safe))
                                   (_%K195459195488%_
                                    _%rest195498%_
                                    _%in195496%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else195457195471%_))))))))
                  (_%find-deps195370%_
                   (lambda (_%rest195378%_ _%deps195379%_)
                     (let* ((_%rest195380195388%_ _%rest195378%_)
                            (_%else195382195396%_ (lambda () _%deps195379%_))
                            (_%K195384195433%_
                             (lambda (_%rest195399%_ _%hd195400%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195400%_
                                      'gx#module-context::t))
                                   (let ((_%id195403%_
                                          (##structure-ref
                                           _%hd195400%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195404%_
                                          (##structure-ref
                                           _%hd195400%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195368%_
                                            _%id195403%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps195370%_
                                            _%rest195399%_
                                            _%deps195379%_))
                                         (let ((_%$e195407%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195400%_))))
                                           (if _%$e195407%_
                                               ((lambda (_%pre195410%_)
                                                  (let ((_%xdeps195412%_
                                                         (let ((__tmp196196
                                                                (cons _%pre195410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports195404%_)))
                   (declare (not safe))
                   (_%find-deps195370%_ __tmp196196 _%deps195379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195368%_
                                                       _%id195403%_
                                                       _%hd195400%_))
                                                    (let ((__tmp196197
                                                           (cons _%hd195400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps195412%_)))
              (declare (not safe))
              (_%find-deps195370%_ _%rest195399%_ __tmp196197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e195407%_)
                                               (let ((_%xdeps195415%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps195370%_
                                                         _%imports195404%_
                                                         _%deps195379%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195368%_
                                                    _%id195403%_
                                                    _%hd195400%_))
                                                 (let ((__tmp196198
                                                        (cons _%hd195400%_
                                                              _%xdeps195415%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195370%_
                                                    _%rest195399%_
                                                    __tmp196198)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195400%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195418%_
                                              (##structure-ref
                                               _%hd195400%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195368%_
                                                _%id195418%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps195370%_
                                                _%rest195399%_
                                                _%deps195379%_))
                                             (let ((_%xdeps195422%_
                                                    (let ((__tmp196199
                                                           (##structure-ref
                                                            _%hd195400%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps195370%_
                                                       __tmp196199
                                                       _%deps195379%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195368%_
                                                      _%id195418%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps195370%_
                                                      _%rest195399%_
                                                      _%xdeps195422%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195368%_
                                                        _%id195418%_
                                                        _%hd195400%_))
                                                     (let ((__tmp196200
                                                            (cons _%hd195400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps195422%_)))
               (declare (not safe))
               (_%find-deps195370%_ _%rest195399%_ __tmp196200)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195400%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd195400%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp196201
                                                        (cons (##direct-structure-ref
                                                               _%hd195400%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest195399%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195370%_
                                                    __tmp196201
                                                    _%deps195379%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps195370%_
                                                    _%rest195399%_
                                                    _%deps195379%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195400%_
                                                  'gx#module-export::t))
                                               (let ((__tmp196202
                                                      (cons (##direct-structure-ref
                                                             _%hd195400%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest195399%_)))
                                                 (declare (not safe))
                                                 (_%find-deps195370%_
                                                  __tmp196202
                                                  _%deps195379%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195400%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd195400%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp196203
                        (cons (##direct-structure-ref
                               _%hd195400%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest195399%_)))
                   (declare (not safe))
                   (_%find-deps195370%_ __tmp196203 _%deps195379%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd195400%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps195429%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195369%_
                                  _%hd195400%_
                                  '0)))
                              (__tmp196204
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest195399%_
                                  _%xdeps195429%_))))
                         (declare (not safe))
                         (_%find-deps195370%_ __tmp196204 _%deps195379%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps195370%_ _%rest195399%_ _%deps195379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195400%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195380195388%_))
                           (let ((_%hd195385195436%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195380195388%_)))
                                 (_%tl195386195438%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195380195388%_))))
                             (let* ((_%hd195441%_ _%hd195385195436%_)
                                    (_%rest195443%_ _%tl195386195438%_))
                               (declare (not safe))
                               (_%K195384195433%_
                                _%rest195443%_
                                _%hd195441%_)))
                           (let ()
                             (declare (not safe))
                             (_%else195382195396%_)))))))
          (let ((__tmp196205
                 (filter gx#expander-context-id
                         (let ((__tmp196206
                                (let ((_%$e195372%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx195366%_))))
                                  (if _%$e195372%_
                                      ((lambda (_%pre195375%_)
                                         (cons _%pre195375%_
                                               (##structure-ref
                                                _%ctx195366%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e195372%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx195366%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps195370%_ __tmp196206 '())))))
            (declare (not safe))
            (##reverse __tmp196205)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195296%_)
        (let* ((_%context-id195298%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195296%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195296%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195296%_)))
               (_%scm195300%_
                (let ((__tmp196207
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id195298%_))))
                  (declare (not safe))
                  (##string-append __tmp196207 '".scm")))
               (_%dirs195302%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195308%_
                (let ((_%user-libpath195304%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195304%_
                      (let ((_%user-libpath195306%_
                             (path-expand '"lib" _%user-libpath195304%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195306%_ _%dirs195302%_))
                            _%dirs195302%_
                            (cons _%user-libpath195306%_ _%dirs195302%_)))
                      _%dirs195302%_)))
               (_%dirs195318%_
                (let ((_%$e195310%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195310%_
                      ((lambda (_%g195312195314%_)
                         (cons _%g195312195314%_ _%dirs195308%_))
                       _%$e195310%_)
                      (let () _%dirs195308%_))))
               (_%dirs195324%_
                (map (lambda (_%g195319195321%_)
                       (path-expand '"static" _%g195319195321%_))
                     _%dirs195318%_)))
          (let _%lp195327%_ ((_%rest195329%_ _%dirs195324%_))
            (let* ((_%rest195330195338%_ _%rest195329%_)
                   (_%else195332195346%_
                    (lambda ()
                      (let ((__tmp196208
                             (##structure-ref
                              _%ctx195296%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196208
                         _%scm195300%_))))
                   (_%K195334195354%_
                    (lambda (_%rest195349%_ _%dir195350%_)
                      (let ((_%path195352%_
                             (path-expand _%scm195300%_ _%dir195350%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195352%_))
                            _%path195352%_
                            (let ()
                              (declare (not safe))
                              (_%lp195327%_ _%rest195349%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest195330195338%_))
                  (let ((_%hd195335195357%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195330195338%_)))
                        (_%tl195336195359%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195330195338%_))))
                    (let* ((_%dir195362%_ _%hd195335195357%_)
                           (_%rest195364%_ _%tl195336195359%_))
                      (declare (not safe))
                      (_%K195334195354%_ _%rest195364%_ _%dir195362%_)))
                  (let () (declare (not safe)) (_%else195332195346%_))))))))
    (define gxc#file-empty?
      (lambda (_%path195294%_)
        (zero? (let ((__tmp196209 (file-info _%path195294%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196209)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195283%_)
        (let ((__tmp196213
               (lambda ()
                 (let ((__tmp196214
                        (##structure-ref
                         _%ctx195283%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196214))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196215
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195283%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196215))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx195283%_))
                 (if (let ((__tmp196216
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx195283%_))))
                       (declare (not safe))
                       (null? __tmp196216))
                     (let* ((_%thr1195288%_
                             (let ((__tmp196217
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx195283%_)))))
                               (declare (not safe))
                               (__spawn __tmp196217)))
                            (_%thr2195291%_
                             (let ((__tmp196218
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx195283%_)))))
                               (declare (not safe))
                               (__spawn __tmp196218))))
                       (let () (declare (not safe)) (gxc#join! _%thr1195288%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2195291%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx195283%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx195283%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx195283%_))
                     '#!void)))
              (__tmp196212
               (let ((__obj196086
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196086)
                 __obj196086))
              (__tmp196211 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196210
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
           __tmp196213
           gx#current-expander-context
           _%ctx195283%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196212
           gxc#current-compile-runtime-sections
           __tmp196211
           gxc#current-compile-runtime-names
           __tmp196210))))
    (define gxc#collect-bindings
      (lambda (_%ctx195281%_)
        (let ((__tmp196219
               (##structure-ref _%ctx195281%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196219))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195225%_)
        (letrec ((_%compile1195227%_
                  (lambda (_%ctx195268%_)
                    (let* ((_%code195270%_
                            (##structure-ref
                             _%ctx195268%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt195274%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code195270%_))
                                (let ((_%idstr195272%_
                                       (let ((__tmp196220
                                              (##structure-ref
                                               _%ctx195268%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp196220))))
                                  (declare (not safe))
                                  (##string-append _%idstr195272%_ '"~0"))
                                '#f)))
                      (if _%rt195274%_
                          (let ()
                            (let ((__tmp196221
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp196221
                               _%ctx195268%_
                               _%rt195274%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code195229%_
                               _%ctx195268%_
                               _%code195270%_)))
                          (let ((_%path195279%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx195268%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path195279%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code195230%_
                         _%ctx195268%_
                         _%code195270%_
                         _%rt195274%_)))))
                 (_%context-timestamp195228%_
                  (lambda (_%ctx195266%_)
                    (let ((__tmp196222
                           (let ((__tmp196223
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195266%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196223 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196222))))
                 (_%generate-runtime-code195229%_
                  (lambda (_%ctx195248%_ _%code195249%_)
                    (let* ((_%lifts195251%_ (box '()))
                           (_%runtime-code195254%_
                            (let ((__tmp196226
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code195249%_))))
                                  (__tmp196225
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp196224
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196226
                               gx#current-expander-context
                               _%ctx195248%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts195251%_
                               gxc#current-compile-marks
                               __tmp196225
                               gxc#current-compile-identifiers
                               __tmp196224)))
                           (_%runtime-code195256%_
                            (if (let ((__tmp196227 (unbox _%lifts195251%_)))
                                  (declare (not safe))
                                  (null? __tmp196227))
                                _%runtime-code195254%_
                                (cons 'begin
                                      (let ((__tmp196229
                                             (cons _%runtime-code195254%_ '()))
                                            (__tmp196228
                                             (reverse (unbox _%lifts195251%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196229
                                         __tmp196228)))))
                           (_%runtime-code195258%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp195228%_
                                                       _%ctx195248%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code195256%_ '()))))
                           (_%scm0195260%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195248%_
                               '0
                               '".scm")))
                           (_%scms195263%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx195248%_))))
                      (let ((__tmp196230
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0195260%_
                                  _%runtime-code195258%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196230
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms195263%_)
                          (delete-file _%scms195263%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0195260%_
                         '" => "
                         _%scms195263%_))
                      (copy-file _%scm0195260%_ _%scms195263%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0195260%_)))))
                 (_%generate-loader-code195230%_
                  (lambda (_%ctx195237%_ _%code195238%_ _%rt195239%_)
                    (let* ((_%loader-code195242%_
                            (let ((__tmp196231
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195238%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196231
                               gx#current-expander-context
                               _%ctx195237%_)))
                           (_%loader-code195244%_
                            (if _%rt195239%_
                                (cons 'begin
                                      (cons _%loader-code195242%_
                                            (cons (cons 'load-module
                                                        (cons _%rt195239%_
                                                              '()))
                                                  '())))
                                _%loader-code195242%_))
                           (__tmp196232
                            (lambda ()
                              (let ((__tmp196233
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx195237%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp196233
                                 _%loader-code195244%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196232
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules195232%_
                  (cons _%ctx195225%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx195225%_))))
                 (__tmp196234
                  (lambda (_%ctx195234%_)
                    (let ((__tmp196235
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1195227%_ _%ctx195234%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196235
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196234 _%all-modules195232%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195120%_)
        (letrec ((_%compile-ssi195122%_
                  (lambda (_%code195193%_)
                    (let* ((_%path195195%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195120%_
                               '#f
                               '".ssi")))
                           (_%prelude195207%_
                            (let* ((_%super195197%_
                                    (##structure-ref
                                     _%ctx195120%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195199%_
                                    (##structure-ref
                                     _%super195197%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195199%_
                                  ((lambda (_%g195201195203%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195201195203%_)))
                                   _%$e195199%_)
                                  (let () ':<root>))))
                           (_%ns195209%_
                            (##structure-ref
                             _%ctx195120%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195211%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195120%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195219%_
                            (let ((_%$e195213%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195211%_ '#\/))))
                              (if _%$e195213%_
                                  ((lambda (_%x195216%_)
                                     (let ((__tmp196236
                                            (substring
                                             _%idstr195211%_
                                             '0
                                             _%x195216%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196236)))
                                   _%$e195213%_)
                                  (let () '#f))))
                           (_%rt195221%_
                            (let ((__tmp196237
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196237 _%ctx195120%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195195%_))
                      (let ((__tmp196238
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude195207%_))
                               (if _%pkg195219%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg195219%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns195209%_))
                               (newline)
                               (pretty-print _%code195193%_)
                               (if _%rt195221%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt195221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path195195%_
                         __tmp196238)))))
                 (_%compile-phi195123%_
                  (lambda (_%part195133%_)
                    (let* ((_%part195134195147%_ _%part195133%_)
                           (_%E195136195151%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195134195147%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195137195162%_
                            (lambda (_%code195154%_
                                     _%n195155%_
                                     _%phi195156%_
                                     _%phi-ctx195157%_)
                              (let* ((_%code195160%_
                                      (let ((__tmp196239
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code195154%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp196239
                                         gx#current-expander-context
                                         _%phi-ctx195157%_
                                         gx#current-expander-phi
                                         _%phi195156%_)))
                                     (__tmp196240
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx195120%_
                                         _%n195155%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp196240
                                 _%code195160%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195134195147%_))
                          (let ((_%hd195138195165%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195134195147%_)))
                                (_%tl195139195167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195134195147%_))))
                            (let ((_%phi-ctx195170%_ _%hd195138195165%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195139195167%_))
                                  (let ((_%hd195140195172%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195139195167%_)))
                                        (_%tl195141195174%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195139195167%_))))
                                    (let ((_%phi195177%_ _%hd195140195172%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195141195174%_))
                                          (let ((_%hd195142195179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195141195174%_)))
                                                (_%tl195143195181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195141195174%_))))
                                            (let ((_%n195184%_
                                                   _%hd195142195179%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195143195181%_))
                                                  (let ((_%hd195144195186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195143195181%_)))
                                                        (_%tl195145195188%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195143195181%_))))
                                                    (let ((_%code195191%_
                                                           _%hd195144195186%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195145195188%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K195137195162%_
                                                             _%code195191%_
                                                             _%n195184%_
                                                             _%phi195177%_
                                                             _%phi-ctx195170%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E195136195151%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E195136195151%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E195136195151%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E195136195151%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E195136195151%_)))))))
          (let ((_g196241_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx195120%_))))
            (begin
              (let ((_g196242_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196241_)
                           (##vector-length _g196241_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196242_ 2)))
                    (error "Context expects 2 values" _g196242_)))
              (let ((_%ssi-code195125%_
                     (let () (declare (not safe)) (##vector-ref _g196241_ 0)))
                    (_%phi-code195126%_
                     (let () (declare (not safe)) (##vector-ref _g196241_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi195122%_ _%ssi-code195125%_))
                  (let ((_%threads195131%_
                         (map (lambda (_%code195128%_)
                                (let ((__tmp196243
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi195123%_
                                            _%code195128%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp196243)))
                              _%phi-code195126%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads195131%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195102%_)
        (let* ((_%path195104%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx195102%_ '#f '".ssxi.ss")))
               (_%code195106%_
                (let ((__tmp196244
                       (##structure-ref
                        _%ctx195102%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196244)))
               (_%idstr195108%_
                (symbol->string
                 (##structure-ref
                  _%ctx195102%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195116%_
                (let ((_%$e195110%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195108%_ '#\/))))
                  (if _%$e195110%_
                      ((lambda (_%x195113%_)
                         (let ((__tmp196245
                                (substring _%idstr195108%_ '0 _%x195113%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196245)))
                       _%$e195110%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195104%_))
          (let ((__tmp196246
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg195116%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg195116%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code195106%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path195104%_ __tmp196246)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195095%_)
        (let* ((_%state195097%_
                (let ((__obj196087
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196087 _%ctx195095%_)
                  __obj196087))
               (_%ssi-code195099%_
                (let ((__tmp196247
                       (##structure-ref
                        _%ctx195095%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195097%_
                   __tmp196247))))
          (values _%ssi-code195099%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195097%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195088%_)
        (let ((_%lifts195090%_ (box '())))
          (let ((__tmp196250
                 (lambda ()
                   (let ((_%code195093%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195088%_))))
                     (if (let ((__tmp196251 (unbox _%lifts195090%_)))
                           (declare (not safe))
                           (null? __tmp196251))
                         _%code195093%_
                         (cons 'begin
                               (let ((__tmp196253 (cons _%code195093%_ '()))
                                     (__tmp196252
                                      (reverse (unbox _%lifts195090%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196253 __tmp196252)))))))
                (__tmp196249
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196248
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196250
             gxc#current-compile-lift
             _%lifts195090%_
             gxc#current-compile-marks
             __tmp196249
             gxc#current-compile-identifiers
             __tmp196248)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195084%_)
        (let ((_%modules195086%_ (box '())))
          (let ((__tmp196254
                 (##structure-ref _%ctx195084%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195086%_ __tmp196254))
          (reverse (unbox _%modules195086%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195067%_ _%code195068%_ _%phi?195069%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195067%_))
        (let ((__tmp196255
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp196256
                                                 (if _%phi?195069%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp196256)))))))
                 (pretty-print _%code195068%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path195067%_ __tmp196255))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path195067%_ _%phi?195069%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path195067%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path195075%_ _%code195076%_)
        (let ((_%phi?195078%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path195075%_
           _%code195076%_
           _%phi?195078%_))))
    (define gxc#compile-scm-file
      (lambda _g196258_
        (let ((_g196257_ (let () (declare (not safe)) (##length _g196258_))))
          (cond ((let () (declare (not safe)) (##fx= _g196257_ 2))
                 (apply (lambda (_%path195075%_ _%code195076%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path195075%_
                             _%code195076%_)))
                        _g196258_))
                ((let () (declare (not safe)) (##fx= _g196257_ 3))
                 (apply (lambda (_%path195080%_ _%code195081%_ _%phi?195082%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path195080%_
                             _%code195081%_
                             _%phi?195082%_)))
                        _g196258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196258_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?194968%_)
        (let _%lp194970%_ ((_%rest194972%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194973%_ '()))
          (let* ((_%rest194974194994%_ _%rest194972%_)
                 (_%else194978195002%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194968%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts194973%_)))
                        (reverse _%opts194973%_)))))
            (let ((_%K194988195045%_
                   (lambda (_%rest195043%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194970%_ _%rest195043%_ _%opts194973%_))))
                  (_%K194983195027%_
                   (lambda (_%rest195025%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194970%_ _%rest195025%_ _%opts194973%_))))
                  (_%K194980195009%_
                   (lambda (_%rest195006%_ _%opt195007%_)
                     (let ((__tmp196259 (cons _%opt195007%_ _%opts194973%_)))
                       (declare (not safe))
                       (_%lp194970%_ _%rest195006%_ __tmp196259)))))
              (if (let () (declare (not safe)) (##pair? _%rest194974194994%_))
                  (let ((_%tl194990195050%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194974194994%_)))
                        (_%hd194989195048%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194974194994%_))))
                    (if (equal? _%hd194989195048%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194990195050%_))
                            (let* ((_%tl194992195053%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194990195050%_)))
                                   (_%rest195056%_ _%tl194992195053%_))
                              (declare (not safe))
                              (_%K194988195045%_ _%rest195056%_))
                            (let ((_%opt195017%_ _%hd194989195048%_)
                                  (_%rest195019%_ _%tl194990195050%_))
                              (let ()
                                (declare (not safe))
                                (_%K194980195009%_
                                 _%rest195019%_
                                 _%opt195017%_))))
                        (if (equal? _%hd194989195048%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194990195050%_))
                                (let* ((_%tl194987195035%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194990195050%_)))
                                       (_%rest195038%_ _%tl194987195035%_))
                                  (declare (not safe))
                                  (_%K194983195027%_ _%rest195038%_))
                                (let ((_%opt195017%_ _%hd194989195048%_)
                                      (_%rest195019%_ _%tl194990195050%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K194980195009%_
                                     _%rest195019%_
                                     _%opt195017%_))))
                            (let ((_%opt195017%_ _%hd194989195048%_)
                                  (_%rest195019%_ _%tl194990195050%_))
                              (let ()
                                (declare (not safe))
                                (_%K194980195009%_
                                 _%rest195019%_
                                 _%opt195017%_))))))
                  (let () (declare (not safe)) (_%else194978195002%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195062%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?195062%_))))
    (define gxc#gsc-link-options
      (lambda _g196261_
        (let ((_g196260_ (let () (declare (not safe)) (##length _g196261_))))
          (cond ((let () (declare (not safe)) (##fx= _g196260_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g196261_))
                ((let () (declare (not safe)) (##fx= _g196260_ 1))
                 (apply (lambda (_%phi?195064%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?195064%_)))
                        _g196261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196261_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?194869%_)
        (let _%lp194871%_ ((_%rest194873%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194874%_ '()))
          (let* ((_%rest194875194895%_ _%rest194873%_)
                 (_%else194879194903%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194869%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts194874%_)))
                        (reverse _%opts194874%_)))))
            (let ((_%K194889194942%_
                   (lambda (_%rest194939%_ _%opt194940%_)
                     (let ((__tmp196262
                            (let ((__tmp196263
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts194874%_))))
                              (declare (not safe))
                              (cons _%opt194940%_ __tmp196263))))
                       (declare (not safe))
                       (_%lp194871%_ _%rest194939%_ __tmp196262))))
                  (_%K194884194923%_
                   (lambda (_%rest194921%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194871%_ _%rest194921%_ _%opts194874%_))))
                  (_%K194881194909%_
                   (lambda (_%rest194907%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194871%_ _%rest194907%_ _%opts194874%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194875194895%_))
                  (let ((_%tl194891194947%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194875194895%_)))
                        (_%hd194890194945%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194875194895%_))))
                    (if (equal? _%hd194890194945%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194891194947%_))
                            (let ((_%tl194893194952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl194891194947%_)))
                                  (_%hd194892194950%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl194891194947%_))))
                              (let ((_%opt194955%_ _%hd194892194950%_)
                                    (_%rest194957%_ _%tl194893194952%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K194889194942%_
                                   _%rest194957%_
                                   _%opt194955%_))))
                            (let ((_%rest194915%_ _%tl194891194947%_))
                              (declare (not safe))
                              (_%K194881194909%_ _%rest194915%_)))
                        (if (equal? _%hd194890194945%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194891194947%_))
                                (let* ((_%tl194888194931%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194891194947%_)))
                                       (_%rest194934%_ _%tl194888194931%_))
                                  (declare (not safe))
                                  (_%K194884194923%_ _%rest194934%_))
                                (let ((_%rest194915%_ _%tl194891194947%_))
                                  (declare (not safe))
                                  (_%K194881194909%_ _%rest194915%_)))
                            (let ((_%rest194915%_ _%tl194891194947%_))
                              (declare (not safe))
                              (_%K194881194909%_ _%rest194915%_)))))
                  (let () (declare (not safe)) (_%else194879194903%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?194963%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?194963%_))))
    (define gxc#gsc-cc-options
      (lambda _g196265_
        (let ((_g196264_ (let () (declare (not safe)) (##length _g196265_))))
          (cond ((let () (declare (not safe)) (##fx= _g196264_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g196265_))
                ((let () (declare (not safe)) (##fx= _g196264_ 1))
                 (apply (lambda (_%phi?194965%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?194965%_)))
                        _g196265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g196265_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir194864%_)
        (let ((_%user-staticdir194866%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir194864%_
                       '" -I "
                       _%user-staticdir194866%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194776%_ ((_%rest194778%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194779%_ '()))
          (let* ((_%rest194780194800%_ _%rest194778%_)
                 (_%else194784194808%_ (lambda () _%opts194779%_)))
            (let ((_%K194794194851%_
                   (lambda (_%rest194849%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194776%_ _%rest194849%_ _%opts194779%_))))
                  (_%K194789194829%_
                   (lambda (_%rest194826%_ _%opt194827%_)
                     (let ((__tmp196266
                            (let ((__tmp196267
                                   (let ((__tmp196268
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt194827%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp196268))))
                              (declare (not safe))
                              (##append _%opts194779%_ __tmp196267))))
                       (declare (not safe))
                       (_%lp194776%_ _%rest194826%_ __tmp196266))))
                  (_%K194786194814%_
                   (lambda (_%rest194812%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194776%_ _%rest194812%_ _%opts194779%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194780194800%_))
                  (let ((_%tl194796194856%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194780194800%_)))
                        (_%hd194795194854%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194780194800%_))))
                    (if (equal? _%hd194795194854%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194796194856%_))
                            (let* ((_%tl194798194859%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194796194856%_)))
                                   (_%rest194862%_ _%tl194798194859%_))
                              (declare (not safe))
                              (_%K194794194851%_ _%rest194862%_))
                            (let ((_%rest194820%_ _%tl194796194856%_))
                              (declare (not safe))
                              (_%K194786194814%_ _%rest194820%_)))
                        (if (equal? _%hd194795194854%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194796194856%_))
                                (let ((_%tl194793194839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194796194856%_)))
                                      (_%hd194792194837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194796194856%_))))
                                  (let ((_%opt194842%_ _%hd194792194837%_)
                                        (_%rest194844%_ _%tl194793194839%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K194789194829%_
                                       _%rest194844%_
                                       _%opt194842%_))))
                                (let ((_%rest194820%_ _%tl194796194856%_))
                                  (declare (not safe))
                                  (_%K194786194814%_ _%rest194820%_)))
                            (let ((_%rest194820%_ _%tl194796194856%_))
                              (declare (not safe))
                              (_%K194786194814%_ _%rest194820%_)))))
                  (let () (declare (not safe)) (_%else194784194808%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str194773%_)
        (let ((__tmp196269
               (let () (declare (not safe)) (string-empty? _%str194773%_))))
          (declare (not safe))
          (not __tmp196269))))
    (define gxc#gsc-compile-file
      (lambda (_%path194741%_ _%phi?194742%_)
        (letrec ((_%gsc-link-path194744%_
                  (lambda (_%base-path194765%_)
                    (let _%lp194767%_ ((_%n194769%_ '1))
                      (let ((_%path194771%_
                             (let ((__tmp196270 (number->string _%n194769%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path194765%_
                                '".o"
                                __tmp196270))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194771%_))
                            (let ((__tmp196271
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n194769%_ '1))))
                              (declare (not safe))
                              (_%lp194767%_ __tmp196271))
                            _%path194771%_))))))
          (let* ((_%base-path194746%_ (path-strip-extension _%path194741%_))
                 (_%path-c194748%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194746%_ '".c")))
                 (_%path-o194750%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194746%_ '".o")))
                 (_%link-path194752%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path194744%_ _%base-path194746%_)))
                 (_%link-path-c194754%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194752%_ '".c")))
                 (_%link-path-o194756%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194752%_ '".o")))
                 (_%gsc-link-opts194758%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?194742%_)))
                 (_%gsc-cc-opts194760%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?194742%_)))
                 (_%gcc-ld-opts194762%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp196274 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196272
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c194754%_
                                           (let ((__tmp196273
                                                  (cons _%path194741%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp196273
                                              _%gsc-link-opts194758%_))))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196274 __tmp196272))
            (let ((__tmp196277 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196275
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp196276
                                            (cons _%path-c194748%_
                                                  (cons _%link-path-c194754%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp196276
                                        _%gsc-cc-opts194760%_)))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196277 __tmp196275))
            (let ((__tmp196279 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp196278
                   (cons '"-w"
                         (cons '"-shared"
                               (cons '"-o"
                                     (cons _%link-path194752%_
                                           (cons _%path-o194750%_
                                                 (cons _%link-path-o194756%_
                                                       _%gcc-ld-opts194762%_))))))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp196279
               __tmp196278))
            (let ((__tmp196280
                   (cons _%path-c194748%_
                         (cons _%path-o194750%_
                               (cons _%link-path-c194754%_
                                     (cons _%link-path-o194756%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp196280))))))
    (define gxc#compile-output-file
      (lambda (_%ctx194707%_ _%n194708%_ _%ext194709%_)
        (letrec ((_%module-relative-path194711%_
                  (lambda (_%ctx194739%_)
                    (path-strip-directory
                     (let ((__tmp196281
                            (##structure-ref
                             _%ctx194739%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196281)))))
                 (_%module-source-directory194712%_
                  (lambda (_%ctx194735%_)
                    (path-directory
                     (let ((_%mpath194737%_
                            (##structure-ref
                             _%ctx194735%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath194737%_))
                           _%mpath194737%_
                           (last _%mpath194737%_))))))
                 (_%section-string194713%_
                  (lambda (_%n194729%_)
                    (if (let () (declare (not safe)) (number? _%n194729%_))
                        (let () (number->string _%n194729%_))
                        (if (let () (declare (not safe)) (symbol? _%n194729%_))
                            (let () (symbol->string _%n194729%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n194729%_))
                                (let () _%n194729%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n194729%_)))))))
                 (_%file-name194714%_
                  (lambda (_%path194727%_)
                    (if _%n194708%_
                        (string-append
                         _%path194727%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string194713%_ _%n194708%_))
                         _%ext194709%_)
                        (string-append _%path194727%_ _%ext194709%_))))
                 (_%file-path194715%_
                  (lambda ()
                    (let ((_%$e194721%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e194721%_
                          ((lambda (_%outdir194724%_)
                             (path-expand
                              (let ((__tmp196282
                                     (let ((__tmp196283
                                            (##structure-ref
                                             _%ctx194707%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp196283))))
                                (declare (not safe))
                                (_%file-name194714%_ __tmp196282))
                              _%outdir194724%_))
                           _%$e194721%_)
                          (let ()
                            (path-expand
                             (let ((__tmp196284
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path194711%_
                                       _%ctx194707%_))))
                               (declare (not safe))
                               (_%file-name194714%_ __tmp196284))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory194712%_
                                _%ctx194707%_)))))))))
          (let ((_%path194717%_
                 (let () (declare (not safe)) (_%file-path194715%_))))
            (let ((__tmp196285
                   (lambda ()
                     (let ((__tmp196286 (path-directory _%path194717%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196286)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196285))
            _%path194717%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx194688%_)
        (letrec ((_%file-name194690%_
                  (lambda (_%id194705%_)
                    (let ((__tmp196287
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id194705%_))))
                      (declare (not safe))
                      (##string-append __tmp196287 '".scm"))))
                 (_%file-path194691%_
                  (lambda ()
                    (let* ((_%file194697%_
                            (let ((__tmp196288
                                   (##structure-ref
                                    _%ctx194688%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name194690%_ __tmp196288)))
                           (_%$e194699%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e194699%_
                          ((lambda (_%outdir194702%_)
                             (path-expand
                              _%file194697%_
                              (path-expand '"static" _%outdir194702%_)))
                           _%$e194699%_)
                          (let () (path-expand _%file194697%_ '"static")))))))
          (let ((_%path194693%_
                 (let () (declare (not safe)) (_%file-path194691%_))))
            (let ((__tmp196289
                   (lambda ()
                     (let ((__tmp196290 (path-directory _%path194693%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196290)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196289))
            _%path194693%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx194681%_ _%opts194682%_)
        (let ((_%$e194684%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts194682%_))))
          (if _%$e194684%_
              (values _%$e194684%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx194681%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr194671%_)
        (if (let () (declare (not safe)) (string? _%idstr194671%_))
            (let ()
              (let* ((_%str194674%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr194671%_)))
                     (_%strs194676%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str194674%_ '#\/))))
                (declare (not safe))
                (string-join _%strs194676%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr194671%_))
                (let ((__tmp196291 (symbol->string _%idstr194671%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp196291))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr194671%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp196292
               (let ((__tmp196293 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp196293 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp196292))))
    (define gxc#invoke__%
      (lambda (_%@@keywords194635%_
               _%stdout-redirection194631194636%_
               _%stderr-redirection194632194638%_
               _%program194640%_
               _%args194641%_)
        (let* ((_%stdout-redirection194643%_
                (if (eq? _%stdout-redirection194631194636%_ absent-value)
                    '#f
                    _%stdout-redirection194631194636%_))
               (_%stderr-redirection194645%_
                (if (eq? _%stderr-redirection194632194638%_ absent-value)
                    '#f
                    _%stderr-redirection194632194638%_)))
          (let ((__tmp196294 (cons _%program194640%_ _%args194641%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196294))
          (let* ((_%proc194647%_
                  (open-process
                   (cons 'path:
                         (cons _%program194640%_
                               (cons 'arguments:
                                     (cons _%args194641%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection194643%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection194645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output194652%_
                  (if (or _%stdout-redirection194643%_
                          _%stderr-redirection194645%_)
                      (read-line _%proc194647%_ '#f)
                      '#f))
                 (_%status194655%_ (process-status _%proc194647%_)))
            (let () (declare (not safe)) (##close-port _%proc194647%_))
            (if (zero? _%status194655%_)
                '#!void
                (begin
                  (display _%output194652%_)
                  (let ((__tmp196295 (cons _%program194640%_ _%args194641%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196295
                     _%status194655%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords194660%_ . _%args194661%_)
        (apply gxc#invoke__%
               _%@@keywords194660%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194660%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194660%_
                  'stderr-redirection:
                  absent-value))
               _%args194661%_)))
    (define gxc#invoke
      (lambda _%args194633194667%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args194633194667%_)))
    (define gxc#join!
      (lambda (_%thread194625%_)
        (let ((__tmp196297
               (lambda (_%exn194627%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn194627%_))
                     (let ((__tmp196298
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn194627%_))))
                       (declare (not safe))
                       (raise __tmp196298))
                     (let () (declare (not safe)) (raise _%exn194627%_)))))
              (__tmp196296 (lambda () (thread-join! _%thread194625%_))))
          (declare (not safe))
          (__with-catch __tmp196297 __tmp196296))))))
