(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712251118)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196077 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196077))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196078 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196078))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195983%_ _%fun195984%_)
        (with-output-to-file
         (cons 'path: (cons _%path195983%_ gxc#scheme-file-settings))
         _%fun195984%_)))
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
      (lambda (_%gerbil-libdir195978%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195978%_)))
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
      (lambda (_%dir195976%_) (delete-file-or-directory _%dir195976%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195950%_ _%opts195951%_)
        (if (let () (declare (not safe)) (string? _%srcpath195950%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195950%_)))
        (let ((_%outdir195953%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195951%_)))
              (_%invoke-gsc?195954%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195951%_)))
              (_%gsc-options195955%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195951%_)))
              (_%keep-scm?195956%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195951%_)))
              (_%verbosity195957%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195951%_)))
              (_%optimize195958%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195951%_)))
              (_%debug195959%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195951%_)))
              (_%gen-ssxi195960%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195951%_))))
          (if _%outdir195953%_
              (let ((__tmp196079
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195953%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196079))
              '#!void)
          (if _%optimize195958%_
              (let ((__tmp196080
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196080))
              '#!void)
          (let ((__tmp196083
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195950%_))
                   (let ((__tmp196084
                          (let ((__tmp196085
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195950%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196085))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp196084))))
                (__tmp196082
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196081
                 (cons 'compile-module (cons _%srcpath195950%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196083
             gxc#current-compile-output-dir
             _%outdir195953%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195954%_
             gxc#current-compile-gsc-options
             _%gsc-options195955%_
             gxc#current-compile-keep-scm
             _%keep-scm?195956%_
             gxc#current-compile-verbose
             _%verbosity195957%_
             gxc#current-compile-optimize
             _%optimize195958%_
             gxc#current-compile-debug
             _%debug195959%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195960%_
             gxc#current-compile-timestamp
             __tmp196082
             gxc#current-compile-context
             __tmp196081
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195969%_)
        (let ((_%opts195971%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath195969%_ _%opts195971%_))))
    (define gxc#compile-module
      (lambda _g196087_
        (let ((_g196086_ (let () (declare (not safe)) (##length _g196087_))))
          (cond ((let () (declare (not safe)) (##fx= _g196086_ 1))
                 (apply (lambda (_%srcpath195969%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath195969%_)))
                        _g196087_))
                ((let () (declare (not safe)) (##fx= _g196086_ 2))
                 (apply (lambda (_%srcpath195973%_ _%opts195974%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath195973%_
                             _%opts195974%_)))
                        _g196087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196087_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195926%_ _%opts195927%_)
        (if (let () (declare (not safe)) (string? _%srcpath195926%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195926%_)))
        (let ((_%outdir195929%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195927%_)))
              (_%invoke-gsc?195930%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195927%_)))
              (_%gsc-options195931%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195927%_)))
              (_%keep-scm?195932%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195927%_)))
              (_%verbosity195933%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195927%_)))
              (_%debug195934%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts195927%_))))
          (if _%outdir195929%_
              (let ((__tmp196088
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195929%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196088))
              '#!void)
          (let ((__tmp196091
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195926%_))
                   (let ((__tmp196092
                          (let ((__tmp196093
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195926%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196093))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp196092
                      _%opts195927%_))))
                (__tmp196090
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196089 (cons 'compile-exe (cons _%srcpath195926%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196091
             gxc#current-compile-output-dir
             _%outdir195929%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195930%_
             gxc#current-compile-gsc-options
             _%gsc-options195931%_
             gxc#current-compile-keep-scm
             _%keep-scm?195932%_
             gxc#current-compile-verbose
             _%verbosity195933%_
             gxc#current-compile-debug
             _%debug195934%_
             gxc#current-compile-timestamp
             __tmp196090
             gxc#current-compile-context
             __tmp196089
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195942%_)
        (let ((_%opts195944%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath195942%_ _%opts195944%_))))
    (define gxc#compile-exe
      (lambda _g196095_
        (let ((_g196094_ (let () (declare (not safe)) (##length _g196095_))))
          (cond ((let () (declare (not safe)) (##fx= _g196094_ 1))
                 (apply (lambda (_%srcpath195942%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath195942%_)))
                        _g196095_))
                ((let () (declare (not safe)) (##fx= _g196094_ 2))
                 (apply (lambda (_%srcpath195946%_ _%opts195947%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath195946%_
                             _%opts195947%_)))
                        _g196095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196095_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195922%_ _%opts195923%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195923%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx195922%_
               _%opts195923%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx195922%_
               _%opts195923%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx195799%_ _%opts195800%_)
        (letrec ((_%generate-stub195802%_
                  (lambda (_%builtin-modules195918%_)
                    (let ((_%mod-main195920%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195799%_ 'main))))
                      (let ((__tmp196096
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules195918%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196096))
                      (let ((__tmp196097
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195920%_
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
                        (##write __tmp196097))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts195803%_
                  (lambda (_%libgerbil195916%_)
                    (let ((__tmp196098
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil195916%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp196098 read))))
                 (_%replace-extension195804%_
                  (lambda (_%path195913%_ _%ext195914%_)
                    (string-append
                     (path-strip-extension _%path195913%_)
                     _%ext195914%_)))
                 (_%not-exclude-module?195805%_
                  (lambda (_%ctx195909%_)
                    (let ((_%id-str195911%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195909%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp196099
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195911%_))))
                            (declare (not safe))
                            (not __tmp196099))
                          (let ((__tmp196100
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str195911%_))))
                            (declare (not safe))
                            (not __tmp196100))
                          '#f))))
                 (_%not-file-empty?195806%_
                  (lambda (_%path195907%_)
                    (let ((__tmp196101
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path195907%_))))
                      (declare (not safe))
                      (not __tmp196101))))
                 (_%compile-stub195807%_
                  (lambda (_%output-scm195814%_ _%output-bin195815%_)
                    (let* ((_%gerbil-home195817%_
                            (let ((__tmp196102
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196102)))
                           (_%gerbil-libdir195819%_
                            (path-expand '"lib" _%gerbil-home195817%_))
                           (_%gerbil-staticdir195821%_
                            (path-expand '"static" _%gerbil-libdir195819%_))
                           (_%gxlink195823%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir195819%_))
                           (_%tmp195825%_
                            (path-expand
                             (let ((__tmp196103
                                    (let ((__tmp196104
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp196104))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp196103))
                             '"/tmp"))
                           (_%tmp-path195829%_
                            (lambda (_%f195827%_)
                              (path-expand
                               (path-strip-directory _%f195827%_)
                               _%tmp195825%_)))
                           (_%deps195831%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195799%_)))
                           (_%deps195833%_
                            (filter _%not-exclude-module?195805%_
                                    _%deps195831%_))
                           (_%src-deps-scm195835%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps195833%_)))
                           (_%src-deps-scm195837%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?195806%_
                               _%src-deps-scm195835%_)))
                           (_%src-deps-scm195839%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm195837%_)))
                           (_%deps-scm195841%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path195829%_
                                     _%src-deps-scm195839%_)))
                           (_%deps-c195847%_
                            (let ((__tmp196105
                                   (lambda (_%g195842195844%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195804%_
                                        _%g195842195844%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp196105 _%deps-scm195841%_)))
                           (_%deps-o195853%_
                            (let ((__tmp196106
                                   (lambda (_%g195848195850%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195804%_
                                        _%g195848195850%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp196106 _%deps-scm195841%_)))
                           (_%src-bin-scm195855%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195799%_)))
                           (_%src-bin-scm195857%_
                            (path-expand _%src-bin-scm195855%_))
                           (_%bin-scm195859%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path195829%_ _%src-bin-scm195857%_)))
                           (_%bin-c195861%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195804%_
                               _%bin-scm195859%_
                               '".c")))
                           (_%bin-o195863%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195804%_
                               _%bin-scm195859%_
                               '".o")))
                           (_%output-bin195865%_
                            (path-expand _%output-bin195815%_))
                           (_%output-scm195867%_
                            (path-expand _%output-scm195814%_))
                           (_%output-c195869%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195804%_
                               _%output-scm195867%_
                               '".c")))
                           (_%output-o195871%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195804%_
                               _%output-scm195867%_
                               '".o")))
                           (_%output_-c195873%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195804%_
                               _%output-scm195867%_
                               '"_.c")))
                           (_%output_-o195875%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195804%_
                               _%output-scm195867%_
                               '"_.o")))
                           (_%gsc-link-opts195877%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195879%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195881%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir195821%_)))
                           (_%output-ld-opts195883%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a195885%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir195819%_))
                           (_%libgerbil.so195887%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir195819%_))
                           (_%libgerbil.dylib195889%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir195819%_))
                           (_%libgerbil-ld-opts195895%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so195887%_))
                                (let ()
                                  (declare (not safe))
                                  (_%get-libgerbil-ld-opts195803%_
                                   _%libgerbil.so195887%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib195889%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%get-libgerbil-ld-opts195803%_
                                       _%libgerbil.dylib195889%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a195885%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%get-libgerbil-ld-opts195803%_
                                           _%libgerbil.a195885%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _%libgerbil.a195885%_
                                           _%libgerbil.so195887%_
                                           _%libgerbil.dylib195889%_))))))
                           (_%rpath195897%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195819%_)))
                           (_%builtin-modules195901%_
                            (let ((__tmp196108
                                   (lambda (_%mod195899%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod195899%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp196107
                                   (cons _%ctx195799%_ _%deps195833%_)))
                              (declare (not safe))
                              (##map __tmp196108 __tmp196107))))
                      (let ((__tmp196109
                             (lambda ()
                               (let ((__tmp196110
                                      (path-directory _%output-bin195865%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196110)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196109))
                      (let ((__tmp196111
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub195802%_
                                  _%builtin-modules195901%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195867%_
                         __tmp196111))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196112
                                   (lambda ()
                                     (create-directory _%tmp195825%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp196112))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm195839%_
                               _%deps-scm195841%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm195857%_
                               _%bin-scm195859%_))
                            (let ((__tmp196116
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196113
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink195823%_
                                                     (let ((__tmp196114
                                                            (let ((__tmp196115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm195859%_
                                 (cons _%output-scm195867%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp196115 _%deps-scm195841%_))))
               (declare (not safe))
               (__foldr1 cons __tmp196114 _%gsc-link-opts195877%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196116
                               __tmp196113))
                            (let ((__tmp196121
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196117
                                   (cons '"-obj"
                                         (let ((__tmp196118
                                                (let ((__tmp196119
                                                       (let ((__tmp196120
                                                              (cons _%bin-c195861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c195869%_
                                  (cons _%output_-c195873%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp196120 _%deps-c195847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196119
                                                   _%gsc-static-opts195881%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196118
                                            _%gsc-cc-opts195879%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196121
                               __tmp196117))
                            (let ((__tmp196125
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196122
                                   (cons '"-o"
                                         (cons _%output-bin195865%_
                                               (let ((__tmp196123
                                                      (cons _%bin-o195863%_
                                                            (cons _%output-o195871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o195875%_
                                (let ((__tmp196124
                                       (cons _%rpath195897%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir195819%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts195895%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp196124
                                   _%output-ld-opts195883%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp196123
                                                  _%deps-o195853%_))))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196125
                               __tmp196122))
                            (let ((__tmp196126
                                   (cons _%output-c195869%_
                                         (cons _%output_-c195873%_
                                               (cons _%output-o195871%_
                                                     (cons _%output_-o195875%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp196126))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp195825%_)))
                          '#!void)))))
          (let* ((_%output-bin195809%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195799%_
                     _%opts195800%_)))
                 (_%output-scm195811%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195809%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195807%_
               _%output-scm195811%_
               _%output-bin195809%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195811%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx195624%_ _%opts195625%_)
        (letrec ((_%reset-declare195627%_
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
                 (_%generate-stub195628%_
                  (lambda (_%deps195790%_)
                    (let ((_%mod-main195792%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195624%_ 'main)))
                          (_%reset-decl195793%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare195627%_)))
                          (_%user-decl195794%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare195629%_))))
                      (for-each
                       (lambda (_%dep195796%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl195793%_))
                         (newline)
                         (if _%user-decl195794%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl195794%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196127
                                (cons 'include (cons _%dep195796%_ '()))))
                           (declare (not safe))
                           (##write __tmp196127))
                         (newline))
                       _%deps195790%_)
                      (let ((__tmp196128
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main195792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196128))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare195629%_
                  (lambda ()
                    (let* ((_%gsc-opts195695%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts195625%_)))
                           (_%gsc-prelude195697%_
                            (if _%gsc-opts195695%_
                                (member '"-prelude" _%gsc-opts195695%_)
                                '#f))
                           (_%gsc-prelude195699%_
                            (if _%gsc-prelude195697%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude195697%_)))
                                '#f)))
                      (let _%lp195702%_ ((_%rest195704%_
                                          (cons _%gsc-prelude195699%_ '()))
                                         (_%user-decls195705%_ '()))
                        (let* ((_%rest195706195714%_ _%rest195704%_)
                               (_%else195708195722%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls195705%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls195705%_)))))
                               (_%K195710195778%_
                                (lambda (_%rest195725%_ _%expr195726%_)
                                  (let* ((_%expr195727195739%_ _%expr195726%_)
                                         (_%else195730195747%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp195702%_
                                               _%rest195725%_
                                               _%user-decls195705%_)))))
                                    (let ((_%K195735195768%_
                                           (lambda (_%decls195766%_)
                                             (let ((__tmp196129
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls195705%_
                                                       _%decls195766%_))))
                                               (declare (not safe))
                                               (_%lp195702%_
                                                _%rest195725%_
                                                __tmp196129))))
                                          (_%K195732195753%_
                                           (lambda (_%exprs195751%_)
                                             (let ((__tmp196130
                                                    (append _%exprs195751%_
                                                            _%rest195725%_)))
                                               (declare (not safe))
                                               (_%lp195702%_
                                                __tmp196130
                                                _%user-decls195705%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr195727195739%_))
                                          (let ((_%tl195737195773%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr195727195739%_)))
                                                (_%hd195736195771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr195727195739%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd195736195771%_
                                                         'declare))
                                                (let ((_%decls195776%_
                                                       _%tl195737195773%_))
                                                  (declare (not safe))
                                                  (_%K195735195768%_
                                                   _%decls195776%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd195736195771%_
                                                             'begin))
                                                    (let ((_%exprs195761%_
                                                           _%tl195737195773%_))
                                                      (declare (not safe))
                                                      (_%K195732195753%_
                                                       _%exprs195761%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else195730195747%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195730195747%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest195706195714%_))
                              (let ((_%hd195711195781%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195706195714%_)))
                                    (_%tl195712195783%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195706195714%_))))
                                (let* ((_%expr195786%_ _%hd195711195781%_)
                                       (_%rest195788%_ _%tl195712195783%_))
                                  (declare (not safe))
                                  (_%K195710195778%_
                                   _%rest195788%_
                                   _%expr195786%_)))
                              (let ()
                                (declare (not safe))
                                (_%else195708195722%_))))))))
                 (_%compile-stub195630%_
                  (lambda (_%output-scm195637%_ _%output-bin195638%_)
                    (let* ((_%gerbil-home195640%_
                            (let ((__tmp196131
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196131)))
                           (_%gerbil-libdir195642%_
                            (path-expand '"lib" _%gerbil-home195640%_))
                           (_%runtime195644%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp195646%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home195640%_))
                           (_%include-gambit-sharp195648%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp195646%_
                               '"\")")))
                           (_%bin-scm195650%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195624%_)))
                           (_%deps195652%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195624%_)))
                           (_%deps195654%_
                            (map gxc#find-static-module-file _%deps195652%_))
                           (_%deps195659%_
                            (let ((__tmp196132
                                   (lambda (_%$obj195656%_)
                                     (let ((__tmp196133
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj195656%_))))
                                       (declare (not safe))
                                       (not __tmp196133)))))
                              (declare (not safe))
                              (##filter __tmp196132 _%deps195654%_)))
                           (_%deps195663%_
                            (let ((__tmp196134
                                   (lambda (_%f195661%_)
                                     (let ((__tmp196135
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f195661%_
                                               _%runtime195644%_))))
                                       (declare (not safe))
                                       (not __tmp196135)))))
                              (declare (not safe))
                              (##filter __tmp196134 _%deps195659%_)))
                           (_%output-base195665%_
                            (let ((__tmp196136
                                   (path-strip-extension
                                    _%output-scm195637%_)))
                              (declare (not safe))
                              (##string-append __tmp196136)))
                           (_%output-c195667%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195665%_ '".c")))
                           (_%output-o195669%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195665%_ '".o")))
                           (_%output-c_195671%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195665%_ '"_.c")))
                           (_%output-o_195673%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195665%_ '"_.o")))
                           (_%gsc-link-opts195675%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195677%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195679%_
                            (let ((__tmp196137
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir195642%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp196137)))
                           (_%output-ld-opts195681%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros195683%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp195648%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp195648%_
                                            '()))))
                           (_%gsc-link-opts195685%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts195675%_
                               _%gsc-gx-macros195683%_)))
                           (_%rpath195687%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195642%_)))
                           (_%default-ld-options195689%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196138
                             (lambda ()
                               (let ((__tmp196139
                                      (path-directory _%output-bin195638%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196139)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196138))
                      (let ((__tmp196140
                             (lambda ()
                               (let ((__tmp196141
                                      (let ((__tmp196142
                                             (let ((__tmp196143
                                                    (cons _%bin-scm195650%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp196143
                                                _%deps195663%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196142
                                         _%runtime195644%_))))
                                 (declare (not safe))
                                 (_%generate-stub195628%_ __tmp196141)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195637%_
                         __tmp196140))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196146
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196144
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_195671%_
                                                     (let ((__tmp196145
                                                            (cons _%output-scm195637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp196145 _%gsc-link-opts195685%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196146
                               __tmp196144))
                            (let ((__tmp196150
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196147
                                   (cons '"-obj"
                                         (let ((__tmp196148
                                                (let ((__tmp196149
                                                       (cons _%output-c195667%_
                                                             (cons _%output-c_195671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196149
                                                   _%gsc-static-opts195679%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196148
                                            _%gsc-cc-opts195677%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196150
                               __tmp196147))
                            (let ((__tmp196153
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196151
                                   (cons '"-o"
                                         (cons _%output-bin195638%_
                                               (cons _%output-o195669%_
                                                     (cons _%output-o_195673%_
                                                           (let ((__tmp196152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath195687%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir195642%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options195689%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp196152
                      _%output-ld-opts195681%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196153
                               __tmp196151)))
                          '#!void)))))
          (let* ((_%output-bin195632%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195624%_
                     _%opts195625%_)))
                 (_%output-scm195634%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195632%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195630%_
               _%output-scm195634%_
               _%output-bin195632%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195634%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx195573%_ _%id195574%_)
        (let ((_%$e195620%_
               (let ((__tmp196155
                      (lambda (_%e195575195577%_)
                        (let* ((_%g195579195589%_ _%e195575195577%_)
                               (_%else195581195597%_ (lambda () '#f))
                               (_%K195583195601%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g195579195589%_
                                 'gx#module-export::t))
                              (let* ((_%e195584195604%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195579195589%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e195585195607%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195579195589%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e195586195610%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195579195589%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e195586195610%_ '0))
                                    (let ((_%e195587195613%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g195579195589%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g195615195617%_)
                                             (eq? _%g195615195617%_
                                                  _%id195574%_))
                                           _%e195587195613%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K195583195601%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195581195597%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else195581195597%_))))
                              (let ()
                                (declare (not safe))
                                (_%else195581195597%_))))))
                     (__tmp196154
                      (##structure-ref
                       _%ctx195573%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196155 __tmp196154))))
          (if _%$e195620%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e195620%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx195564%_ _%id195565%_)
        (let ((_%$e195567%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx195564%_ _%id195565%_))))
          (if _%$e195567%_
              ((lambda (_%bind195570%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind195570%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id195565%_)))
                 (##structure-ref _%bind195570%_ '1 gx#binding::t '#f))
               _%$e195567%_)
              (let ((__tmp196156
                     (##structure-ref
                      _%ctx195564%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196156
                 _%id195565%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195430%_)
        (letrec* ((_%ht195432%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195433%_
                   (lambda (_%in195509%_ _%phi195510%_)
                     (let ((_%iphi195512%_
                            (fx+ _%phi195510%_
                                 (##direct-structure-ref
                                  _%in195509%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports195513%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in195509%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp195515%_ ((_%rest195517%_ _%imports195513%_)
                                          (_%r195518%_ '()))
                         (let* ((_%rest195519195527%_ _%rest195517%_)
                                (_%else195521195535%_ (lambda () _%r195518%_))
                                (_%K195523195552%_
                                 (lambda (_%rest195538%_ _%in195539%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in195539%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi195512%_))
                                             (let ((__tmp196157
                                                    (cons _%in195539%_
                                                          _%r195518%_)))
                                               (declare (not safe))
                                               (_%lp195515%_
                                                _%rest195538%_
                                                __tmp196157))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp195515%_
                                                _%rest195538%_
                                                _%r195518%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in195539%_
                                              'gx#module-import::t))
                                           (let ((_%iphi195543%_
                                                  (fx+ _%phi195510%_
                                                       (##direct-structure-ref
                                                        _%in195539%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi195543%_))
                                                 (let ((__tmp196158
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in195539%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r195518%_)))
                                                   (declare (not safe))
                                                   (_%lp195515%_
                                                    _%rest195538%_
                                                    __tmp196158))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp195515%_
                                                    _%rest195538%_
                                                    _%r195518%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in195539%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi195546%_
                                                      (fx+ _%iphi195512%_
                                                           (##direct-structure-ref
                                                            _%in195539%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi195546%_))
                                                     (let ((__tmp196159
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in195539%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r195518%_)))
               (declare (not safe))
               (_%lp195515%_ _%rest195538%_ __tmp196159))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi195546%_))
                                                         (let ((__tmp196160
                                                                (let ((__tmp196161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195433%_
                                  _%in195539%_
                                  _%iphi195512%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r195518%_ __tmp196161))))
                   (declare (not safe))
                   (_%lp195515%_ _%rest195538%_ __tmp196160))
                 (let ()
                   (declare (not safe))
                   (_%lp195515%_ _%rest195538%_ _%r195518%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp195515%_
                                                  _%rest195538%_
                                                  _%r195518%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest195519195527%_))
                               (let ((_%hd195524195555%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest195519195527%_)))
                                     (_%tl195525195557%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest195519195527%_))))
                                 (let* ((_%in195560%_ _%hd195524195555%_)
                                        (_%rest195562%_ _%tl195525195557%_))
                                   (declare (not safe))
                                   (_%K195523195552%_
                                    _%rest195562%_
                                    _%in195560%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else195521195535%_))))))))
                  (_%find-deps195434%_
                   (lambda (_%rest195442%_ _%deps195443%_)
                     (let* ((_%rest195444195452%_ _%rest195442%_)
                            (_%else195446195460%_ (lambda () _%deps195443%_))
                            (_%K195448195497%_
                             (lambda (_%rest195463%_ _%hd195464%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195464%_
                                      'gx#module-context::t))
                                   (let ((_%id195467%_
                                          (##structure-ref
                                           _%hd195464%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195468%_
                                          (##structure-ref
                                           _%hd195464%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195432%_
                                            _%id195467%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps195434%_
                                            _%rest195463%_
                                            _%deps195443%_))
                                         (let ((_%$e195471%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195464%_))))
                                           (if _%$e195471%_
                                               ((lambda (_%pre195474%_)
                                                  (let ((_%xdeps195476%_
                                                         (let ((__tmp196162
                                                                (cons _%pre195474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports195468%_)))
                   (declare (not safe))
                   (_%find-deps195434%_ __tmp196162 _%deps195443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195432%_
                                                       _%id195467%_
                                                       _%hd195464%_))
                                                    (let ((__tmp196163
                                                           (cons _%hd195464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps195476%_)))
              (declare (not safe))
              (_%find-deps195434%_ _%rest195463%_ __tmp196163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e195471%_)
                                               (let ((_%xdeps195479%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps195434%_
                                                         _%imports195468%_
                                                         _%deps195443%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195432%_
                                                    _%id195467%_
                                                    _%hd195464%_))
                                                 (let ((__tmp196164
                                                        (cons _%hd195464%_
                                                              _%xdeps195479%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195434%_
                                                    _%rest195463%_
                                                    __tmp196164)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195464%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195482%_
                                              (##structure-ref
                                               _%hd195464%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195432%_
                                                _%id195482%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps195434%_
                                                _%rest195463%_
                                                _%deps195443%_))
                                             (let ((_%xdeps195486%_
                                                    (let ((__tmp196165
                                                           (##structure-ref
                                                            _%hd195464%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps195434%_
                                                       __tmp196165
                                                       _%deps195443%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195432%_
                                                      _%id195482%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps195434%_
                                                      _%rest195463%_
                                                      _%xdeps195486%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195432%_
                                                        _%id195482%_
                                                        _%hd195464%_))
                                                     (let ((__tmp196166
                                                            (cons _%hd195464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps195486%_)))
               (declare (not safe))
               (_%find-deps195434%_ _%rest195463%_ __tmp196166)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195464%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd195464%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp196167
                                                        (cons (##direct-structure-ref
                                                               _%hd195464%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest195463%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195434%_
                                                    __tmp196167
                                                    _%deps195443%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps195434%_
                                                    _%rest195463%_
                                                    _%deps195443%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195464%_
                                                  'gx#module-export::t))
                                               (let ((__tmp196168
                                                      (cons (##direct-structure-ref
                                                             _%hd195464%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest195463%_)))
                                                 (declare (not safe))
                                                 (_%find-deps195434%_
                                                  __tmp196168
                                                  _%deps195443%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195464%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd195464%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp196169
                        (cons (##direct-structure-ref
                               _%hd195464%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest195463%_)))
                   (declare (not safe))
                   (_%find-deps195434%_ __tmp196169 _%deps195443%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd195464%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps195493%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195433%_
                                  _%hd195464%_
                                  '0)))
                              (__tmp196170
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest195463%_
                                  _%xdeps195493%_))))
                         (declare (not safe))
                         (_%find-deps195434%_ __tmp196170 _%deps195443%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps195434%_ _%rest195463%_ _%deps195443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195464%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195444195452%_))
                           (let ((_%hd195449195500%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195444195452%_)))
                                 (_%tl195450195502%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195444195452%_))))
                             (let* ((_%hd195505%_ _%hd195449195500%_)
                                    (_%rest195507%_ _%tl195450195502%_))
                               (declare (not safe))
                               (_%K195448195497%_
                                _%rest195507%_
                                _%hd195505%_)))
                           (let ()
                             (declare (not safe))
                             (_%else195446195460%_)))))))
          (let ((__tmp196171
                 (filter gx#expander-context-id
                         (let ((__tmp196172
                                (let ((_%$e195436%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx195430%_))))
                                  (if _%$e195436%_
                                      ((lambda (_%pre195439%_)
                                         (cons _%pre195439%_
                                               (##structure-ref
                                                _%ctx195430%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e195436%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx195430%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps195434%_ __tmp196172 '())))))
            (declare (not safe))
            (##reverse __tmp196171)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195360%_)
        (let* ((_%context-id195362%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195360%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195360%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195360%_)))
               (_%scm195364%_
                (let ((__tmp196173
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id195362%_))))
                  (declare (not safe))
                  (##string-append __tmp196173 '".scm")))
               (_%dirs195366%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195372%_
                (let ((_%user-libpath195368%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195368%_
                      (let ((_%user-libpath195370%_
                             (path-expand '"lib" _%user-libpath195368%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195370%_ _%dirs195366%_))
                            _%dirs195366%_
                            (cons _%user-libpath195370%_ _%dirs195366%_)))
                      _%dirs195366%_)))
               (_%dirs195382%_
                (let ((_%$e195374%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195374%_
                      ((lambda (_%g195376195378%_)
                         (cons _%g195376195378%_ _%dirs195372%_))
                       _%$e195374%_)
                      (let () _%dirs195372%_))))
               (_%dirs195388%_
                (map (lambda (_%g195383195385%_)
                       (path-expand '"static" _%g195383195385%_))
                     _%dirs195382%_)))
          (let _%lp195391%_ ((_%rest195393%_ _%dirs195388%_))
            (let* ((_%rest195394195402%_ _%rest195393%_)
                   (_%else195396195410%_
                    (lambda ()
                      (let ((__tmp196174
                             (##structure-ref
                              _%ctx195360%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196174
                         _%scm195364%_))))
                   (_%K195398195418%_
                    (lambda (_%rest195413%_ _%dir195414%_)
                      (let ((_%path195416%_
                             (path-expand _%scm195364%_ _%dir195414%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195416%_))
                            _%path195416%_
                            (let ()
                              (declare (not safe))
                              (_%lp195391%_ _%rest195413%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest195394195402%_))
                  (let ((_%hd195399195421%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195394195402%_)))
                        (_%tl195400195423%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195394195402%_))))
                    (let* ((_%dir195426%_ _%hd195399195421%_)
                           (_%rest195428%_ _%tl195400195423%_))
                      (declare (not safe))
                      (_%K195398195418%_ _%rest195428%_ _%dir195426%_)))
                  (let () (declare (not safe)) (_%else195396195410%_))))))))
    (define gxc#file-empty?
      (lambda (_%path195358%_)
        (zero? (let ((__tmp196175 (file-info _%path195358%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196175)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195347%_)
        (let ((__tmp196179
               (lambda ()
                 (let ((__tmp196180
                        (##structure-ref
                         _%ctx195347%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196180))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196181
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195347%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196181))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx195347%_))
                 (if (let ((__tmp196182
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx195347%_))))
                       (declare (not safe))
                       (null? __tmp196182))
                     (let* ((_%thr1195352%_
                             (let ((__tmp196183
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx195347%_)))))
                               (declare (not safe))
                               (__spawn __tmp196183)))
                            (_%thr2195355%_
                             (let ((__tmp196184
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx195347%_)))))
                               (declare (not safe))
                               (__spawn __tmp196184))))
                       (let () (declare (not safe)) (gxc#join! _%thr1195352%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2195355%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx195347%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx195347%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx195347%_))
                     '#!void)))
              (__tmp196178
               (let ((__obj196075
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196075)
                 __obj196075))
              (__tmp196177 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196176
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
           __tmp196179
           gx#current-expander-context
           _%ctx195347%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196178
           gxc#current-compile-runtime-sections
           __tmp196177
           gxc#current-compile-runtime-names
           __tmp196176))))
    (define gxc#collect-bindings
      (lambda (_%ctx195345%_)
        (let ((__tmp196185
               (##structure-ref _%ctx195345%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196185))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195289%_)
        (letrec ((_%compile1195291%_
                  (lambda (_%ctx195332%_)
                    (let* ((_%code195334%_
                            (##structure-ref
                             _%ctx195332%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt195338%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code195334%_))
                                (let ((_%idstr195336%_
                                       (let ((__tmp196186
                                              (##structure-ref
                                               _%ctx195332%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp196186))))
                                  (declare (not safe))
                                  (##string-append _%idstr195336%_ '"~0"))
                                '#f)))
                      (if _%rt195338%_
                          (let ()
                            (let ((__tmp196187
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp196187
                               _%ctx195332%_
                               _%rt195338%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code195293%_
                               _%ctx195332%_
                               _%code195334%_)))
                          (let ((_%path195343%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx195332%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path195343%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code195294%_
                         _%ctx195332%_
                         _%code195334%_
                         _%rt195338%_)))))
                 (_%context-timestamp195292%_
                  (lambda (_%ctx195330%_)
                    (let ((__tmp196188
                           (let ((__tmp196189
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195330%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196189 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196188))))
                 (_%generate-runtime-code195293%_
                  (lambda (_%ctx195312%_ _%code195313%_)
                    (let* ((_%lifts195315%_ (box '()))
                           (_%runtime-code195318%_
                            (let ((__tmp196192
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code195313%_))))
                                  (__tmp196191
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp196190
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196192
                               gx#current-expander-context
                               _%ctx195312%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts195315%_
                               gxc#current-compile-marks
                               __tmp196191
                               gxc#current-compile-identifiers
                               __tmp196190)))
                           (_%runtime-code195320%_
                            (if (let ((__tmp196193 (unbox _%lifts195315%_)))
                                  (declare (not safe))
                                  (null? __tmp196193))
                                _%runtime-code195318%_
                                (cons 'begin
                                      (let ((__tmp196195
                                             (cons _%runtime-code195318%_ '()))
                                            (__tmp196194
                                             (reverse (unbox _%lifts195315%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196195
                                         __tmp196194)))))
                           (_%runtime-code195322%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp195292%_
                                                       _%ctx195312%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code195320%_ '()))))
                           (_%scm0195324%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195312%_
                               '0
                               '".scm")))
                           (_%scms195327%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx195312%_))))
                      (let ((__tmp196196
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0195324%_
                                  _%runtime-code195322%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196196
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms195327%_)
                          (delete-file _%scms195327%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0195324%_
                         '" => "
                         _%scms195327%_))
                      (copy-file _%scm0195324%_ _%scms195327%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0195324%_)))))
                 (_%generate-loader-code195294%_
                  (lambda (_%ctx195301%_ _%code195302%_ _%rt195303%_)
                    (let* ((_%loader-code195306%_
                            (let ((__tmp196197
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195302%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196197
                               gx#current-expander-context
                               _%ctx195301%_)))
                           (_%loader-code195308%_
                            (if _%rt195303%_
                                (cons 'begin
                                      (cons _%loader-code195306%_
                                            (cons (cons 'load-module
                                                        (cons _%rt195303%_
                                                              '()))
                                                  '())))
                                _%loader-code195306%_))
                           (__tmp196198
                            (lambda ()
                              (let ((__tmp196199
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx195301%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp196199
                                 _%loader-code195308%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196198
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules195296%_
                  (cons _%ctx195289%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx195289%_))))
                 (__tmp196200
                  (lambda (_%ctx195298%_)
                    (let ((__tmp196201
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1195291%_ _%ctx195298%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196201
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196200 _%all-modules195296%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195184%_)
        (letrec ((_%compile-ssi195186%_
                  (lambda (_%code195257%_)
                    (let* ((_%path195259%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195184%_
                               '#f
                               '".ssi")))
                           (_%prelude195271%_
                            (let* ((_%super195261%_
                                    (##structure-ref
                                     _%ctx195184%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195263%_
                                    (##structure-ref
                                     _%super195261%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195263%_
                                  ((lambda (_%g195265195267%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195265195267%_)))
                                   _%$e195263%_)
                                  (let () ':<root>))))
                           (_%ns195273%_
                            (##structure-ref
                             _%ctx195184%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195275%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195184%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195283%_
                            (let ((_%$e195277%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195275%_ '#\/))))
                              (if _%$e195277%_
                                  ((lambda (_%x195280%_)
                                     (let ((__tmp196202
                                            (substring
                                             _%idstr195275%_
                                             '0
                                             _%x195280%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196202)))
                                   _%$e195277%_)
                                  (let () '#f))))
                           (_%rt195285%_
                            (let ((__tmp196203
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196203 _%ctx195184%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195259%_))
                      (let ((__tmp196204
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude195271%_))
                               (if _%pkg195283%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg195283%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns195273%_))
                               (newline)
                               (pretty-print _%code195257%_)
                               (if _%rt195285%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt195285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path195259%_
                         __tmp196204)))))
                 (_%compile-phi195187%_
                  (lambda (_%part195197%_)
                    (let* ((_%part195198195211%_ _%part195197%_)
                           (_%E195200195215%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195198195211%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195201195226%_
                            (lambda (_%code195218%_
                                     _%n195219%_
                                     _%phi195220%_
                                     _%phi-ctx195221%_)
                              (let* ((_%code195224%_
                                      (let ((__tmp196205
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code195218%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp196205
                                         gx#current-expander-context
                                         _%phi-ctx195221%_
                                         gx#current-expander-phi
                                         _%phi195220%_)))
                                     (__tmp196206
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx195184%_
                                         _%n195219%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp196206
                                 _%code195224%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195198195211%_))
                          (let ((_%hd195202195229%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195198195211%_)))
                                (_%tl195203195231%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195198195211%_))))
                            (let ((_%phi-ctx195234%_ _%hd195202195229%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195203195231%_))
                                  (let ((_%hd195204195236%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195203195231%_)))
                                        (_%tl195205195238%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195203195231%_))))
                                    (let ((_%phi195241%_ _%hd195204195236%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195205195238%_))
                                          (let ((_%hd195206195243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195205195238%_)))
                                                (_%tl195207195245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195205195238%_))))
                                            (let ((_%n195248%_
                                                   _%hd195206195243%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195207195245%_))
                                                  (let ((_%hd195208195250%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195207195245%_)))
                                                        (_%tl195209195252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195207195245%_))))
                                                    (let ((_%code195255%_
                                                           _%hd195208195250%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195209195252%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K195201195226%_
                                                             _%code195255%_
                                                             _%n195248%_
                                                             _%phi195241%_
                                                             _%phi-ctx195234%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E195200195215%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E195200195215%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E195200195215%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E195200195215%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E195200195215%_)))))))
          (let ((_g196207_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx195184%_))))
            (begin
              (let ((_g196208_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196207_)
                           (##vector-length _g196207_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196208_ 2)))
                    (error "Context expects 2 values" _g196208_)))
              (let ((_%ssi-code195189%_
                     (let () (declare (not safe)) (##vector-ref _g196207_ 0)))
                    (_%phi-code195190%_
                     (let () (declare (not safe)) (##vector-ref _g196207_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi195186%_ _%ssi-code195189%_))
                  (let ((_%threads195195%_
                         (map (lambda (_%code195192%_)
                                (let ((__tmp196209
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi195187%_
                                            _%code195192%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp196209)))
                              _%phi-code195190%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads195195%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195166%_)
        (let* ((_%path195168%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx195166%_ '#f '".ssxi.ss")))
               (_%code195170%_
                (let ((__tmp196210
                       (##structure-ref
                        _%ctx195166%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196210)))
               (_%idstr195172%_
                (symbol->string
                 (##structure-ref
                  _%ctx195166%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195180%_
                (let ((_%$e195174%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195172%_ '#\/))))
                  (if _%$e195174%_
                      ((lambda (_%x195177%_)
                         (let ((__tmp196211
                                (substring _%idstr195172%_ '0 _%x195177%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196211)))
                       _%$e195174%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195168%_))
          (let ((__tmp196212
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg195180%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg195180%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code195170%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path195168%_ __tmp196212)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195159%_)
        (let* ((_%state195161%_
                (let ((__obj196076
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196076 _%ctx195159%_)
                  __obj196076))
               (_%ssi-code195163%_
                (let ((__tmp196213
                       (##structure-ref
                        _%ctx195159%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195161%_
                   __tmp196213))))
          (values _%ssi-code195163%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195161%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195152%_)
        (let ((_%lifts195154%_ (box '())))
          (let ((__tmp196216
                 (lambda ()
                   (let ((_%code195157%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195152%_))))
                     (if (let ((__tmp196217 (unbox _%lifts195154%_)))
                           (declare (not safe))
                           (null? __tmp196217))
                         _%code195157%_
                         (cons 'begin
                               (let ((__tmp196219 (cons _%code195157%_ '()))
                                     (__tmp196218
                                      (reverse (unbox _%lifts195154%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196219 __tmp196218)))))))
                (__tmp196215
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196214
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196216
             gxc#current-compile-lift
             _%lifts195154%_
             gxc#current-compile-marks
             __tmp196215
             gxc#current-compile-identifiers
             __tmp196214)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195148%_)
        (let ((_%modules195150%_ (box '())))
          (let ((__tmp196220
                 (##structure-ref _%ctx195148%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195150%_ __tmp196220))
          (reverse (unbox _%modules195150%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195131%_ _%code195132%_ _%phi?195133%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195131%_))
        (let ((__tmp196221
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp196222
                                                 (if _%phi?195133%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp196222)))))))
                 (pretty-print _%code195132%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path195131%_ __tmp196221))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path195131%_ _%phi?195133%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path195131%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path195139%_ _%code195140%_)
        (let ((_%phi?195142%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path195139%_
           _%code195140%_
           _%phi?195142%_))))
    (define gxc#compile-scm-file
      (lambda _g196224_
        (let ((_g196223_ (let () (declare (not safe)) (##length _g196224_))))
          (cond ((let () (declare (not safe)) (##fx= _g196223_ 2))
                 (apply (lambda (_%path195139%_ _%code195140%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path195139%_
                             _%code195140%_)))
                        _g196224_))
                ((let () (declare (not safe)) (##fx= _g196223_ 3))
                 (apply (lambda (_%path195144%_ _%code195145%_ _%phi?195146%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path195144%_
                             _%code195145%_
                             _%phi?195146%_)))
                        _g196224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196224_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?195032%_)
        (let _%lp195034%_ ((_%rest195036%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195037%_ '()))
          (let* ((_%rest195038195058%_ _%rest195036%_)
                 (_%else195042195066%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?195032%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts195037%_)))
                        (reverse _%opts195037%_)))))
            (let ((_%K195052195109%_
                   (lambda (_%rest195107%_)
                     (let ()
                       (declare (not safe))
                       (_%lp195034%_ _%rest195107%_ _%opts195037%_))))
                  (_%K195047195091%_
                   (lambda (_%rest195089%_)
                     (let ()
                       (declare (not safe))
                       (_%lp195034%_ _%rest195089%_ _%opts195037%_))))
                  (_%K195044195073%_
                   (lambda (_%rest195070%_ _%opt195071%_)
                     (let ((__tmp196225 (cons _%opt195071%_ _%opts195037%_)))
                       (declare (not safe))
                       (_%lp195034%_ _%rest195070%_ __tmp196225)))))
              (if (let () (declare (not safe)) (##pair? _%rest195038195058%_))
                  (let ((_%tl195054195114%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195038195058%_)))
                        (_%hd195053195112%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195038195058%_))))
                    (if (equal? _%hd195053195112%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195054195114%_))
                            (let* ((_%tl195056195117%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195054195114%_)))
                                   (_%rest195120%_ _%tl195056195117%_))
                              (declare (not safe))
                              (_%K195052195109%_ _%rest195120%_))
                            (let ((_%opt195081%_ _%hd195053195112%_)
                                  (_%rest195083%_ _%tl195054195114%_))
                              (let ()
                                (declare (not safe))
                                (_%K195044195073%_
                                 _%rest195083%_
                                 _%opt195081%_))))
                        (if (equal? _%hd195053195112%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195054195114%_))
                                (let* ((_%tl195051195099%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl195054195114%_)))
                                       (_%rest195102%_ _%tl195051195099%_))
                                  (declare (not safe))
                                  (_%K195047195091%_ _%rest195102%_))
                                (let ((_%opt195081%_ _%hd195053195112%_)
                                      (_%rest195083%_ _%tl195054195114%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K195044195073%_
                                     _%rest195083%_
                                     _%opt195081%_))))
                            (let ((_%opt195081%_ _%hd195053195112%_)
                                  (_%rest195083%_ _%tl195054195114%_))
                              (let ()
                                (declare (not safe))
                                (_%K195044195073%_
                                 _%rest195083%_
                                 _%opt195081%_))))))
                  (let () (declare (not safe)) (_%else195042195066%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195126%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?195126%_))))
    (define gxc#gsc-link-options
      (lambda _g196227_
        (let ((_g196226_ (let () (declare (not safe)) (##length _g196227_))))
          (cond ((let () (declare (not safe)) (##fx= _g196226_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g196227_))
                ((let () (declare (not safe)) (##fx= _g196226_ 1))
                 (apply (lambda (_%phi?195128%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?195128%_)))
                        _g196227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196227_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?194933%_)
        (let _%lp194935%_ ((_%rest194937%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194938%_ '()))
          (let* ((_%rest194939194959%_ _%rest194937%_)
                 (_%else194943194967%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194933%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts194938%_)))
                        (reverse _%opts194938%_)))))
            (let ((_%K194953195006%_
                   (lambda (_%rest195003%_ _%opt195004%_)
                     (let ((__tmp196228
                            (let ((__tmp196229
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts194938%_))))
                              (declare (not safe))
                              (cons _%opt195004%_ __tmp196229))))
                       (declare (not safe))
                       (_%lp194935%_ _%rest195003%_ __tmp196228))))
                  (_%K194948194987%_
                   (lambda (_%rest194985%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194935%_ _%rest194985%_ _%opts194938%_))))
                  (_%K194945194973%_
                   (lambda (_%rest194971%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194935%_ _%rest194971%_ _%opts194938%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194939194959%_))
                  (let ((_%tl194955195011%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194939194959%_)))
                        (_%hd194954195009%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194939194959%_))))
                    (if (equal? _%hd194954195009%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194955195011%_))
                            (let ((_%tl194957195016%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl194955195011%_)))
                                  (_%hd194956195014%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl194955195011%_))))
                              (let ((_%opt195019%_ _%hd194956195014%_)
                                    (_%rest195021%_ _%tl194957195016%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K194953195006%_
                                   _%rest195021%_
                                   _%opt195019%_))))
                            (let ((_%rest194979%_ _%tl194955195011%_))
                              (declare (not safe))
                              (_%K194945194973%_ _%rest194979%_)))
                        (if (equal? _%hd194954195009%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194955195011%_))
                                (let* ((_%tl194952194995%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194955195011%_)))
                                       (_%rest194998%_ _%tl194952194995%_))
                                  (declare (not safe))
                                  (_%K194948194987%_ _%rest194998%_))
                                (let ((_%rest194979%_ _%tl194955195011%_))
                                  (declare (not safe))
                                  (_%K194945194973%_ _%rest194979%_)))
                            (let ((_%rest194979%_ _%tl194955195011%_))
                              (declare (not safe))
                              (_%K194945194973%_ _%rest194979%_)))))
                  (let () (declare (not safe)) (_%else194943194967%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?195027%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?195027%_))))
    (define gxc#gsc-cc-options
      (lambda _g196231_
        (let ((_g196230_ (let () (declare (not safe)) (##length _g196231_))))
          (cond ((let () (declare (not safe)) (##fx= _g196230_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g196231_))
                ((let () (declare (not safe)) (##fx= _g196230_ 1))
                 (apply (lambda (_%phi?195029%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?195029%_)))
                        _g196231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g196231_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir194928%_)
        (let ((_%user-staticdir194930%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir194928%_
                       '" -I "
                       _%user-staticdir194930%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194840%_ ((_%rest194842%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194843%_ '()))
          (let* ((_%rest194844194864%_ _%rest194842%_)
                 (_%else194848194872%_ (lambda () _%opts194843%_)))
            (let ((_%K194858194915%_
                   (lambda (_%rest194913%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194840%_ _%rest194913%_ _%opts194843%_))))
                  (_%K194853194893%_
                   (lambda (_%rest194890%_ _%opt194891%_)
                     (let ((__tmp196232
                            (let ((__tmp196233
                                   (let ((__tmp196234
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt194891%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp196234))))
                              (declare (not safe))
                              (##append _%opts194843%_ __tmp196233))))
                       (declare (not safe))
                       (_%lp194840%_ _%rest194890%_ __tmp196232))))
                  (_%K194850194878%_
                   (lambda (_%rest194876%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194840%_ _%rest194876%_ _%opts194843%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194844194864%_))
                  (let ((_%tl194860194920%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194844194864%_)))
                        (_%hd194859194918%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194844194864%_))))
                    (if (equal? _%hd194859194918%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194860194920%_))
                            (let* ((_%tl194862194923%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194860194920%_)))
                                   (_%rest194926%_ _%tl194862194923%_))
                              (declare (not safe))
                              (_%K194858194915%_ _%rest194926%_))
                            (let ((_%rest194884%_ _%tl194860194920%_))
                              (declare (not safe))
                              (_%K194850194878%_ _%rest194884%_)))
                        (if (equal? _%hd194859194918%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194860194920%_))
                                (let ((_%tl194857194903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194860194920%_)))
                                      (_%hd194856194901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194860194920%_))))
                                  (let ((_%opt194906%_ _%hd194856194901%_)
                                        (_%rest194908%_ _%tl194857194903%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K194853194893%_
                                       _%rest194908%_
                                       _%opt194906%_))))
                                (let ((_%rest194884%_ _%tl194860194920%_))
                                  (declare (not safe))
                                  (_%K194850194878%_ _%rest194884%_)))
                            (let ((_%rest194884%_ _%tl194860194920%_))
                              (declare (not safe))
                              (_%K194850194878%_ _%rest194884%_)))))
                  (let () (declare (not safe)) (_%else194848194872%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str194837%_)
        (let ((__tmp196235
               (let () (declare (not safe)) (string-empty? _%str194837%_))))
          (declare (not safe))
          (not __tmp196235))))
    (define gxc#gsc-compile-file
      (lambda (_%path194805%_ _%phi?194806%_)
        (letrec ((_%gsc-link-path194808%_
                  (lambda (_%base-path194829%_)
                    (let _%lp194831%_ ((_%n194833%_ '1))
                      (let ((_%path194835%_
                             (let ((__tmp196236 (number->string _%n194833%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path194829%_
                                '".o"
                                __tmp196236))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194835%_))
                            (let ((__tmp196237
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n194833%_ '1))))
                              (declare (not safe))
                              (_%lp194831%_ __tmp196237))
                            _%path194835%_))))))
          (let* ((_%base-path194810%_ (path-strip-extension _%path194805%_))
                 (_%path-c194812%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194810%_ '".c")))
                 (_%path-o194814%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194810%_ '".o")))
                 (_%link-path194816%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path194808%_ _%base-path194810%_)))
                 (_%link-path-c194818%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194816%_ '".c")))
                 (_%link-path-o194820%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194816%_ '".o")))
                 (_%gsc-link-opts194822%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?194806%_)))
                 (_%gsc-cc-opts194824%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?194806%_)))
                 (_%gcc-ld-opts194826%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp196240 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196238
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c194818%_
                                           (let ((__tmp196239
                                                  (cons _%path194805%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp196239
                                              _%gsc-link-opts194822%_))))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196240 __tmp196238))
            (let ((__tmp196243 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196241
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp196242
                                            (cons _%path-c194812%_
                                                  (cons _%link-path-c194818%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp196242
                                        _%gsc-cc-opts194824%_)))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196243 __tmp196241))
            (let ((__tmp196245 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp196244
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path194816%_
                                     (cons _%path-o194814%_
                                           (cons _%link-path-o194820%_
                                                 _%gcc-ld-opts194826%_)))))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp196245
               __tmp196244))
            (let ((__tmp196246
                   (cons _%path-c194812%_
                         (cons _%path-o194814%_
                               (cons _%link-path-c194818%_
                                     (cons _%link-path-o194820%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp196246))))))
    (define gxc#compile-output-file
      (lambda (_%ctx194771%_ _%n194772%_ _%ext194773%_)
        (letrec ((_%module-relative-path194775%_
                  (lambda (_%ctx194803%_)
                    (path-strip-directory
                     (let ((__tmp196247
                            (##structure-ref
                             _%ctx194803%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196247)))))
                 (_%module-source-directory194776%_
                  (lambda (_%ctx194799%_)
                    (path-directory
                     (let ((_%mpath194801%_
                            (##structure-ref
                             _%ctx194799%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath194801%_))
                           _%mpath194801%_
                           (last _%mpath194801%_))))))
                 (_%section-string194777%_
                  (lambda (_%n194793%_)
                    (if (let () (declare (not safe)) (number? _%n194793%_))
                        (let () (number->string _%n194793%_))
                        (if (let () (declare (not safe)) (symbol? _%n194793%_))
                            (let () (symbol->string _%n194793%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n194793%_))
                                (let () _%n194793%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n194793%_)))))))
                 (_%file-name194778%_
                  (lambda (_%path194791%_)
                    (if _%n194772%_
                        (string-append
                         _%path194791%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string194777%_ _%n194772%_))
                         _%ext194773%_)
                        (string-append _%path194791%_ _%ext194773%_))))
                 (_%file-path194779%_
                  (lambda ()
                    (let ((_%$e194785%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e194785%_
                          ((lambda (_%outdir194788%_)
                             (path-expand
                              (let ((__tmp196248
                                     (let ((__tmp196249
                                            (##structure-ref
                                             _%ctx194771%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp196249))))
                                (declare (not safe))
                                (_%file-name194778%_ __tmp196248))
                              _%outdir194788%_))
                           _%$e194785%_)
                          (let ()
                            (path-expand
                             (let ((__tmp196250
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path194775%_
                                       _%ctx194771%_))))
                               (declare (not safe))
                               (_%file-name194778%_ __tmp196250))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory194776%_
                                _%ctx194771%_)))))))))
          (let ((_%path194781%_
                 (let () (declare (not safe)) (_%file-path194779%_))))
            (let ((__tmp196251
                   (lambda ()
                     (let ((__tmp196252 (path-directory _%path194781%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196252)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196251))
            _%path194781%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx194752%_)
        (letrec ((_%file-name194754%_
                  (lambda (_%id194769%_)
                    (let ((__tmp196253
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id194769%_))))
                      (declare (not safe))
                      (##string-append __tmp196253 '".scm"))))
                 (_%file-path194755%_
                  (lambda ()
                    (let* ((_%file194761%_
                            (let ((__tmp196254
                                   (##structure-ref
                                    _%ctx194752%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name194754%_ __tmp196254)))
                           (_%$e194763%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e194763%_
                          ((lambda (_%outdir194766%_)
                             (path-expand
                              _%file194761%_
                              (path-expand '"static" _%outdir194766%_)))
                           _%$e194763%_)
                          (let () (path-expand _%file194761%_ '"static")))))))
          (let ((_%path194757%_
                 (let () (declare (not safe)) (_%file-path194755%_))))
            (let ((__tmp196255
                   (lambda ()
                     (let ((__tmp196256 (path-directory _%path194757%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196256)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196255))
            _%path194757%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx194745%_ _%opts194746%_)
        (let ((_%$e194748%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts194746%_))))
          (if _%$e194748%_
              (values _%$e194748%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx194745%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr194735%_)
        (if (let () (declare (not safe)) (string? _%idstr194735%_))
            (let ()
              (let* ((_%str194738%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr194735%_)))
                     (_%strs194740%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str194738%_ '#\/))))
                (declare (not safe))
                (string-join _%strs194740%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr194735%_))
                (let ((__tmp196257 (symbol->string _%idstr194735%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp196257))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr194735%_))))))
    (define gxc#invoke__%
      (lambda (_%@@keywords194700%_
               _%stdout-redirection194696194701%_
               _%stderr-redirection194697194703%_
               _%program194705%_
               _%args194706%_)
        (let* ((_%stdout-redirection194708%_
                (if (eq? _%stdout-redirection194696194701%_ absent-value)
                    '#f
                    _%stdout-redirection194696194701%_))
               (_%stderr-redirection194710%_
                (if (eq? _%stderr-redirection194697194703%_ absent-value)
                    '#f
                    _%stderr-redirection194697194703%_)))
          (let ((__tmp196258 (cons _%program194705%_ _%args194706%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196258))
          (let* ((_%proc194712%_
                  (open-process
                   (cons 'path:
                         (cons _%program194705%_
                               (cons 'arguments:
                                     (cons _%args194706%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection194708%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection194710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output194717%_
                  (if (or _%stdout-redirection194708%_
                          _%stderr-redirection194710%_)
                      (read-line _%proc194712%_ '#f)
                      '#f))
                 (_%status194720%_ (process-status _%proc194712%_)))
            (let () (declare (not safe)) (##close-port _%proc194712%_))
            (if (zero? _%status194720%_)
                '#!void
                (begin
                  (display _%output194717%_)
                  (let ((__tmp196259 (cons _%program194705%_ _%args194706%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196259
                     _%status194720%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords194725%_ . _%args194726%_)
        (apply gxc#invoke__%
               _%@@keywords194725%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194725%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194725%_
                  'stderr-redirection:
                  absent-value))
               _%args194726%_)))
    (define gxc#invoke
      (lambda _%args194698194732%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args194698194732%_)))
    (define gxc#join!
      (lambda (_%thread194690%_)
        (let ((__tmp196261
               (lambda (_%exn194692%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn194692%_))
                     (let ((__tmp196262
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn194692%_))))
                       (declare (not safe))
                       (raise __tmp196262))
                     (let () (declare (not safe)) (raise _%exn194692%_)))))
              (__tmp196260 (lambda () (thread-join! _%thread194690%_))))
          (declare (not safe))
          (__with-catch __tmp196261 __tmp196260))))))
