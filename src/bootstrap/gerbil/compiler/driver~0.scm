(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712269052)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196011 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196011))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196012 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196012))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195917%_ _%fun195918%_)
        (with-output-to-file
         (cons 'path: (cons _%path195917%_ gxc#scheme-file-settings))
         _%fun195918%_)))
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
      (lambda (_%gerbil-libdir195912%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195912%_)))
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
      (lambda (_%dir195910%_) (delete-file-or-directory _%dir195910%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195884%_ _%opts195885%_)
        (if (let () (declare (not safe)) (string? _%srcpath195884%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195884%_)))
        (let ((_%outdir195887%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195885%_)))
              (_%invoke-gsc?195888%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195885%_)))
              (_%gsc-options195889%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195885%_)))
              (_%keep-scm?195890%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195885%_)))
              (_%verbosity195891%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195885%_)))
              (_%optimize195892%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195885%_)))
              (_%debug195893%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195885%_)))
              (_%gen-ssxi195894%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195885%_))))
          (if _%outdir195887%_
              (let ((__tmp196013
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195887%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196013))
              '#!void)
          (if _%optimize195892%_
              (let ((__tmp196014
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196014))
              '#!void)
          (let ((__tmp196017
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195884%_))
                   (let ((__tmp196018
                          (let ((__tmp196019
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195884%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196019))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp196018))))
                (__tmp196016
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196015
                 (cons 'compile-module (cons _%srcpath195884%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196017
             gxc#current-compile-output-dir
             _%outdir195887%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195888%_
             gxc#current-compile-gsc-options
             _%gsc-options195889%_
             gxc#current-compile-keep-scm
             _%keep-scm?195890%_
             gxc#current-compile-verbose
             _%verbosity195891%_
             gxc#current-compile-optimize
             _%optimize195892%_
             gxc#current-compile-debug
             _%debug195893%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195894%_
             gxc#current-compile-timestamp
             __tmp196016
             gxc#current-compile-context
             __tmp196015
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195903%_)
        (let ((_%opts195905%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath195903%_ _%opts195905%_))))
    (define gxc#compile-module
      (lambda _g196021_
        (let ((_g196020_ (let () (declare (not safe)) (##length _g196021_))))
          (cond ((let () (declare (not safe)) (##fx= _g196020_ 1))
                 (apply (lambda (_%srcpath195903%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath195903%_)))
                        _g196021_))
                ((let () (declare (not safe)) (##fx= _g196020_ 2))
                 (apply (lambda (_%srcpath195907%_ _%opts195908%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath195907%_
                             _%opts195908%_)))
                        _g196021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196021_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195860%_ _%opts195861%_)
        (if (let () (declare (not safe)) (string? _%srcpath195860%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195860%_)))
        (let ((_%outdir195863%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195861%_)))
              (_%invoke-gsc?195864%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195861%_)))
              (_%gsc-options195865%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195861%_)))
              (_%keep-scm?195866%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195861%_)))
              (_%verbosity195867%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195861%_)))
              (_%debug195868%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts195861%_))))
          (if _%outdir195863%_
              (let ((__tmp196022
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195863%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196022))
              '#!void)
          (let ((__tmp196025
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195860%_))
                   (let ((__tmp196026
                          (let ((__tmp196027
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195860%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196027))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp196026
                      _%opts195861%_))))
                (__tmp196024
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196023 (cons 'compile-exe (cons _%srcpath195860%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196025
             gxc#current-compile-output-dir
             _%outdir195863%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195864%_
             gxc#current-compile-gsc-options
             _%gsc-options195865%_
             gxc#current-compile-keep-scm
             _%keep-scm?195866%_
             gxc#current-compile-verbose
             _%verbosity195867%_
             gxc#current-compile-debug
             _%debug195868%_
             gxc#current-compile-timestamp
             __tmp196024
             gxc#current-compile-context
             __tmp196023
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195876%_)
        (let ((_%opts195878%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath195876%_ _%opts195878%_))))
    (define gxc#compile-exe
      (lambda _g196029_
        (let ((_g196028_ (let () (declare (not safe)) (##length _g196029_))))
          (cond ((let () (declare (not safe)) (##fx= _g196028_ 1))
                 (apply (lambda (_%srcpath195876%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath195876%_)))
                        _g196029_))
                ((let () (declare (not safe)) (##fx= _g196028_ 2))
                 (apply (lambda (_%srcpath195880%_ _%opts195881%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath195880%_
                             _%opts195881%_)))
                        _g196029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196029_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195856%_ _%opts195857%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195857%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx195856%_
               _%opts195857%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx195856%_
               _%opts195857%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx195733%_ _%opts195734%_)
        (letrec ((_%generate-stub195736%_
                  (lambda (_%builtin-modules195852%_)
                    (let ((_%mod-main195854%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195733%_ 'main))))
                      (let ((__tmp196030
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules195852%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196030))
                      (let ((__tmp196031
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195854%_
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
                        (##write __tmp196031))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts195737%_
                  (lambda (_%libgerbil195850%_)
                    (let ((__tmp196032
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil195850%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp196032 read))))
                 (_%replace-extension195738%_
                  (lambda (_%path195847%_ _%ext195848%_)
                    (string-append
                     (path-strip-extension _%path195847%_)
                     _%ext195848%_)))
                 (_%not-exclude-module?195739%_
                  (lambda (_%ctx195843%_)
                    (let ((_%id-str195845%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195843%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp196033
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195845%_))))
                            (declare (not safe))
                            (not __tmp196033))
                          (let ((__tmp196034
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str195845%_))))
                            (declare (not safe))
                            (not __tmp196034))
                          '#f))))
                 (_%not-file-empty?195740%_
                  (lambda (_%path195841%_)
                    (let ((__tmp196035
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path195841%_))))
                      (declare (not safe))
                      (not __tmp196035))))
                 (_%compile-stub195741%_
                  (lambda (_%output-scm195748%_ _%output-bin195749%_)
                    (let* ((_%gerbil-home195751%_
                            (let ((__tmp196036
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196036)))
                           (_%gerbil-libdir195753%_
                            (path-expand '"lib" _%gerbil-home195751%_))
                           (_%gerbil-staticdir195755%_
                            (path-expand '"static" _%gerbil-libdir195753%_))
                           (_%gxlink195757%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir195753%_))
                           (_%tmp195759%_
                            (path-expand
                             (let ((__tmp196037
                                    (let ((__tmp196038
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp196038))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp196037))
                             '"/tmp"))
                           (_%tmp-path195763%_
                            (lambda (_%f195761%_)
                              (path-expand
                               (path-strip-directory _%f195761%_)
                               _%tmp195759%_)))
                           (_%deps195765%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195733%_)))
                           (_%deps195767%_
                            (filter _%not-exclude-module?195739%_
                                    _%deps195765%_))
                           (_%src-deps-scm195769%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps195767%_)))
                           (_%src-deps-scm195771%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?195740%_
                               _%src-deps-scm195769%_)))
                           (_%src-deps-scm195773%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm195771%_)))
                           (_%deps-scm195775%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path195763%_
                                     _%src-deps-scm195773%_)))
                           (_%deps-c195781%_
                            (let ((__tmp196039
                                   (lambda (_%g195776195778%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195738%_
                                        _%g195776195778%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp196039 _%deps-scm195775%_)))
                           (_%deps-o195787%_
                            (let ((__tmp196040
                                   (lambda (_%g195782195784%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195738%_
                                        _%g195782195784%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp196040 _%deps-scm195775%_)))
                           (_%src-bin-scm195789%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195733%_)))
                           (_%src-bin-scm195791%_
                            (path-expand _%src-bin-scm195789%_))
                           (_%bin-scm195793%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path195763%_ _%src-bin-scm195791%_)))
                           (_%bin-c195795%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195738%_
                               _%bin-scm195793%_
                               '".c")))
                           (_%bin-o195797%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195738%_
                               _%bin-scm195793%_
                               '".o")))
                           (_%output-bin195799%_
                            (path-expand _%output-bin195749%_))
                           (_%output-scm195801%_
                            (path-expand _%output-scm195748%_))
                           (_%output-c195803%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195738%_
                               _%output-scm195801%_
                               '".c")))
                           (_%output-o195805%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195738%_
                               _%output-scm195801%_
                               '".o")))
                           (_%output_-c195807%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195738%_
                               _%output-scm195801%_
                               '"_.c")))
                           (_%output_-o195809%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195738%_
                               _%output-scm195801%_
                               '"_.o")))
                           (_%gsc-link-opts195811%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195813%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195815%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir195755%_)))
                           (_%output-ld-opts195817%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a195819%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir195753%_))
                           (_%libgerbil.so195821%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir195753%_))
                           (_%libgerbil.dylib195823%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir195753%_))
                           (_%libgerbil-ld-opts195829%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so195821%_))
                                (let ()
                                  (declare (not safe))
                                  (_%get-libgerbil-ld-opts195737%_
                                   _%libgerbil.so195821%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib195823%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%get-libgerbil-ld-opts195737%_
                                       _%libgerbil.dylib195823%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a195819%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%get-libgerbil-ld-opts195737%_
                                           _%libgerbil.a195819%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _%libgerbil.a195819%_
                                           _%libgerbil.so195821%_
                                           _%libgerbil.dylib195823%_))))))
                           (_%rpath195831%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195753%_)))
                           (_%builtin-modules195835%_
                            (let ((__tmp196042
                                   (lambda (_%mod195833%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod195833%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp196041
                                   (cons _%ctx195733%_ _%deps195767%_)))
                              (declare (not safe))
                              (##map __tmp196042 __tmp196041))))
                      (let ((__tmp196043
                             (lambda ()
                               (let ((__tmp196044
                                      (path-directory _%output-bin195799%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196044)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196043))
                      (let ((__tmp196045
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub195736%_
                                  _%builtin-modules195835%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195801%_
                         __tmp196045))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196046
                                   (lambda ()
                                     (create-directory _%tmp195759%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp196046))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm195773%_
                               _%deps-scm195775%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm195791%_
                               _%bin-scm195793%_))
                            (let ((__tmp196050
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196047
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink195757%_
                                                     (let ((__tmp196048
                                                            (let ((__tmp196049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm195793%_
                                 (cons _%output-scm195801%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp196049 _%deps-scm195775%_))))
               (declare (not safe))
               (__foldr1 cons __tmp196048 _%gsc-link-opts195811%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196050
                               __tmp196047))
                            (let ((__tmp196055
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196051
                                   (cons '"-obj"
                                         (let ((__tmp196052
                                                (let ((__tmp196053
                                                       (let ((__tmp196054
                                                              (cons _%bin-c195795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c195803%_
                                  (cons _%output_-c195807%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp196054 _%deps-c195781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196053
                                                   _%gsc-static-opts195815%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196052
                                            _%gsc-cc-opts195813%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196055
                               __tmp196051))
                            (let ((__tmp196059
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196056
                                   (cons '"-w"
                                         (cons '"-o"
                                               (cons _%output-bin195799%_
                                                     (let ((__tmp196057
                                                            (cons _%bin-o195797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output-o195805%_
                                (cons _%output_-o195809%_
                                      (let ((__tmp196058
                                             (cons _%rpath195831%_
                                                   (cons '"-L"
                                                         (cons _%gerbil-libdir195753%_
                                                               (cons '"-lgerbil"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '"-lgambit"
                                   _%libgerbil-ld-opts195829%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196058
                                         _%output-ld-opts195817%_)))))))
               (declare (not safe))
               (__foldr1 cons __tmp196057 _%deps-o195787%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196059
                               __tmp196056))
                            (let ((__tmp196060
                                   (cons _%output-c195803%_
                                         (cons _%output_-c195807%_
                                               (cons _%output-o195805%_
                                                     (cons _%output_-o195809%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp196060))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp195759%_)))
                          '#!void)))))
          (let* ((_%output-bin195743%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195733%_
                     _%opts195734%_)))
                 (_%output-scm195745%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195743%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195741%_
               _%output-scm195745%_
               _%output-bin195743%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195745%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx195558%_ _%opts195559%_)
        (letrec ((_%reset-declare195561%_
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
                 (_%generate-stub195562%_
                  (lambda (_%deps195724%_)
                    (let ((_%mod-main195726%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195558%_ 'main)))
                          (_%reset-decl195727%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare195561%_)))
                          (_%user-decl195728%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare195563%_))))
                      (for-each
                       (lambda (_%dep195730%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl195727%_))
                         (newline)
                         (if _%user-decl195728%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl195728%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196061
                                (cons 'include (cons _%dep195730%_ '()))))
                           (declare (not safe))
                           (##write __tmp196061))
                         (newline))
                       _%deps195724%_)
                      (let ((__tmp196062
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main195726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196062))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare195563%_
                  (lambda ()
                    (let* ((_%gsc-opts195629%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts195559%_)))
                           (_%gsc-prelude195631%_
                            (if _%gsc-opts195629%_
                                (member '"-prelude" _%gsc-opts195629%_)
                                '#f))
                           (_%gsc-prelude195633%_
                            (if _%gsc-prelude195631%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude195631%_)))
                                '#f)))
                      (let _%lp195636%_ ((_%rest195638%_
                                          (cons _%gsc-prelude195633%_ '()))
                                         (_%user-decls195639%_ '()))
                        (let* ((_%rest195640195648%_ _%rest195638%_)
                               (_%else195642195656%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls195639%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls195639%_)))))
                               (_%K195644195712%_
                                (lambda (_%rest195659%_ _%expr195660%_)
                                  (let* ((_%expr195661195673%_ _%expr195660%_)
                                         (_%else195664195681%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp195636%_
                                               _%rest195659%_
                                               _%user-decls195639%_)))))
                                    (let ((_%K195669195702%_
                                           (lambda (_%decls195700%_)
                                             (let ((__tmp196063
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls195639%_
                                                       _%decls195700%_))))
                                               (declare (not safe))
                                               (_%lp195636%_
                                                _%rest195659%_
                                                __tmp196063))))
                                          (_%K195666195687%_
                                           (lambda (_%exprs195685%_)
                                             (let ((__tmp196064
                                                    (append _%exprs195685%_
                                                            _%rest195659%_)))
                                               (declare (not safe))
                                               (_%lp195636%_
                                                __tmp196064
                                                _%user-decls195639%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr195661195673%_))
                                          (let ((_%tl195671195707%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr195661195673%_)))
                                                (_%hd195670195705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr195661195673%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd195670195705%_
                                                         'declare))
                                                (let ((_%decls195710%_
                                                       _%tl195671195707%_))
                                                  (declare (not safe))
                                                  (_%K195669195702%_
                                                   _%decls195710%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd195670195705%_
                                                             'begin))
                                                    (let ((_%exprs195695%_
                                                           _%tl195671195707%_))
                                                      (declare (not safe))
                                                      (_%K195666195687%_
                                                       _%exprs195695%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else195664195681%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195664195681%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest195640195648%_))
                              (let ((_%hd195645195715%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195640195648%_)))
                                    (_%tl195646195717%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195640195648%_))))
                                (let* ((_%expr195720%_ _%hd195645195715%_)
                                       (_%rest195722%_ _%tl195646195717%_))
                                  (declare (not safe))
                                  (_%K195644195712%_
                                   _%rest195722%_
                                   _%expr195720%_)))
                              (let ()
                                (declare (not safe))
                                (_%else195642195656%_))))))))
                 (_%compile-stub195564%_
                  (lambda (_%output-scm195571%_ _%output-bin195572%_)
                    (let* ((_%gerbil-home195574%_
                            (let ((__tmp196065
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196065)))
                           (_%gerbil-libdir195576%_
                            (path-expand '"lib" _%gerbil-home195574%_))
                           (_%runtime195578%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp195580%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home195574%_))
                           (_%include-gambit-sharp195582%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp195580%_
                               '"\")")))
                           (_%bin-scm195584%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195558%_)))
                           (_%deps195586%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195558%_)))
                           (_%deps195588%_
                            (map gxc#find-static-module-file _%deps195586%_))
                           (_%deps195593%_
                            (let ((__tmp196066
                                   (lambda (_%$obj195590%_)
                                     (let ((__tmp196067
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj195590%_))))
                                       (declare (not safe))
                                       (not __tmp196067)))))
                              (declare (not safe))
                              (##filter __tmp196066 _%deps195588%_)))
                           (_%deps195597%_
                            (let ((__tmp196068
                                   (lambda (_%f195595%_)
                                     (let ((__tmp196069
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f195595%_
                                               _%runtime195578%_))))
                                       (declare (not safe))
                                       (not __tmp196069)))))
                              (declare (not safe))
                              (##filter __tmp196068 _%deps195593%_)))
                           (_%output-base195599%_
                            (let ((__tmp196070
                                   (path-strip-extension
                                    _%output-scm195571%_)))
                              (declare (not safe))
                              (##string-append __tmp196070)))
                           (_%output-c195601%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195599%_ '".c")))
                           (_%output-o195603%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195599%_ '".o")))
                           (_%output-c_195605%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195599%_ '"_.c")))
                           (_%output-o_195607%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195599%_ '"_.o")))
                           (_%gsc-link-opts195609%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195611%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195613%_
                            (let ((__tmp196071
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir195576%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp196071)))
                           (_%output-ld-opts195615%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros195617%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp195582%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp195582%_
                                            '()))))
                           (_%gsc-link-opts195619%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts195609%_
                               _%gsc-gx-macros195617%_)))
                           (_%rpath195621%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195576%_)))
                           (_%default-ld-options195623%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196072
                             (lambda ()
                               (let ((__tmp196073
                                      (path-directory _%output-bin195572%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196073)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196072))
                      (let ((__tmp196074
                             (lambda ()
                               (let ((__tmp196075
                                      (let ((__tmp196076
                                             (let ((__tmp196077
                                                    (cons _%bin-scm195584%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp196077
                                                _%deps195597%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196076
                                         _%runtime195578%_))))
                                 (declare (not safe))
                                 (_%generate-stub195562%_ __tmp196075)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195571%_
                         __tmp196074))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196080
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196078
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_195605%_
                                                     (let ((__tmp196079
                                                            (cons _%output-scm195571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp196079 _%gsc-link-opts195619%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196080
                               __tmp196078))
                            (let ((__tmp196084
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196081
                                   (cons '"-obj"
                                         (let ((__tmp196082
                                                (let ((__tmp196083
                                                       (cons _%output-c195601%_
                                                             (cons _%output-c_195605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196083
                                                   _%gsc-static-opts195613%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196082
                                            _%gsc-cc-opts195611%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196084
                               __tmp196081))
                            (let ((__tmp196087
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196085
                                   (cons '"-w"
                                         (cons '"-o"
                                               (cons _%output-bin195572%_
                                                     (cons _%output-o195603%_
                                                           (cons _%output-o_195607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp196086
                                (cons _%rpath195621%_
                                      (cons '"-L"
                                            (cons _%gerbil-libdir195576%_
                                                  (cons '"-lgambit"
                                                        _%default-ld-options195623%_))))))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp196086
                            _%output-ld-opts195615%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196087
                               __tmp196085)))
                          '#!void)))))
          (let* ((_%output-bin195566%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195558%_
                     _%opts195559%_)))
                 (_%output-scm195568%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195566%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195564%_
               _%output-scm195568%_
               _%output-bin195566%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195568%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx195507%_ _%id195508%_)
        (let ((_%$e195554%_
               (let ((__tmp196089
                      (lambda (_%e195509195511%_)
                        (let* ((_%g195513195523%_ _%e195509195511%_)
                               (_%else195515195531%_ (lambda () '#f))
                               (_%K195517195535%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g195513195523%_
                                 'gx#module-export::t))
                              (let* ((_%e195518195538%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195513195523%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e195519195541%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195513195523%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e195520195544%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195513195523%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e195520195544%_ '0))
                                    (let ((_%e195521195547%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g195513195523%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g195549195551%_)
                                             (eq? _%g195549195551%_
                                                  _%id195508%_))
                                           _%e195521195547%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K195517195535%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195515195531%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else195515195531%_))))
                              (let ()
                                (declare (not safe))
                                (_%else195515195531%_))))))
                     (__tmp196088
                      (##structure-ref
                       _%ctx195507%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196089 __tmp196088))))
          (if _%$e195554%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e195554%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx195498%_ _%id195499%_)
        (let ((_%$e195501%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx195498%_ _%id195499%_))))
          (if _%$e195501%_
              ((lambda (_%bind195504%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind195504%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id195499%_)))
                 (##structure-ref _%bind195504%_ '1 gx#binding::t '#f))
               _%$e195501%_)
              (let ((__tmp196090
                     (##structure-ref
                      _%ctx195498%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196090
                 _%id195499%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195364%_)
        (letrec* ((_%ht195366%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195367%_
                   (lambda (_%in195443%_ _%phi195444%_)
                     (let ((_%iphi195446%_
                            (fx+ _%phi195444%_
                                 (##direct-structure-ref
                                  _%in195443%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports195447%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in195443%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp195449%_ ((_%rest195451%_ _%imports195447%_)
                                          (_%r195452%_ '()))
                         (let* ((_%rest195453195461%_ _%rest195451%_)
                                (_%else195455195469%_ (lambda () _%r195452%_))
                                (_%K195457195486%_
                                 (lambda (_%rest195472%_ _%in195473%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in195473%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi195446%_))
                                             (let ((__tmp196091
                                                    (cons _%in195473%_
                                                          _%r195452%_)))
                                               (declare (not safe))
                                               (_%lp195449%_
                                                _%rest195472%_
                                                __tmp196091))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp195449%_
                                                _%rest195472%_
                                                _%r195452%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in195473%_
                                              'gx#module-import::t))
                                           (let ((_%iphi195477%_
                                                  (fx+ _%phi195444%_
                                                       (##direct-structure-ref
                                                        _%in195473%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi195477%_))
                                                 (let ((__tmp196092
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in195473%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r195452%_)))
                                                   (declare (not safe))
                                                   (_%lp195449%_
                                                    _%rest195472%_
                                                    __tmp196092))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp195449%_
                                                    _%rest195472%_
                                                    _%r195452%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in195473%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi195480%_
                                                      (fx+ _%iphi195446%_
                                                           (##direct-structure-ref
                                                            _%in195473%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi195480%_))
                                                     (let ((__tmp196093
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in195473%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r195452%_)))
               (declare (not safe))
               (_%lp195449%_ _%rest195472%_ __tmp196093))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi195480%_))
                                                         (let ((__tmp196094
                                                                (let ((__tmp196095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195367%_
                                  _%in195473%_
                                  _%iphi195446%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r195452%_ __tmp196095))))
                   (declare (not safe))
                   (_%lp195449%_ _%rest195472%_ __tmp196094))
                 (let ()
                   (declare (not safe))
                   (_%lp195449%_ _%rest195472%_ _%r195452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp195449%_
                                                  _%rest195472%_
                                                  _%r195452%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest195453195461%_))
                               (let ((_%hd195458195489%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest195453195461%_)))
                                     (_%tl195459195491%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest195453195461%_))))
                                 (let* ((_%in195494%_ _%hd195458195489%_)
                                        (_%rest195496%_ _%tl195459195491%_))
                                   (declare (not safe))
                                   (_%K195457195486%_
                                    _%rest195496%_
                                    _%in195494%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else195455195469%_))))))))
                  (_%find-deps195368%_
                   (lambda (_%rest195376%_ _%deps195377%_)
                     (let* ((_%rest195378195386%_ _%rest195376%_)
                            (_%else195380195394%_ (lambda () _%deps195377%_))
                            (_%K195382195431%_
                             (lambda (_%rest195397%_ _%hd195398%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195398%_
                                      'gx#module-context::t))
                                   (let ((_%id195401%_
                                          (##structure-ref
                                           _%hd195398%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195402%_
                                          (##structure-ref
                                           _%hd195398%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195366%_
                                            _%id195401%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps195368%_
                                            _%rest195397%_
                                            _%deps195377%_))
                                         (let ((_%$e195405%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195398%_))))
                                           (if _%$e195405%_
                                               ((lambda (_%pre195408%_)
                                                  (let ((_%xdeps195410%_
                                                         (let ((__tmp196096
                                                                (cons _%pre195408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports195402%_)))
                   (declare (not safe))
                   (_%find-deps195368%_ __tmp196096 _%deps195377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195366%_
                                                       _%id195401%_
                                                       _%hd195398%_))
                                                    (let ((__tmp196097
                                                           (cons _%hd195398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps195410%_)))
              (declare (not safe))
              (_%find-deps195368%_ _%rest195397%_ __tmp196097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e195405%_)
                                               (let ((_%xdeps195413%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps195368%_
                                                         _%imports195402%_
                                                         _%deps195377%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195366%_
                                                    _%id195401%_
                                                    _%hd195398%_))
                                                 (let ((__tmp196098
                                                        (cons _%hd195398%_
                                                              _%xdeps195413%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195368%_
                                                    _%rest195397%_
                                                    __tmp196098)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195398%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195416%_
                                              (##structure-ref
                                               _%hd195398%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195366%_
                                                _%id195416%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps195368%_
                                                _%rest195397%_
                                                _%deps195377%_))
                                             (let ((_%xdeps195420%_
                                                    (let ((__tmp196099
                                                           (##structure-ref
                                                            _%hd195398%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps195368%_
                                                       __tmp196099
                                                       _%deps195377%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195366%_
                                                      _%id195416%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps195368%_
                                                      _%rest195397%_
                                                      _%xdeps195420%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195366%_
                                                        _%id195416%_
                                                        _%hd195398%_))
                                                     (let ((__tmp196100
                                                            (cons _%hd195398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps195420%_)))
               (declare (not safe))
               (_%find-deps195368%_ _%rest195397%_ __tmp196100)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195398%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd195398%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp196101
                                                        (cons (##direct-structure-ref
                                                               _%hd195398%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest195397%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195368%_
                                                    __tmp196101
                                                    _%deps195377%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps195368%_
                                                    _%rest195397%_
                                                    _%deps195377%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195398%_
                                                  'gx#module-export::t))
                                               (let ((__tmp196102
                                                      (cons (##direct-structure-ref
                                                             _%hd195398%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest195397%_)))
                                                 (declare (not safe))
                                                 (_%find-deps195368%_
                                                  __tmp196102
                                                  _%deps195377%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195398%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd195398%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp196103
                        (cons (##direct-structure-ref
                               _%hd195398%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest195397%_)))
                   (declare (not safe))
                   (_%find-deps195368%_ __tmp196103 _%deps195377%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd195398%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps195427%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195367%_
                                  _%hd195398%_
                                  '0)))
                              (__tmp196104
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest195397%_
                                  _%xdeps195427%_))))
                         (declare (not safe))
                         (_%find-deps195368%_ __tmp196104 _%deps195377%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps195368%_ _%rest195397%_ _%deps195377%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195398%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195378195386%_))
                           (let ((_%hd195383195434%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195378195386%_)))
                                 (_%tl195384195436%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195378195386%_))))
                             (let* ((_%hd195439%_ _%hd195383195434%_)
                                    (_%rest195441%_ _%tl195384195436%_))
                               (declare (not safe))
                               (_%K195382195431%_
                                _%rest195441%_
                                _%hd195439%_)))
                           (let ()
                             (declare (not safe))
                             (_%else195380195394%_)))))))
          (let ((__tmp196105
                 (filter gx#expander-context-id
                         (let ((__tmp196106
                                (let ((_%$e195370%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx195364%_))))
                                  (if _%$e195370%_
                                      ((lambda (_%pre195373%_)
                                         (cons _%pre195373%_
                                               (##structure-ref
                                                _%ctx195364%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e195370%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx195364%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps195368%_ __tmp196106 '())))))
            (declare (not safe))
            (##reverse __tmp196105)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195294%_)
        (let* ((_%context-id195296%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195294%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195294%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195294%_)))
               (_%scm195298%_
                (let ((__tmp196107
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id195296%_))))
                  (declare (not safe))
                  (##string-append __tmp196107 '".scm")))
               (_%dirs195300%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195306%_
                (let ((_%user-libpath195302%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195302%_
                      (let ((_%user-libpath195304%_
                             (path-expand '"lib" _%user-libpath195302%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195304%_ _%dirs195300%_))
                            _%dirs195300%_
                            (cons _%user-libpath195304%_ _%dirs195300%_)))
                      _%dirs195300%_)))
               (_%dirs195316%_
                (let ((_%$e195308%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195308%_
                      ((lambda (_%g195310195312%_)
                         (cons _%g195310195312%_ _%dirs195306%_))
                       _%$e195308%_)
                      (let () _%dirs195306%_))))
               (_%dirs195322%_
                (map (lambda (_%g195317195319%_)
                       (path-expand '"static" _%g195317195319%_))
                     _%dirs195316%_)))
          (let _%lp195325%_ ((_%rest195327%_ _%dirs195322%_))
            (let* ((_%rest195328195336%_ _%rest195327%_)
                   (_%else195330195344%_
                    (lambda ()
                      (let ((__tmp196108
                             (##structure-ref
                              _%ctx195294%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196108
                         _%scm195298%_))))
                   (_%K195332195352%_
                    (lambda (_%rest195347%_ _%dir195348%_)
                      (let ((_%path195350%_
                             (path-expand _%scm195298%_ _%dir195348%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195350%_))
                            _%path195350%_
                            (let ()
                              (declare (not safe))
                              (_%lp195325%_ _%rest195347%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest195328195336%_))
                  (let ((_%hd195333195355%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195328195336%_)))
                        (_%tl195334195357%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195328195336%_))))
                    (let* ((_%dir195360%_ _%hd195333195355%_)
                           (_%rest195362%_ _%tl195334195357%_))
                      (declare (not safe))
                      (_%K195332195352%_ _%rest195362%_ _%dir195360%_)))
                  (let () (declare (not safe)) (_%else195330195344%_))))))))
    (define gxc#file-empty?
      (lambda (_%path195292%_)
        (zero? (let ((__tmp196109 (file-info _%path195292%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196109)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195281%_)
        (let ((__tmp196113
               (lambda ()
                 (let ((__tmp196114
                        (##structure-ref
                         _%ctx195281%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196114))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196115
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195281%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196115))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx195281%_))
                 (if (let ((__tmp196116
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx195281%_))))
                       (declare (not safe))
                       (null? __tmp196116))
                     (let* ((_%thr1195286%_
                             (let ((__tmp196117
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx195281%_)))))
                               (declare (not safe))
                               (__spawn __tmp196117)))
                            (_%thr2195289%_
                             (let ((__tmp196118
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx195281%_)))))
                               (declare (not safe))
                               (__spawn __tmp196118))))
                       (let () (declare (not safe)) (gxc#join! _%thr1195286%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2195289%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx195281%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx195281%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx195281%_))
                     '#!void)))
              (__tmp196112
               (let ((__obj196009
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196009)
                 __obj196009))
              (__tmp196111 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196110
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
           __tmp196113
           gx#current-expander-context
           _%ctx195281%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196112
           gxc#current-compile-runtime-sections
           __tmp196111
           gxc#current-compile-runtime-names
           __tmp196110))))
    (define gxc#collect-bindings
      (lambda (_%ctx195279%_)
        (let ((__tmp196119
               (##structure-ref _%ctx195279%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196119))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195223%_)
        (letrec ((_%compile1195225%_
                  (lambda (_%ctx195266%_)
                    (let* ((_%code195268%_
                            (##structure-ref
                             _%ctx195266%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt195272%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code195268%_))
                                (let ((_%idstr195270%_
                                       (let ((__tmp196120
                                              (##structure-ref
                                               _%ctx195266%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp196120))))
                                  (declare (not safe))
                                  (##string-append _%idstr195270%_ '"~0"))
                                '#f)))
                      (if _%rt195272%_
                          (let ()
                            (let ((__tmp196121
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp196121
                               _%ctx195266%_
                               _%rt195272%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code195227%_
                               _%ctx195266%_
                               _%code195268%_)))
                          (let ((_%path195277%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx195266%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path195277%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code195228%_
                         _%ctx195266%_
                         _%code195268%_
                         _%rt195272%_)))))
                 (_%context-timestamp195226%_
                  (lambda (_%ctx195264%_)
                    (let ((__tmp196122
                           (let ((__tmp196123
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195264%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196123 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196122))))
                 (_%generate-runtime-code195227%_
                  (lambda (_%ctx195246%_ _%code195247%_)
                    (let* ((_%lifts195249%_ (box '()))
                           (_%runtime-code195252%_
                            (let ((__tmp196126
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code195247%_))))
                                  (__tmp196125
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp196124
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196126
                               gx#current-expander-context
                               _%ctx195246%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts195249%_
                               gxc#current-compile-marks
                               __tmp196125
                               gxc#current-compile-identifiers
                               __tmp196124)))
                           (_%runtime-code195254%_
                            (if (let ((__tmp196127 (unbox _%lifts195249%_)))
                                  (declare (not safe))
                                  (null? __tmp196127))
                                _%runtime-code195252%_
                                (cons 'begin
                                      (let ((__tmp196129
                                             (cons _%runtime-code195252%_ '()))
                                            (__tmp196128
                                             (reverse (unbox _%lifts195249%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196129
                                         __tmp196128)))))
                           (_%runtime-code195256%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp195226%_
                                                       _%ctx195246%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code195254%_ '()))))
                           (_%scm0195258%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195246%_
                               '0
                               '".scm")))
                           (_%scms195261%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx195246%_))))
                      (let ((__tmp196130
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0195258%_
                                  _%runtime-code195256%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196130
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms195261%_)
                          (delete-file _%scms195261%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0195258%_
                         '" => "
                         _%scms195261%_))
                      (copy-file _%scm0195258%_ _%scms195261%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0195258%_)))))
                 (_%generate-loader-code195228%_
                  (lambda (_%ctx195235%_ _%code195236%_ _%rt195237%_)
                    (let* ((_%loader-code195240%_
                            (let ((__tmp196131
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195236%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196131
                               gx#current-expander-context
                               _%ctx195235%_)))
                           (_%loader-code195242%_
                            (if _%rt195237%_
                                (cons 'begin
                                      (cons _%loader-code195240%_
                                            (cons (cons 'load-module
                                                        (cons _%rt195237%_
                                                              '()))
                                                  '())))
                                _%loader-code195240%_))
                           (__tmp196132
                            (lambda ()
                              (let ((__tmp196133
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx195235%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp196133
                                 _%loader-code195242%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196132
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules195230%_
                  (cons _%ctx195223%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx195223%_))))
                 (__tmp196134
                  (lambda (_%ctx195232%_)
                    (let ((__tmp196135
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1195225%_ _%ctx195232%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196135
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196134 _%all-modules195230%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195118%_)
        (letrec ((_%compile-ssi195120%_
                  (lambda (_%code195191%_)
                    (let* ((_%path195193%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195118%_
                               '#f
                               '".ssi")))
                           (_%prelude195205%_
                            (let* ((_%super195195%_
                                    (##structure-ref
                                     _%ctx195118%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195197%_
                                    (##structure-ref
                                     _%super195195%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195197%_
                                  ((lambda (_%g195199195201%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195199195201%_)))
                                   _%$e195197%_)
                                  (let () ':<root>))))
                           (_%ns195207%_
                            (##structure-ref
                             _%ctx195118%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195209%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195118%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195217%_
                            (let ((_%$e195211%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195209%_ '#\/))))
                              (if _%$e195211%_
                                  ((lambda (_%x195214%_)
                                     (let ((__tmp196136
                                            (substring
                                             _%idstr195209%_
                                             '0
                                             _%x195214%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196136)))
                                   _%$e195211%_)
                                  (let () '#f))))
                           (_%rt195219%_
                            (let ((__tmp196137
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196137 _%ctx195118%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195193%_))
                      (let ((__tmp196138
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude195205%_))
                               (if _%pkg195217%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg195217%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns195207%_))
                               (newline)
                               (pretty-print _%code195191%_)
                               (if _%rt195219%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt195219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path195193%_
                         __tmp196138)))))
                 (_%compile-phi195121%_
                  (lambda (_%part195131%_)
                    (let* ((_%part195132195145%_ _%part195131%_)
                           (_%E195134195149%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195132195145%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195135195160%_
                            (lambda (_%code195152%_
                                     _%n195153%_
                                     _%phi195154%_
                                     _%phi-ctx195155%_)
                              (let* ((_%code195158%_
                                      (let ((__tmp196139
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code195152%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp196139
                                         gx#current-expander-context
                                         _%phi-ctx195155%_
                                         gx#current-expander-phi
                                         _%phi195154%_)))
                                     (__tmp196140
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx195118%_
                                         _%n195153%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp196140
                                 _%code195158%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195132195145%_))
                          (let ((_%hd195136195163%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195132195145%_)))
                                (_%tl195137195165%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195132195145%_))))
                            (let ((_%phi-ctx195168%_ _%hd195136195163%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195137195165%_))
                                  (let ((_%hd195138195170%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195137195165%_)))
                                        (_%tl195139195172%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195137195165%_))))
                                    (let ((_%phi195175%_ _%hd195138195170%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195139195172%_))
                                          (let ((_%hd195140195177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195139195172%_)))
                                                (_%tl195141195179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195139195172%_))))
                                            (let ((_%n195182%_
                                                   _%hd195140195177%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195141195179%_))
                                                  (let ((_%hd195142195184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195141195179%_)))
                                                        (_%tl195143195186%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195141195179%_))))
                                                    (let ((_%code195189%_
                                                           _%hd195142195184%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195143195186%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K195135195160%_
                                                             _%code195189%_
                                                             _%n195182%_
                                                             _%phi195175%_
                                                             _%phi-ctx195168%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E195134195149%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E195134195149%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E195134195149%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E195134195149%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E195134195149%_)))))))
          (let ((_g196141_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx195118%_))))
            (begin
              (let ((_g196142_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196141_)
                           (##vector-length _g196141_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196142_ 2)))
                    (error "Context expects 2 values" _g196142_)))
              (let ((_%ssi-code195123%_
                     (let () (declare (not safe)) (##vector-ref _g196141_ 0)))
                    (_%phi-code195124%_
                     (let () (declare (not safe)) (##vector-ref _g196141_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi195120%_ _%ssi-code195123%_))
                  (let ((_%threads195129%_
                         (map (lambda (_%code195126%_)
                                (let ((__tmp196143
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi195121%_
                                            _%code195126%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp196143)))
                              _%phi-code195124%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads195129%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195100%_)
        (let* ((_%path195102%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx195100%_ '#f '".ssxi.ss")))
               (_%code195104%_
                (let ((__tmp196144
                       (##structure-ref
                        _%ctx195100%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196144)))
               (_%idstr195106%_
                (symbol->string
                 (##structure-ref
                  _%ctx195100%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195114%_
                (let ((_%$e195108%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195106%_ '#\/))))
                  (if _%$e195108%_
                      ((lambda (_%x195111%_)
                         (let ((__tmp196145
                                (substring _%idstr195106%_ '0 _%x195111%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196145)))
                       _%$e195108%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195102%_))
          (let ((__tmp196146
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg195114%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg195114%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code195104%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path195102%_ __tmp196146)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195093%_)
        (let* ((_%state195095%_
                (let ((__obj196010
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196010 _%ctx195093%_)
                  __obj196010))
               (_%ssi-code195097%_
                (let ((__tmp196147
                       (##structure-ref
                        _%ctx195093%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195095%_
                   __tmp196147))))
          (values _%ssi-code195097%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195095%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195086%_)
        (let ((_%lifts195088%_ (box '())))
          (let ((__tmp196150
                 (lambda ()
                   (let ((_%code195091%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195086%_))))
                     (if (let ((__tmp196151 (unbox _%lifts195088%_)))
                           (declare (not safe))
                           (null? __tmp196151))
                         _%code195091%_
                         (cons 'begin
                               (let ((__tmp196153 (cons _%code195091%_ '()))
                                     (__tmp196152
                                      (reverse (unbox _%lifts195088%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196153 __tmp196152)))))))
                (__tmp196149
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196148
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196150
             gxc#current-compile-lift
             _%lifts195088%_
             gxc#current-compile-marks
             __tmp196149
             gxc#current-compile-identifiers
             __tmp196148)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195082%_)
        (let ((_%modules195084%_ (box '())))
          (let ((__tmp196154
                 (##structure-ref _%ctx195082%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195084%_ __tmp196154))
          (reverse (unbox _%modules195084%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195065%_ _%code195066%_ _%phi?195067%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195065%_))
        (let ((__tmp196155
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp196156
                                                 (if _%phi?195067%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp196156)))))))
                 (pretty-print _%code195066%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path195065%_ __tmp196155))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path195065%_ _%phi?195067%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path195065%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path195073%_ _%code195074%_)
        (let ((_%phi?195076%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path195073%_
           _%code195074%_
           _%phi?195076%_))))
    (define gxc#compile-scm-file
      (lambda _g196158_
        (let ((_g196157_ (let () (declare (not safe)) (##length _g196158_))))
          (cond ((let () (declare (not safe)) (##fx= _g196157_ 2))
                 (apply (lambda (_%path195073%_ _%code195074%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path195073%_
                             _%code195074%_)))
                        _g196158_))
                ((let () (declare (not safe)) (##fx= _g196157_ 3))
                 (apply (lambda (_%path195078%_ _%code195079%_ _%phi?195080%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path195078%_
                             _%code195079%_
                             _%phi?195080%_)))
                        _g196158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196158_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?194966%_)
        (let _%lp194968%_ ((_%rest194970%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194971%_ '()))
          (let* ((_%rest194972194992%_ _%rest194970%_)
                 (_%else194976195000%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194966%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts194971%_)))
                        (reverse _%opts194971%_)))))
            (let ((_%K194986195043%_
                   (lambda (_%rest195041%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194968%_ _%rest195041%_ _%opts194971%_))))
                  (_%K194981195025%_
                   (lambda (_%rest195023%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194968%_ _%rest195023%_ _%opts194971%_))))
                  (_%K194978195007%_
                   (lambda (_%rest195004%_ _%opt195005%_)
                     (let ((__tmp196159 (cons _%opt195005%_ _%opts194971%_)))
                       (declare (not safe))
                       (_%lp194968%_ _%rest195004%_ __tmp196159)))))
              (if (let () (declare (not safe)) (##pair? _%rest194972194992%_))
                  (let ((_%tl194988195048%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194972194992%_)))
                        (_%hd194987195046%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194972194992%_))))
                    (if (equal? _%hd194987195046%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194988195048%_))
                            (let* ((_%tl194990195051%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194988195048%_)))
                                   (_%rest195054%_ _%tl194990195051%_))
                              (declare (not safe))
                              (_%K194986195043%_ _%rest195054%_))
                            (let ((_%opt195015%_ _%hd194987195046%_)
                                  (_%rest195017%_ _%tl194988195048%_))
                              (let ()
                                (declare (not safe))
                                (_%K194978195007%_
                                 _%rest195017%_
                                 _%opt195015%_))))
                        (if (equal? _%hd194987195046%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194988195048%_))
                                (let* ((_%tl194985195033%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194988195048%_)))
                                       (_%rest195036%_ _%tl194985195033%_))
                                  (declare (not safe))
                                  (_%K194981195025%_ _%rest195036%_))
                                (let ((_%opt195015%_ _%hd194987195046%_)
                                      (_%rest195017%_ _%tl194988195048%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K194978195007%_
                                     _%rest195017%_
                                     _%opt195015%_))))
                            (let ((_%opt195015%_ _%hd194987195046%_)
                                  (_%rest195017%_ _%tl194988195048%_))
                              (let ()
                                (declare (not safe))
                                (_%K194978195007%_
                                 _%rest195017%_
                                 _%opt195015%_))))))
                  (let () (declare (not safe)) (_%else194976195000%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195060%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?195060%_))))
    (define gxc#gsc-link-options
      (lambda _g196161_
        (let ((_g196160_ (let () (declare (not safe)) (##length _g196161_))))
          (cond ((let () (declare (not safe)) (##fx= _g196160_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g196161_))
                ((let () (declare (not safe)) (##fx= _g196160_ 1))
                 (apply (lambda (_%phi?195062%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?195062%_)))
                        _g196161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196161_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?194867%_)
        (let _%lp194869%_ ((_%rest194871%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194872%_ '()))
          (let* ((_%rest194873194893%_ _%rest194871%_)
                 (_%else194877194901%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194867%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts194872%_)))
                        (reverse _%opts194872%_)))))
            (let ((_%K194887194940%_
                   (lambda (_%rest194937%_ _%opt194938%_)
                     (let ((__tmp196162
                            (let ((__tmp196163
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts194872%_))))
                              (declare (not safe))
                              (cons _%opt194938%_ __tmp196163))))
                       (declare (not safe))
                       (_%lp194869%_ _%rest194937%_ __tmp196162))))
                  (_%K194882194921%_
                   (lambda (_%rest194919%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194869%_ _%rest194919%_ _%opts194872%_))))
                  (_%K194879194907%_
                   (lambda (_%rest194905%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194869%_ _%rest194905%_ _%opts194872%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194873194893%_))
                  (let ((_%tl194889194945%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194873194893%_)))
                        (_%hd194888194943%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194873194893%_))))
                    (if (equal? _%hd194888194943%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194889194945%_))
                            (let ((_%tl194891194950%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl194889194945%_)))
                                  (_%hd194890194948%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl194889194945%_))))
                              (let ((_%opt194953%_ _%hd194890194948%_)
                                    (_%rest194955%_ _%tl194891194950%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K194887194940%_
                                   _%rest194955%_
                                   _%opt194953%_))))
                            (let ((_%rest194913%_ _%tl194889194945%_))
                              (declare (not safe))
                              (_%K194879194907%_ _%rest194913%_)))
                        (if (equal? _%hd194888194943%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194889194945%_))
                                (let* ((_%tl194886194929%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194889194945%_)))
                                       (_%rest194932%_ _%tl194886194929%_))
                                  (declare (not safe))
                                  (_%K194882194921%_ _%rest194932%_))
                                (let ((_%rest194913%_ _%tl194889194945%_))
                                  (declare (not safe))
                                  (_%K194879194907%_ _%rest194913%_)))
                            (let ((_%rest194913%_ _%tl194889194945%_))
                              (declare (not safe))
                              (_%K194879194907%_ _%rest194913%_)))))
                  (let () (declare (not safe)) (_%else194877194901%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?194961%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?194961%_))))
    (define gxc#gsc-cc-options
      (lambda _g196165_
        (let ((_g196164_ (let () (declare (not safe)) (##length _g196165_))))
          (cond ((let () (declare (not safe)) (##fx= _g196164_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g196165_))
                ((let () (declare (not safe)) (##fx= _g196164_ 1))
                 (apply (lambda (_%phi?194963%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?194963%_)))
                        _g196165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g196165_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir194862%_)
        (let ((_%user-staticdir194864%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir194862%_
                       '" -I "
                       _%user-staticdir194864%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194774%_ ((_%rest194776%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194777%_ '()))
          (let* ((_%rest194778194798%_ _%rest194776%_)
                 (_%else194782194806%_ (lambda () _%opts194777%_)))
            (let ((_%K194792194849%_
                   (lambda (_%rest194847%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194774%_ _%rest194847%_ _%opts194777%_))))
                  (_%K194787194827%_
                   (lambda (_%rest194824%_ _%opt194825%_)
                     (let ((__tmp196166
                            (let ((__tmp196167
                                   (let ((__tmp196168
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt194825%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp196168))))
                              (declare (not safe))
                              (##append _%opts194777%_ __tmp196167))))
                       (declare (not safe))
                       (_%lp194774%_ _%rest194824%_ __tmp196166))))
                  (_%K194784194812%_
                   (lambda (_%rest194810%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194774%_ _%rest194810%_ _%opts194777%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194778194798%_))
                  (let ((_%tl194794194854%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194778194798%_)))
                        (_%hd194793194852%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194778194798%_))))
                    (if (equal? _%hd194793194852%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194794194854%_))
                            (let* ((_%tl194796194857%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194794194854%_)))
                                   (_%rest194860%_ _%tl194796194857%_))
                              (declare (not safe))
                              (_%K194792194849%_ _%rest194860%_))
                            (let ((_%rest194818%_ _%tl194794194854%_))
                              (declare (not safe))
                              (_%K194784194812%_ _%rest194818%_)))
                        (if (equal? _%hd194793194852%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194794194854%_))
                                (let ((_%tl194791194837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194794194854%_)))
                                      (_%hd194790194835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194794194854%_))))
                                  (let ((_%opt194840%_ _%hd194790194835%_)
                                        (_%rest194842%_ _%tl194791194837%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K194787194827%_
                                       _%rest194842%_
                                       _%opt194840%_))))
                                (let ((_%rest194818%_ _%tl194794194854%_))
                                  (declare (not safe))
                                  (_%K194784194812%_ _%rest194818%_)))
                            (let ((_%rest194818%_ _%tl194794194854%_))
                              (declare (not safe))
                              (_%K194784194812%_ _%rest194818%_)))))
                  (let () (declare (not safe)) (_%else194782194806%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str194771%_)
        (let ((__tmp196169
               (let () (declare (not safe)) (string-empty? _%str194771%_))))
          (declare (not safe))
          (not __tmp196169))))
    (define gxc#gsc-compile-file
      (lambda (_%path194739%_ _%phi?194740%_)
        (letrec ((_%gsc-link-path194742%_
                  (lambda (_%base-path194763%_)
                    (let _%lp194765%_ ((_%n194767%_ '1))
                      (let ((_%path194769%_
                             (let ((__tmp196170 (number->string _%n194767%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path194763%_
                                '".o"
                                __tmp196170))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194769%_))
                            (let ((__tmp196171
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n194767%_ '1))))
                              (declare (not safe))
                              (_%lp194765%_ __tmp196171))
                            _%path194769%_))))))
          (let* ((_%base-path194744%_ (path-strip-extension _%path194739%_))
                 (_%path-c194746%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194744%_ '".c")))
                 (_%path-o194748%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194744%_ '".o")))
                 (_%link-path194750%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path194742%_ _%base-path194744%_)))
                 (_%link-path-c194752%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194750%_ '".c")))
                 (_%link-path-o194754%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194750%_ '".o")))
                 (_%gsc-link-opts194756%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?194740%_)))
                 (_%gsc-cc-opts194758%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?194740%_)))
                 (_%gcc-ld-opts194760%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp196174 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196172
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c194752%_
                                           (let ((__tmp196173
                                                  (cons _%path194739%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp196173
                                              _%gsc-link-opts194756%_))))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196174 __tmp196172))
            (let ((__tmp196177 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196175
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp196176
                                            (cons _%path-c194746%_
                                                  (cons _%link-path-c194752%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp196176
                                        _%gsc-cc-opts194758%_)))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196177 __tmp196175))
            (let ((__tmp196179 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp196178
                   (cons '"-w"
                         (cons '"-shared"
                               (cons '"-o"
                                     (cons _%link-path194750%_
                                           (cons _%path-o194748%_
                                                 (cons _%link-path-o194754%_
                                                       _%gcc-ld-opts194760%_))))))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp196179
               __tmp196178))
            (let ((__tmp196180
                   (cons _%path-c194746%_
                         (cons _%path-o194748%_
                               (cons _%link-path-c194752%_
                                     (cons _%link-path-o194754%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp196180))))))
    (define gxc#compile-output-file
      (lambda (_%ctx194705%_ _%n194706%_ _%ext194707%_)
        (letrec ((_%module-relative-path194709%_
                  (lambda (_%ctx194737%_)
                    (path-strip-directory
                     (let ((__tmp196181
                            (##structure-ref
                             _%ctx194737%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196181)))))
                 (_%module-source-directory194710%_
                  (lambda (_%ctx194733%_)
                    (path-directory
                     (let ((_%mpath194735%_
                            (##structure-ref
                             _%ctx194733%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath194735%_))
                           _%mpath194735%_
                           (last _%mpath194735%_))))))
                 (_%section-string194711%_
                  (lambda (_%n194727%_)
                    (if (let () (declare (not safe)) (number? _%n194727%_))
                        (let () (number->string _%n194727%_))
                        (if (let () (declare (not safe)) (symbol? _%n194727%_))
                            (let () (symbol->string _%n194727%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n194727%_))
                                (let () _%n194727%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n194727%_)))))))
                 (_%file-name194712%_
                  (lambda (_%path194725%_)
                    (if _%n194706%_
                        (string-append
                         _%path194725%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string194711%_ _%n194706%_))
                         _%ext194707%_)
                        (string-append _%path194725%_ _%ext194707%_))))
                 (_%file-path194713%_
                  (lambda ()
                    (let ((_%$e194719%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e194719%_
                          ((lambda (_%outdir194722%_)
                             (path-expand
                              (let ((__tmp196182
                                     (let ((__tmp196183
                                            (##structure-ref
                                             _%ctx194705%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp196183))))
                                (declare (not safe))
                                (_%file-name194712%_ __tmp196182))
                              _%outdir194722%_))
                           _%$e194719%_)
                          (let ()
                            (path-expand
                             (let ((__tmp196184
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path194709%_
                                       _%ctx194705%_))))
                               (declare (not safe))
                               (_%file-name194712%_ __tmp196184))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory194710%_
                                _%ctx194705%_)))))))))
          (let ((_%path194715%_
                 (let () (declare (not safe)) (_%file-path194713%_))))
            (let ((__tmp196185
                   (lambda ()
                     (let ((__tmp196186 (path-directory _%path194715%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196186)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196185))
            _%path194715%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx194686%_)
        (letrec ((_%file-name194688%_
                  (lambda (_%id194703%_)
                    (let ((__tmp196187
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id194703%_))))
                      (declare (not safe))
                      (##string-append __tmp196187 '".scm"))))
                 (_%file-path194689%_
                  (lambda ()
                    (let* ((_%file194695%_
                            (let ((__tmp196188
                                   (##structure-ref
                                    _%ctx194686%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name194688%_ __tmp196188)))
                           (_%$e194697%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e194697%_
                          ((lambda (_%outdir194700%_)
                             (path-expand
                              _%file194695%_
                              (path-expand '"static" _%outdir194700%_)))
                           _%$e194697%_)
                          (let () (path-expand _%file194695%_ '"static")))))))
          (let ((_%path194691%_
                 (let () (declare (not safe)) (_%file-path194689%_))))
            (let ((__tmp196189
                   (lambda ()
                     (let ((__tmp196190 (path-directory _%path194691%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196190)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196189))
            _%path194691%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx194679%_ _%opts194680%_)
        (let ((_%$e194682%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts194680%_))))
          (if _%$e194682%_
              (values _%$e194682%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx194679%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr194669%_)
        (if (let () (declare (not safe)) (string? _%idstr194669%_))
            (let ()
              (let* ((_%str194672%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr194669%_)))
                     (_%strs194674%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str194672%_ '#\/))))
                (declare (not safe))
                (string-join _%strs194674%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr194669%_))
                (let ((__tmp196191 (symbol->string _%idstr194669%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp196191))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr194669%_))))))
    (define gxc#invoke__%
      (lambda (_%@@keywords194634%_
               _%stdout-redirection194630194635%_
               _%stderr-redirection194631194637%_
               _%program194639%_
               _%args194640%_)
        (let* ((_%stdout-redirection194642%_
                (if (eq? _%stdout-redirection194630194635%_ absent-value)
                    '#f
                    _%stdout-redirection194630194635%_))
               (_%stderr-redirection194644%_
                (if (eq? _%stderr-redirection194631194637%_ absent-value)
                    '#f
                    _%stderr-redirection194631194637%_)))
          (let ((__tmp196192 (cons _%program194639%_ _%args194640%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196192))
          (let* ((_%proc194646%_
                  (open-process
                   (cons 'path:
                         (cons _%program194639%_
                               (cons 'arguments:
                                     (cons _%args194640%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection194642%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection194644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output194651%_
                  (if (or _%stdout-redirection194642%_
                          _%stderr-redirection194644%_)
                      (read-line _%proc194646%_ '#f)
                      '#f))
                 (_%status194654%_ (process-status _%proc194646%_)))
            (let () (declare (not safe)) (##close-port _%proc194646%_))
            (if (zero? _%status194654%_)
                '#!void
                (begin
                  (display _%output194651%_)
                  (let ((__tmp196193 (cons _%program194639%_ _%args194640%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196193
                     _%status194654%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords194659%_ . _%args194660%_)
        (apply gxc#invoke__%
               _%@@keywords194659%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194659%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194659%_
                  'stderr-redirection:
                  absent-value))
               _%args194660%_)))
    (define gxc#invoke
      (lambda _%args194632194666%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args194632194666%_)))
    (define gxc#join!
      (lambda (_%thread194624%_)
        (let ((__tmp196195
               (lambda (_%exn194626%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn194626%_))
                     (let ((__tmp196196
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn194626%_))))
                       (declare (not safe))
                       (raise __tmp196196))
                     (let () (declare (not safe)) (raise _%exn194626%_)))))
              (__tmp196194 (lambda () (thread-join! _%thread194624%_))))
          (declare (not safe))
          (__with-catch __tmp196195 __tmp196194))))))
