(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712246562)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196102 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196102))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196103 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196103))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path196008%_ _%fun196009%_)
        (with-output-to-file
         (cons 'path: (cons _%path196008%_ gxc#scheme-file-settings))
         _%fun196009%_)))
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
      (lambda (_%gerbil-libdir196003%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir196003%_)))
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
      (lambda (_%dir196001%_) (delete-file-or-directory _%dir196001%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195975%_ _%opts195976%_)
        (if (let () (declare (not safe)) (string? _%srcpath195975%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195975%_)))
        (let ((_%outdir195978%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195976%_)))
              (_%invoke-gsc?195979%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195976%_)))
              (_%gsc-options195980%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195976%_)))
              (_%keep-scm?195981%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195976%_)))
              (_%verbosity195982%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195976%_)))
              (_%optimize195983%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195976%_)))
              (_%debug195984%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195976%_)))
              (_%gen-ssxi195985%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195976%_))))
          (if _%outdir195978%_
              (let ((__tmp196104
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195978%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196104))
              '#!void)
          (if _%optimize195983%_
              (let ((__tmp196105
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196105))
              '#!void)
          (let ((__tmp196108
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195975%_))
                   (let ((__tmp196109
                          (let ((__tmp196110
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195975%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196110))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp196109))))
                (__tmp196107
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196106
                 (cons 'compile-module (cons _%srcpath195975%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196108
             gxc#current-compile-output-dir
             _%outdir195978%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195979%_
             gxc#current-compile-gsc-options
             _%gsc-options195980%_
             gxc#current-compile-keep-scm
             _%keep-scm?195981%_
             gxc#current-compile-verbose
             _%verbosity195982%_
             gxc#current-compile-optimize
             _%optimize195983%_
             gxc#current-compile-debug
             _%debug195984%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195985%_
             gxc#current-compile-timestamp
             __tmp196107
             gxc#current-compile-context
             __tmp196106
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195994%_)
        (let ((_%opts195996%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath195994%_ _%opts195996%_))))
    (define gxc#compile-module
      (lambda _g196112_
        (let ((_g196111_ (let () (declare (not safe)) (##length _g196112_))))
          (cond ((let () (declare (not safe)) (##fx= _g196111_ 1))
                 (apply (lambda (_%srcpath195994%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath195994%_)))
                        _g196112_))
                ((let () (declare (not safe)) (##fx= _g196111_ 2))
                 (apply (lambda (_%srcpath195998%_ _%opts195999%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath195998%_
                             _%opts195999%_)))
                        _g196112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196112_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195951%_ _%opts195952%_)
        (if (let () (declare (not safe)) (string? _%srcpath195951%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195951%_)))
        (let ((_%outdir195954%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195952%_)))
              (_%invoke-gsc?195955%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195952%_)))
              (_%gsc-options195956%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195952%_)))
              (_%keep-scm?195957%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195952%_)))
              (_%verbosity195958%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195952%_)))
              (_%debug195959%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts195952%_))))
          (if _%outdir195954%_
              (let ((__tmp196113
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195954%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196113))
              '#!void)
          (let ((__tmp196116
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195951%_))
                   (let ((__tmp196117
                          (let ((__tmp196118
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195951%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196118))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp196117
                      _%opts195952%_))))
                (__tmp196115
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196114 (cons 'compile-exe (cons _%srcpath195951%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196116
             gxc#current-compile-output-dir
             _%outdir195954%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195955%_
             gxc#current-compile-gsc-options
             _%gsc-options195956%_
             gxc#current-compile-keep-scm
             _%keep-scm?195957%_
             gxc#current-compile-verbose
             _%verbosity195958%_
             gxc#current-compile-debug
             _%debug195959%_
             gxc#current-compile-timestamp
             __tmp196115
             gxc#current-compile-context
             __tmp196114
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195967%_)
        (let ((_%opts195969%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath195967%_ _%opts195969%_))))
    (define gxc#compile-exe
      (lambda _g196120_
        (let ((_g196119_ (let () (declare (not safe)) (##length _g196120_))))
          (cond ((let () (declare (not safe)) (##fx= _g196119_ 1))
                 (apply (lambda (_%srcpath195967%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath195967%_)))
                        _g196120_))
                ((let () (declare (not safe)) (##fx= _g196119_ 2))
                 (apply (lambda (_%srcpath195971%_ _%opts195972%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath195971%_
                             _%opts195972%_)))
                        _g196120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196120_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195947%_ _%opts195948%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195948%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx195947%_
               _%opts195948%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx195947%_
               _%opts195948%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx195824%_ _%opts195825%_)
        (letrec ((_%generate-stub195827%_
                  (lambda (_%builtin-modules195943%_)
                    (let ((_%mod-main195945%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195824%_ 'main))))
                      (let ((__tmp196121
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules195943%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196121))
                      (let ((__tmp196122
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195945%_
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
                        (##write __tmp196122))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts195828%_
                  (lambda (_%libgerbil195941%_)
                    (let ((__tmp196123
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil195941%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp196123 read))))
                 (_%replace-extension195829%_
                  (lambda (_%path195938%_ _%ext195939%_)
                    (string-append
                     (path-strip-extension _%path195938%_)
                     _%ext195939%_)))
                 (_%not-exclude-module?195830%_
                  (lambda (_%ctx195934%_)
                    (let ((_%id-str195936%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195934%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp196124
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195936%_))))
                            (declare (not safe))
                            (not __tmp196124))
                          (let ((__tmp196125
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str195936%_))))
                            (declare (not safe))
                            (not __tmp196125))
                          '#f))))
                 (_%not-file-empty?195831%_
                  (lambda (_%path195932%_)
                    (let ((__tmp196126
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path195932%_))))
                      (declare (not safe))
                      (not __tmp196126))))
                 (_%compile-stub195832%_
                  (lambda (_%output-scm195839%_ _%output-bin195840%_)
                    (let* ((_%gerbil-home195842%_
                            (let ((__tmp196127
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196127)))
                           (_%gerbil-libdir195844%_
                            (path-expand '"lib" _%gerbil-home195842%_))
                           (_%gerbil-staticdir195846%_
                            (path-expand '"static" _%gerbil-libdir195844%_))
                           (_%gxlink195848%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir195844%_))
                           (_%tmp195850%_
                            (path-expand
                             (let ((__tmp196128
                                    (let ((__tmp196129
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp196129))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp196128))
                             '"/tmp"))
                           (_%tmp-path195854%_
                            (lambda (_%f195852%_)
                              (path-expand
                               (path-strip-directory _%f195852%_)
                               _%tmp195850%_)))
                           (_%deps195856%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195824%_)))
                           (_%deps195858%_
                            (filter _%not-exclude-module?195830%_
                                    _%deps195856%_))
                           (_%src-deps-scm195860%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps195858%_)))
                           (_%src-deps-scm195862%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?195831%_
                               _%src-deps-scm195860%_)))
                           (_%src-deps-scm195864%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm195862%_)))
                           (_%deps-scm195866%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path195854%_
                                     _%src-deps-scm195864%_)))
                           (_%deps-c195872%_
                            (let ((__tmp196130
                                   (lambda (_%g195867195869%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195829%_
                                        _%g195867195869%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp196130 _%deps-scm195866%_)))
                           (_%deps-o195878%_
                            (let ((__tmp196131
                                   (lambda (_%g195873195875%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195829%_
                                        _%g195873195875%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp196131 _%deps-scm195866%_)))
                           (_%src-bin-scm195880%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195824%_)))
                           (_%src-bin-scm195882%_
                            (path-expand _%src-bin-scm195880%_))
                           (_%bin-scm195884%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path195854%_ _%src-bin-scm195882%_)))
                           (_%bin-c195886%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195829%_
                               _%bin-scm195884%_
                               '".c")))
                           (_%bin-o195888%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195829%_
                               _%bin-scm195884%_
                               '".o")))
                           (_%output-bin195890%_
                            (path-expand _%output-bin195840%_))
                           (_%output-scm195892%_
                            (path-expand _%output-scm195839%_))
                           (_%output-c195894%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195829%_
                               _%output-scm195892%_
                               '".c")))
                           (_%output-o195896%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195829%_
                               _%output-scm195892%_
                               '".o")))
                           (_%output_-c195898%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195829%_
                               _%output-scm195892%_
                               '"_.c")))
                           (_%output_-o195900%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195829%_
                               _%output-scm195892%_
                               '"_.o")))
                           (_%gsc-link-opts195902%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195904%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195906%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir195846%_)))
                           (_%output-ld-opts195908%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a195910%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir195844%_))
                           (_%libgerbil.so195912%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir195844%_))
                           (_%libgerbil.dylib195914%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir195844%_))
                           (_%libgerbil-ld-opts195920%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so195912%_))
                                (let ()
                                  (declare (not safe))
                                  (_%get-libgerbil-ld-opts195828%_
                                   _%libgerbil.so195912%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib195914%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%get-libgerbil-ld-opts195828%_
                                       _%libgerbil.dylib195914%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a195910%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%get-libgerbil-ld-opts195828%_
                                           _%libgerbil.a195910%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _%libgerbil.a195910%_
                                           _%libgerbil.so195912%_
                                           _%libgerbil.dylib195914%_))))))
                           (_%rpath195922%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195844%_)))
                           (_%builtin-modules195926%_
                            (let ((__tmp196133
                                   (lambda (_%mod195924%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod195924%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp196132
                                   (cons _%ctx195824%_ _%deps195858%_)))
                              (declare (not safe))
                              (##map __tmp196133 __tmp196132))))
                      (let ((__tmp196134
                             (lambda ()
                               (let ((__tmp196135
                                      (path-directory _%output-bin195890%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196135)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196134))
                      (let ((__tmp196136
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub195827%_
                                  _%builtin-modules195926%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195892%_
                         __tmp196136))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196137
                                   (lambda ()
                                     (create-directory _%tmp195850%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp196137))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm195864%_
                               _%deps-scm195866%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm195882%_
                               _%bin-scm195884%_))
                            (let ((__tmp196141
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196138
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink195848%_
                                                     (let ((__tmp196139
                                                            (let ((__tmp196140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm195884%_
                                 (cons _%output-scm195892%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp196140 _%deps-scm195866%_))))
               (declare (not safe))
               (__foldr1 cons __tmp196139 _%gsc-link-opts195902%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196141
                               __tmp196138))
                            (let ((__tmp196146
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196142
                                   (cons '"-obj"
                                         (let ((__tmp196143
                                                (let ((__tmp196144
                                                       (let ((__tmp196145
                                                              (cons _%bin-c195886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c195894%_
                                  (cons _%output_-c195898%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp196145 _%deps-c195872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196144
                                                   _%gsc-static-opts195906%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196143
                                            _%gsc-cc-opts195904%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196146
                               __tmp196142))
                            (let ((__tmp196150
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196147
                                   (cons '"-o"
                                         (cons _%output-bin195890%_
                                               (let ((__tmp196148
                                                      (cons _%bin-o195888%_
                                                            (cons _%output-o195896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o195900%_
                                (let ((__tmp196149
                                       (cons _%rpath195922%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir195844%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts195920%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp196149
                                   _%output-ld-opts195908%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp196148
                                                  _%deps-o195878%_))))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196150
                               __tmp196147))
                            (let ((__tmp196151
                                   (cons _%output-c195894%_
                                         (cons _%output_-c195898%_
                                               (cons _%output-o195896%_
                                                     (cons _%output_-o195900%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp196151))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp195850%_)))
                          '#!void)))))
          (let* ((_%output-bin195834%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195824%_
                     _%opts195825%_)))
                 (_%output-scm195836%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195834%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195832%_
               _%output-scm195836%_
               _%output-bin195834%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195836%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx195649%_ _%opts195650%_)
        (letrec ((_%reset-declare195652%_
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
                 (_%generate-stub195653%_
                  (lambda (_%deps195815%_)
                    (let ((_%mod-main195817%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195649%_ 'main)))
                          (_%reset-decl195818%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare195652%_)))
                          (_%user-decl195819%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare195654%_))))
                      (for-each
                       (lambda (_%dep195821%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl195818%_))
                         (newline)
                         (if _%user-decl195819%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl195819%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196152
                                (cons 'include (cons _%dep195821%_ '()))))
                           (declare (not safe))
                           (##write __tmp196152))
                         (newline))
                       _%deps195815%_)
                      (let ((__tmp196153
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main195817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196153))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare195654%_
                  (lambda ()
                    (let* ((_%gsc-opts195720%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts195650%_)))
                           (_%gsc-prelude195722%_
                            (if _%gsc-opts195720%_
                                (member '"-prelude" _%gsc-opts195720%_)
                                '#f))
                           (_%gsc-prelude195724%_
                            (if _%gsc-prelude195722%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude195722%_)))
                                '#f)))
                      (let _%lp195727%_ ((_%rest195729%_
                                          (cons _%gsc-prelude195724%_ '()))
                                         (_%user-decls195730%_ '()))
                        (let* ((_%rest195731195739%_ _%rest195729%_)
                               (_%else195733195747%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls195730%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls195730%_)))))
                               (_%K195735195803%_
                                (lambda (_%rest195750%_ _%expr195751%_)
                                  (let* ((_%expr195752195764%_ _%expr195751%_)
                                         (_%else195755195772%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp195727%_
                                               _%rest195750%_
                                               _%user-decls195730%_)))))
                                    (let ((_%K195760195793%_
                                           (lambda (_%decls195791%_)
                                             (let ((__tmp196154
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls195730%_
                                                       _%decls195791%_))))
                                               (declare (not safe))
                                               (_%lp195727%_
                                                _%rest195750%_
                                                __tmp196154))))
                                          (_%K195757195778%_
                                           (lambda (_%exprs195776%_)
                                             (let ((__tmp196155
                                                    (append _%exprs195776%_
                                                            _%rest195750%_)))
                                               (declare (not safe))
                                               (_%lp195727%_
                                                __tmp196155
                                                _%user-decls195730%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr195752195764%_))
                                          (let ((_%tl195762195798%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr195752195764%_)))
                                                (_%hd195761195796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr195752195764%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd195761195796%_
                                                         'declare))
                                                (let ((_%decls195801%_
                                                       _%tl195762195798%_))
                                                  (declare (not safe))
                                                  (_%K195760195793%_
                                                   _%decls195801%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd195761195796%_
                                                             'begin))
                                                    (let ((_%exprs195786%_
                                                           _%tl195762195798%_))
                                                      (declare (not safe))
                                                      (_%K195757195778%_
                                                       _%exprs195786%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else195755195772%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195755195772%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest195731195739%_))
                              (let ((_%hd195736195806%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195731195739%_)))
                                    (_%tl195737195808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195731195739%_))))
                                (let* ((_%expr195811%_ _%hd195736195806%_)
                                       (_%rest195813%_ _%tl195737195808%_))
                                  (declare (not safe))
                                  (_%K195735195803%_
                                   _%rest195813%_
                                   _%expr195811%_)))
                              (let ()
                                (declare (not safe))
                                (_%else195733195747%_))))))))
                 (_%compile-stub195655%_
                  (lambda (_%output-scm195662%_ _%output-bin195663%_)
                    (let* ((_%gerbil-home195665%_
                            (let ((__tmp196156
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196156)))
                           (_%gerbil-libdir195667%_
                            (path-expand '"lib" _%gerbil-home195665%_))
                           (_%runtime195669%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp195671%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home195665%_))
                           (_%include-gambit-sharp195673%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp195671%_
                               '"\")")))
                           (_%bin-scm195675%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195649%_)))
                           (_%deps195677%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195649%_)))
                           (_%deps195679%_
                            (map gxc#find-static-module-file _%deps195677%_))
                           (_%deps195684%_
                            (let ((__tmp196157
                                   (lambda (_%$obj195681%_)
                                     (let ((__tmp196158
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj195681%_))))
                                       (declare (not safe))
                                       (not __tmp196158)))))
                              (declare (not safe))
                              (##filter __tmp196157 _%deps195679%_)))
                           (_%deps195688%_
                            (let ((__tmp196159
                                   (lambda (_%f195686%_)
                                     (let ((__tmp196160
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f195686%_
                                               _%runtime195669%_))))
                                       (declare (not safe))
                                       (not __tmp196160)))))
                              (declare (not safe))
                              (##filter __tmp196159 _%deps195684%_)))
                           (_%output-base195690%_
                            (let ((__tmp196161
                                   (path-strip-extension
                                    _%output-scm195662%_)))
                              (declare (not safe))
                              (##string-append __tmp196161)))
                           (_%output-c195692%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195690%_ '".c")))
                           (_%output-o195694%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195690%_ '".o")))
                           (_%output-c_195696%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195690%_ '"_.c")))
                           (_%output-o_195698%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195690%_ '"_.o")))
                           (_%gsc-link-opts195700%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195702%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195704%_
                            (let ((__tmp196162
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir195667%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp196162)))
                           (_%output-ld-opts195706%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros195708%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp195673%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp195673%_
                                            '()))))
                           (_%gsc-link-opts195710%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts195700%_
                               _%gsc-gx-macros195708%_)))
                           (_%rpath195712%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195667%_)))
                           (_%default-ld-options195714%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196163
                             (lambda ()
                               (let ((__tmp196164
                                      (path-directory _%output-bin195663%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196164)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196163))
                      (let ((__tmp196165
                             (lambda ()
                               (let ((__tmp196166
                                      (let ((__tmp196167
                                             (let ((__tmp196168
                                                    (cons _%bin-scm195675%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp196168
                                                _%deps195688%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196167
                                         _%runtime195669%_))))
                                 (declare (not safe))
                                 (_%generate-stub195653%_ __tmp196166)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195662%_
                         __tmp196165))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196171
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196169
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_195696%_
                                                     (let ((__tmp196170
                                                            (cons _%output-scm195662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp196170 _%gsc-link-opts195710%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196171
                               __tmp196169))
                            (let ((__tmp196175
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196172
                                   (cons '"-obj"
                                         (let ((__tmp196173
                                                (let ((__tmp196174
                                                       (cons _%output-c195692%_
                                                             (cons _%output-c_195696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196174
                                                   _%gsc-static-opts195704%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196173
                                            _%gsc-cc-opts195702%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196175
                               __tmp196172))
                            (let ((__tmp196178
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196176
                                   (cons '"-o"
                                         (cons _%output-bin195663%_
                                               (cons _%output-o195694%_
                                                     (cons _%output-o_195698%_
                                                           (let ((__tmp196177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath195712%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir195667%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options195714%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp196177
                      _%output-ld-opts195706%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196178
                               __tmp196176)))
                          '#!void)))))
          (let* ((_%output-bin195657%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195649%_
                     _%opts195650%_)))
                 (_%output-scm195659%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195657%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195655%_
               _%output-scm195659%_
               _%output-bin195657%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195659%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx195598%_ _%id195599%_)
        (let ((_%$e195645%_
               (let ((__tmp196180
                      (lambda (_%e195600195602%_)
                        (let* ((_%g195604195614%_ _%e195600195602%_)
                               (_%else195606195622%_ (lambda () '#f))
                               (_%K195608195626%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g195604195614%_
                                 'gx#module-export::t))
                              (let* ((_%e195609195629%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195604195614%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e195610195632%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195604195614%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e195611195635%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195604195614%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e195611195635%_ '0))
                                    (let ((_%e195612195638%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g195604195614%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g195640195642%_)
                                             (eq? _%g195640195642%_
                                                  _%id195599%_))
                                           _%e195612195638%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K195608195626%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195606195622%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else195606195622%_))))
                              (let ()
                                (declare (not safe))
                                (_%else195606195622%_))))))
                     (__tmp196179
                      (##structure-ref
                       _%ctx195598%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196180 __tmp196179))))
          (if _%$e195645%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e195645%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx195589%_ _%id195590%_)
        (let ((_%$e195592%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx195589%_ _%id195590%_))))
          (if _%$e195592%_
              ((lambda (_%bind195595%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind195595%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id195590%_)))
                 (##structure-ref _%bind195595%_ '1 gx#binding::t '#f))
               _%$e195592%_)
              (let ((__tmp196181
                     (##structure-ref
                      _%ctx195589%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196181
                 _%id195590%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195455%_)
        (letrec* ((_%ht195457%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195458%_
                   (lambda (_%in195534%_ _%phi195535%_)
                     (let ((_%iphi195537%_
                            (fx+ _%phi195535%_
                                 (##direct-structure-ref
                                  _%in195534%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports195538%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in195534%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp195540%_ ((_%rest195542%_ _%imports195538%_)
                                          (_%r195543%_ '()))
                         (let* ((_%rest195544195552%_ _%rest195542%_)
                                (_%else195546195560%_ (lambda () _%r195543%_))
                                (_%K195548195577%_
                                 (lambda (_%rest195563%_ _%in195564%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in195564%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi195537%_))
                                             (let ((__tmp196182
                                                    (cons _%in195564%_
                                                          _%r195543%_)))
                                               (declare (not safe))
                                               (_%lp195540%_
                                                _%rest195563%_
                                                __tmp196182))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp195540%_
                                                _%rest195563%_
                                                _%r195543%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in195564%_
                                              'gx#module-import::t))
                                           (let ((_%iphi195568%_
                                                  (fx+ _%phi195535%_
                                                       (##direct-structure-ref
                                                        _%in195564%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi195568%_))
                                                 (let ((__tmp196183
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in195564%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r195543%_)))
                                                   (declare (not safe))
                                                   (_%lp195540%_
                                                    _%rest195563%_
                                                    __tmp196183))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp195540%_
                                                    _%rest195563%_
                                                    _%r195543%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in195564%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi195571%_
                                                      (fx+ _%iphi195537%_
                                                           (##direct-structure-ref
                                                            _%in195564%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi195571%_))
                                                     (let ((__tmp196184
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in195564%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r195543%_)))
               (declare (not safe))
               (_%lp195540%_ _%rest195563%_ __tmp196184))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi195571%_))
                                                         (let ((__tmp196185
                                                                (let ((__tmp196186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195458%_
                                  _%in195564%_
                                  _%iphi195537%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r195543%_ __tmp196186))))
                   (declare (not safe))
                   (_%lp195540%_ _%rest195563%_ __tmp196185))
                 (let ()
                   (declare (not safe))
                   (_%lp195540%_ _%rest195563%_ _%r195543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp195540%_
                                                  _%rest195563%_
                                                  _%r195543%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest195544195552%_))
                               (let ((_%hd195549195580%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest195544195552%_)))
                                     (_%tl195550195582%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest195544195552%_))))
                                 (let* ((_%in195585%_ _%hd195549195580%_)
                                        (_%rest195587%_ _%tl195550195582%_))
                                   (declare (not safe))
                                   (_%K195548195577%_
                                    _%rest195587%_
                                    _%in195585%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else195546195560%_))))))))
                  (_%find-deps195459%_
                   (lambda (_%rest195467%_ _%deps195468%_)
                     (let* ((_%rest195469195477%_ _%rest195467%_)
                            (_%else195471195485%_ (lambda () _%deps195468%_))
                            (_%K195473195522%_
                             (lambda (_%rest195488%_ _%hd195489%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195489%_
                                      'gx#module-context::t))
                                   (let ((_%id195492%_
                                          (##structure-ref
                                           _%hd195489%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195493%_
                                          (##structure-ref
                                           _%hd195489%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195457%_
                                            _%id195492%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps195459%_
                                            _%rest195488%_
                                            _%deps195468%_))
                                         (let ((_%$e195496%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195489%_))))
                                           (if _%$e195496%_
                                               ((lambda (_%pre195499%_)
                                                  (let ((_%xdeps195501%_
                                                         (let ((__tmp196187
                                                                (cons _%pre195499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports195493%_)))
                   (declare (not safe))
                   (_%find-deps195459%_ __tmp196187 _%deps195468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195457%_
                                                       _%id195492%_
                                                       _%hd195489%_))
                                                    (let ((__tmp196188
                                                           (cons _%hd195489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps195501%_)))
              (declare (not safe))
              (_%find-deps195459%_ _%rest195488%_ __tmp196188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e195496%_)
                                               (let ((_%xdeps195504%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps195459%_
                                                         _%imports195493%_
                                                         _%deps195468%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195457%_
                                                    _%id195492%_
                                                    _%hd195489%_))
                                                 (let ((__tmp196189
                                                        (cons _%hd195489%_
                                                              _%xdeps195504%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195459%_
                                                    _%rest195488%_
                                                    __tmp196189)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195489%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195507%_
                                              (##structure-ref
                                               _%hd195489%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195457%_
                                                _%id195507%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps195459%_
                                                _%rest195488%_
                                                _%deps195468%_))
                                             (let ((_%xdeps195511%_
                                                    (let ((__tmp196190
                                                           (##structure-ref
                                                            _%hd195489%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps195459%_
                                                       __tmp196190
                                                       _%deps195468%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195457%_
                                                      _%id195507%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps195459%_
                                                      _%rest195488%_
                                                      _%xdeps195511%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195457%_
                                                        _%id195507%_
                                                        _%hd195489%_))
                                                     (let ((__tmp196191
                                                            (cons _%hd195489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps195511%_)))
               (declare (not safe))
               (_%find-deps195459%_ _%rest195488%_ __tmp196191)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195489%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd195489%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp196192
                                                        (cons (##direct-structure-ref
                                                               _%hd195489%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest195488%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195459%_
                                                    __tmp196192
                                                    _%deps195468%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps195459%_
                                                    _%rest195488%_
                                                    _%deps195468%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195489%_
                                                  'gx#module-export::t))
                                               (let ((__tmp196193
                                                      (cons (##direct-structure-ref
                                                             _%hd195489%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest195488%_)))
                                                 (declare (not safe))
                                                 (_%find-deps195459%_
                                                  __tmp196193
                                                  _%deps195468%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195489%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd195489%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp196194
                        (cons (##direct-structure-ref
                               _%hd195489%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest195488%_)))
                   (declare (not safe))
                   (_%find-deps195459%_ __tmp196194 _%deps195468%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd195489%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps195518%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195458%_
                                  _%hd195489%_
                                  '0)))
                              (__tmp196195
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest195488%_
                                  _%xdeps195518%_))))
                         (declare (not safe))
                         (_%find-deps195459%_ __tmp196195 _%deps195468%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps195459%_ _%rest195488%_ _%deps195468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195489%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195469195477%_))
                           (let ((_%hd195474195525%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195469195477%_)))
                                 (_%tl195475195527%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195469195477%_))))
                             (let* ((_%hd195530%_ _%hd195474195525%_)
                                    (_%rest195532%_ _%tl195475195527%_))
                               (declare (not safe))
                               (_%K195473195522%_
                                _%rest195532%_
                                _%hd195530%_)))
                           (let ()
                             (declare (not safe))
                             (_%else195471195485%_)))))))
          (let ((__tmp196196
                 (filter gx#expander-context-id
                         (let ((__tmp196197
                                (let ((_%$e195461%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx195455%_))))
                                  (if _%$e195461%_
                                      ((lambda (_%pre195464%_)
                                         (cons _%pre195464%_
                                               (##structure-ref
                                                _%ctx195455%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e195461%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx195455%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps195459%_ __tmp196197 '())))))
            (declare (not safe))
            (##reverse __tmp196196)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195385%_)
        (let* ((_%context-id195387%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195385%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195385%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195385%_)))
               (_%scm195389%_
                (let ((__tmp196198
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id195387%_))))
                  (declare (not safe))
                  (##string-append __tmp196198 '".scm")))
               (_%dirs195391%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195397%_
                (let ((_%user-libpath195393%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195393%_
                      (let ((_%user-libpath195395%_
                             (path-expand '"lib" _%user-libpath195393%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195395%_ _%dirs195391%_))
                            _%dirs195391%_
                            (cons _%user-libpath195395%_ _%dirs195391%_)))
                      _%dirs195391%_)))
               (_%dirs195407%_
                (let ((_%$e195399%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195399%_
                      ((lambda (_%g195401195403%_)
                         (cons _%g195401195403%_ _%dirs195397%_))
                       _%$e195399%_)
                      (let () _%dirs195397%_))))
               (_%dirs195413%_
                (map (lambda (_%g195408195410%_)
                       (path-expand '"static" _%g195408195410%_))
                     _%dirs195407%_)))
          (let _%lp195416%_ ((_%rest195418%_ _%dirs195413%_))
            (let* ((_%rest195419195427%_ _%rest195418%_)
                   (_%else195421195435%_
                    (lambda ()
                      (let ((__tmp196199
                             (##structure-ref
                              _%ctx195385%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196199
                         _%scm195389%_))))
                   (_%K195423195443%_
                    (lambda (_%rest195438%_ _%dir195439%_)
                      (let ((_%path195441%_
                             (path-expand _%scm195389%_ _%dir195439%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195441%_))
                            _%path195441%_
                            (let ()
                              (declare (not safe))
                              (_%lp195416%_ _%rest195438%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest195419195427%_))
                  (let ((_%hd195424195446%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195419195427%_)))
                        (_%tl195425195448%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195419195427%_))))
                    (let* ((_%dir195451%_ _%hd195424195446%_)
                           (_%rest195453%_ _%tl195425195448%_))
                      (declare (not safe))
                      (_%K195423195443%_ _%rest195453%_ _%dir195451%_)))
                  (let () (declare (not safe)) (_%else195421195435%_))))))))
    (define gxc#file-empty?
      (lambda (_%path195383%_)
        (zero? (let ((__tmp196200 (file-info _%path195383%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196200)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195372%_)
        (let ((__tmp196204
               (lambda ()
                 (let ((__tmp196205
                        (##structure-ref
                         _%ctx195372%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196205))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196206
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195372%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196206))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx195372%_))
                 (if (let ((__tmp196207
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx195372%_))))
                       (declare (not safe))
                       (null? __tmp196207))
                     (let* ((_%thr1195377%_
                             (let ((__tmp196208
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx195372%_)))))
                               (declare (not safe))
                               (__spawn __tmp196208)))
                            (_%thr2195380%_
                             (let ((__tmp196209
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx195372%_)))))
                               (declare (not safe))
                               (__spawn __tmp196209))))
                       (let () (declare (not safe)) (gxc#join! _%thr1195377%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2195380%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx195372%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx195372%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx195372%_))
                     '#!void)))
              (__tmp196203
               (let ((__obj196100
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196100)
                 __obj196100))
              (__tmp196202 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196201
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
           __tmp196204
           gx#current-expander-context
           _%ctx195372%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196203
           gxc#current-compile-runtime-sections
           __tmp196202
           gxc#current-compile-runtime-names
           __tmp196201))))
    (define gxc#collect-bindings
      (lambda (_%ctx195370%_)
        (let ((__tmp196210
               (##structure-ref _%ctx195370%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196210))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195314%_)
        (letrec ((_%compile1195316%_
                  (lambda (_%ctx195357%_)
                    (let* ((_%code195359%_
                            (##structure-ref
                             _%ctx195357%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt195363%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code195359%_))
                                (let ((_%idstr195361%_
                                       (let ((__tmp196211
                                              (##structure-ref
                                               _%ctx195357%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp196211))))
                                  (declare (not safe))
                                  (##string-append _%idstr195361%_ '"~0"))
                                '#f)))
                      (if _%rt195363%_
                          (let ()
                            (let ((__tmp196212
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp196212
                               _%ctx195357%_
                               _%rt195363%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code195318%_
                               _%ctx195357%_
                               _%code195359%_)))
                          (let ((_%path195368%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx195357%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path195368%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code195319%_
                         _%ctx195357%_
                         _%code195359%_
                         _%rt195363%_)))))
                 (_%context-timestamp195317%_
                  (lambda (_%ctx195355%_)
                    (let ((__tmp196213
                           (let ((__tmp196214
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195355%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196214 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196213))))
                 (_%generate-runtime-code195318%_
                  (lambda (_%ctx195337%_ _%code195338%_)
                    (let* ((_%lifts195340%_ (box '()))
                           (_%runtime-code195343%_
                            (let ((__tmp196217
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code195338%_))))
                                  (__tmp196216
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp196215
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196217
                               gx#current-expander-context
                               _%ctx195337%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts195340%_
                               gxc#current-compile-marks
                               __tmp196216
                               gxc#current-compile-identifiers
                               __tmp196215)))
                           (_%runtime-code195345%_
                            (if (let ((__tmp196218 (unbox _%lifts195340%_)))
                                  (declare (not safe))
                                  (null? __tmp196218))
                                _%runtime-code195343%_
                                (cons 'begin
                                      (let ((__tmp196220
                                             (cons _%runtime-code195343%_ '()))
                                            (__tmp196219
                                             (reverse (unbox _%lifts195340%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196220
                                         __tmp196219)))))
                           (_%runtime-code195347%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp195317%_
                                                       _%ctx195337%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code195345%_ '()))))
                           (_%scm0195349%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195337%_
                               '0
                               '".scm")))
                           (_%scms195352%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx195337%_))))
                      (let ((__tmp196221
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0195349%_
                                  _%runtime-code195347%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196221
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms195352%_)
                          (delete-file _%scms195352%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0195349%_
                         '" => "
                         _%scms195352%_))
                      (copy-file _%scm0195349%_ _%scms195352%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0195349%_)))))
                 (_%generate-loader-code195319%_
                  (lambda (_%ctx195326%_ _%code195327%_ _%rt195328%_)
                    (let* ((_%loader-code195331%_
                            (let ((__tmp196222
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195327%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196222
                               gx#current-expander-context
                               _%ctx195326%_)))
                           (_%loader-code195333%_
                            (if _%rt195328%_
                                (cons 'begin
                                      (cons _%loader-code195331%_
                                            (cons (cons 'load-module
                                                        (cons _%rt195328%_
                                                              '()))
                                                  '())))
                                _%loader-code195331%_))
                           (__tmp196223
                            (lambda ()
                              (let ((__tmp196224
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx195326%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp196224
                                 _%loader-code195333%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196223
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules195321%_
                  (cons _%ctx195314%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx195314%_))))
                 (__tmp196225
                  (lambda (_%ctx195323%_)
                    (let ((__tmp196226
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1195316%_ _%ctx195323%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196226
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196225 _%all-modules195321%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195209%_)
        (letrec ((_%compile-ssi195211%_
                  (lambda (_%code195282%_)
                    (let* ((_%path195284%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195209%_
                               '#f
                               '".ssi")))
                           (_%prelude195296%_
                            (let* ((_%super195286%_
                                    (##structure-ref
                                     _%ctx195209%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195288%_
                                    (##structure-ref
                                     _%super195286%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195288%_
                                  ((lambda (_%g195290195292%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195290195292%_)))
                                   _%$e195288%_)
                                  (let () ':<root>))))
                           (_%ns195298%_
                            (##structure-ref
                             _%ctx195209%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195300%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195209%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195308%_
                            (let ((_%$e195302%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195300%_ '#\/))))
                              (if _%$e195302%_
                                  ((lambda (_%x195305%_)
                                     (let ((__tmp196227
                                            (substring
                                             _%idstr195300%_
                                             '0
                                             _%x195305%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196227)))
                                   _%$e195302%_)
                                  (let () '#f))))
                           (_%rt195310%_
                            (let ((__tmp196228
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196228 _%ctx195209%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195284%_))
                      (let ((__tmp196229
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude195296%_))
                               (if _%pkg195308%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg195308%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns195298%_))
                               (newline)
                               (pretty-print _%code195282%_)
                               (if _%rt195310%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt195310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path195284%_
                         __tmp196229)))))
                 (_%compile-phi195212%_
                  (lambda (_%part195222%_)
                    (let* ((_%part195223195236%_ _%part195222%_)
                           (_%E195225195240%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195223195236%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195226195251%_
                            (lambda (_%code195243%_
                                     _%n195244%_
                                     _%phi195245%_
                                     _%phi-ctx195246%_)
                              (let* ((_%code195249%_
                                      (let ((__tmp196230
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code195243%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp196230
                                         gx#current-expander-context
                                         _%phi-ctx195246%_
                                         gx#current-expander-phi
                                         _%phi195245%_)))
                                     (__tmp196231
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx195209%_
                                         _%n195244%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp196231
                                 _%code195249%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195223195236%_))
                          (let ((_%hd195227195254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195223195236%_)))
                                (_%tl195228195256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195223195236%_))))
                            (let ((_%phi-ctx195259%_ _%hd195227195254%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195228195256%_))
                                  (let ((_%hd195229195261%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195228195256%_)))
                                        (_%tl195230195263%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195228195256%_))))
                                    (let ((_%phi195266%_ _%hd195229195261%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195230195263%_))
                                          (let ((_%hd195231195268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195230195263%_)))
                                                (_%tl195232195270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195230195263%_))))
                                            (let ((_%n195273%_
                                                   _%hd195231195268%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195232195270%_))
                                                  (let ((_%hd195233195275%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195232195270%_)))
                                                        (_%tl195234195277%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195232195270%_))))
                                                    (let ((_%code195280%_
                                                           _%hd195233195275%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195234195277%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K195226195251%_
                                                             _%code195280%_
                                                             _%n195273%_
                                                             _%phi195266%_
                                                             _%phi-ctx195259%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E195225195240%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E195225195240%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E195225195240%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E195225195240%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E195225195240%_)))))))
          (let ((_g196232_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx195209%_))))
            (begin
              (let ((_g196233_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196232_)
                           (##vector-length _g196232_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196233_ 2)))
                    (error "Context expects 2 values" _g196233_)))
              (let ((_%ssi-code195214%_
                     (let () (declare (not safe)) (##vector-ref _g196232_ 0)))
                    (_%phi-code195215%_
                     (let () (declare (not safe)) (##vector-ref _g196232_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi195211%_ _%ssi-code195214%_))
                  (let ((_%threads195220%_
                         (map (lambda (_%code195217%_)
                                (let ((__tmp196234
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi195212%_
                                            _%code195217%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp196234)))
                              _%phi-code195215%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads195220%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195191%_)
        (let* ((_%path195193%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx195191%_ '#f '".ssxi.ss")))
               (_%code195195%_
                (let ((__tmp196235
                       (##structure-ref
                        _%ctx195191%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196235)))
               (_%idstr195197%_
                (symbol->string
                 (##structure-ref
                  _%ctx195191%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195205%_
                (let ((_%$e195199%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195197%_ '#\/))))
                  (if _%$e195199%_
                      ((lambda (_%x195202%_)
                         (let ((__tmp196236
                                (substring _%idstr195197%_ '0 _%x195202%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196236)))
                       _%$e195199%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195193%_))
          (let ((__tmp196237
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg195205%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg195205%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code195195%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path195193%_ __tmp196237)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195184%_)
        (let* ((_%state195186%_
                (let ((__obj196101
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196101 _%ctx195184%_)
                  __obj196101))
               (_%ssi-code195188%_
                (let ((__tmp196238
                       (##structure-ref
                        _%ctx195184%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195186%_
                   __tmp196238))))
          (values _%ssi-code195188%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195186%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195177%_)
        (let ((_%lifts195179%_ (box '())))
          (let ((__tmp196241
                 (lambda ()
                   (let ((_%code195182%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195177%_))))
                     (if (let ((__tmp196242 (unbox _%lifts195179%_)))
                           (declare (not safe))
                           (null? __tmp196242))
                         _%code195182%_
                         (cons 'begin
                               (let ((__tmp196244 (cons _%code195182%_ '()))
                                     (__tmp196243
                                      (reverse (unbox _%lifts195179%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196244 __tmp196243)))))))
                (__tmp196240
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196239
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196241
             gxc#current-compile-lift
             _%lifts195179%_
             gxc#current-compile-marks
             __tmp196240
             gxc#current-compile-identifiers
             __tmp196239)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195173%_)
        (let ((_%modules195175%_ (box '())))
          (let ((__tmp196245
                 (##structure-ref _%ctx195173%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195175%_ __tmp196245))
          (reverse (unbox _%modules195175%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195156%_ _%code195157%_ _%phi?195158%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195156%_))
        (let ((__tmp196246
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp196247
                                                 (if _%phi?195158%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp196247)))))))
                 (pretty-print _%code195157%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path195156%_ __tmp196246))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path195156%_ _%phi?195158%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path195156%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path195164%_ _%code195165%_)
        (let ((_%phi?195167%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path195164%_
           _%code195165%_
           _%phi?195167%_))))
    (define gxc#compile-scm-file
      (lambda _g196249_
        (let ((_g196248_ (let () (declare (not safe)) (##length _g196249_))))
          (cond ((let () (declare (not safe)) (##fx= _g196248_ 2))
                 (apply (lambda (_%path195164%_ _%code195165%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path195164%_
                             _%code195165%_)))
                        _g196249_))
                ((let () (declare (not safe)) (##fx= _g196248_ 3))
                 (apply (lambda (_%path195169%_ _%code195170%_ _%phi?195171%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path195169%_
                             _%code195170%_
                             _%phi?195171%_)))
                        _g196249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196249_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?195057%_)
        (let _%lp195059%_ ((_%rest195061%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195062%_ '()))
          (let* ((_%rest195063195083%_ _%rest195061%_)
                 (_%else195067195091%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?195057%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts195062%_)))
                        (reverse _%opts195062%_)))))
            (let ((_%K195077195134%_
                   (lambda (_%rest195132%_)
                     (let ()
                       (declare (not safe))
                       (_%lp195059%_ _%rest195132%_ _%opts195062%_))))
                  (_%K195072195116%_
                   (lambda (_%rest195114%_)
                     (let ()
                       (declare (not safe))
                       (_%lp195059%_ _%rest195114%_ _%opts195062%_))))
                  (_%K195069195098%_
                   (lambda (_%rest195095%_ _%opt195096%_)
                     (let ((__tmp196250 (cons _%opt195096%_ _%opts195062%_)))
                       (declare (not safe))
                       (_%lp195059%_ _%rest195095%_ __tmp196250)))))
              (if (let () (declare (not safe)) (##pair? _%rest195063195083%_))
                  (let ((_%tl195079195139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195063195083%_)))
                        (_%hd195078195137%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195063195083%_))))
                    (if (equal? _%hd195078195137%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195079195139%_))
                            (let* ((_%tl195081195142%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195079195139%_)))
                                   (_%rest195145%_ _%tl195081195142%_))
                              (declare (not safe))
                              (_%K195077195134%_ _%rest195145%_))
                            (let ((_%opt195106%_ _%hd195078195137%_)
                                  (_%rest195108%_ _%tl195079195139%_))
                              (let ()
                                (declare (not safe))
                                (_%K195069195098%_
                                 _%rest195108%_
                                 _%opt195106%_))))
                        (if (equal? _%hd195078195137%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195079195139%_))
                                (let* ((_%tl195076195124%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl195079195139%_)))
                                       (_%rest195127%_ _%tl195076195124%_))
                                  (declare (not safe))
                                  (_%K195072195116%_ _%rest195127%_))
                                (let ((_%opt195106%_ _%hd195078195137%_)
                                      (_%rest195108%_ _%tl195079195139%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K195069195098%_
                                     _%rest195108%_
                                     _%opt195106%_))))
                            (let ((_%opt195106%_ _%hd195078195137%_)
                                  (_%rest195108%_ _%tl195079195139%_))
                              (let ()
                                (declare (not safe))
                                (_%K195069195098%_
                                 _%rest195108%_
                                 _%opt195106%_))))))
                  (let () (declare (not safe)) (_%else195067195091%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195151%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?195151%_))))
    (define gxc#gsc-link-options
      (lambda _g196252_
        (let ((_g196251_ (let () (declare (not safe)) (##length _g196252_))))
          (cond ((let () (declare (not safe)) (##fx= _g196251_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g196252_))
                ((let () (declare (not safe)) (##fx= _g196251_ 1))
                 (apply (lambda (_%phi?195153%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?195153%_)))
                        _g196252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196252_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?194958%_)
        (let _%lp194960%_ ((_%rest194962%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194963%_ '()))
          (let* ((_%rest194964194984%_ _%rest194962%_)
                 (_%else194968194992%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194958%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts194963%_)))
                        (reverse _%opts194963%_)))))
            (let ((_%K194978195031%_
                   (lambda (_%rest195028%_ _%opt195029%_)
                     (let ((__tmp196253
                            (let ((__tmp196254
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts194963%_))))
                              (declare (not safe))
                              (cons _%opt195029%_ __tmp196254))))
                       (declare (not safe))
                       (_%lp194960%_ _%rest195028%_ __tmp196253))))
                  (_%K194973195012%_
                   (lambda (_%rest195010%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194960%_ _%rest195010%_ _%opts194963%_))))
                  (_%K194970194998%_
                   (lambda (_%rest194996%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194960%_ _%rest194996%_ _%opts194963%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194964194984%_))
                  (let ((_%tl194980195036%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194964194984%_)))
                        (_%hd194979195034%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194964194984%_))))
                    (if (equal? _%hd194979195034%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194980195036%_))
                            (let ((_%tl194982195041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl194980195036%_)))
                                  (_%hd194981195039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl194980195036%_))))
                              (let ((_%opt195044%_ _%hd194981195039%_)
                                    (_%rest195046%_ _%tl194982195041%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K194978195031%_
                                   _%rest195046%_
                                   _%opt195044%_))))
                            (let ((_%rest195004%_ _%tl194980195036%_))
                              (declare (not safe))
                              (_%K194970194998%_ _%rest195004%_)))
                        (if (equal? _%hd194979195034%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194980195036%_))
                                (let* ((_%tl194977195020%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194980195036%_)))
                                       (_%rest195023%_ _%tl194977195020%_))
                                  (declare (not safe))
                                  (_%K194973195012%_ _%rest195023%_))
                                (let ((_%rest195004%_ _%tl194980195036%_))
                                  (declare (not safe))
                                  (_%K194970194998%_ _%rest195004%_)))
                            (let ((_%rest195004%_ _%tl194980195036%_))
                              (declare (not safe))
                              (_%K194970194998%_ _%rest195004%_)))))
                  (let () (declare (not safe)) (_%else194968194992%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?195052%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?195052%_))))
    (define gxc#gsc-cc-options
      (lambda _g196256_
        (let ((_g196255_ (let () (declare (not safe)) (##length _g196256_))))
          (cond ((let () (declare (not safe)) (##fx= _g196255_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g196256_))
                ((let () (declare (not safe)) (##fx= _g196255_ 1))
                 (apply (lambda (_%phi?195054%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?195054%_)))
                        _g196256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g196256_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir194953%_)
        (let ((_%user-staticdir194955%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir194953%_
                       '" -I "
                       _%user-staticdir194955%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194865%_ ((_%rest194867%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194868%_ '()))
          (let* ((_%rest194869194889%_ _%rest194867%_)
                 (_%else194873194897%_ (lambda () _%opts194868%_)))
            (let ((_%K194883194940%_
                   (lambda (_%rest194938%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194865%_ _%rest194938%_ _%opts194868%_))))
                  (_%K194878194918%_
                   (lambda (_%rest194915%_ _%opt194916%_)
                     (let ((__tmp196257
                            (let ((__tmp196258
                                   (let ((__tmp196259
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt194916%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp196259))))
                              (declare (not safe))
                              (##append _%opts194868%_ __tmp196258))))
                       (declare (not safe))
                       (_%lp194865%_ _%rest194915%_ __tmp196257))))
                  (_%K194875194903%_
                   (lambda (_%rest194901%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194865%_ _%rest194901%_ _%opts194868%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194869194889%_))
                  (let ((_%tl194885194945%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194869194889%_)))
                        (_%hd194884194943%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194869194889%_))))
                    (if (equal? _%hd194884194943%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194885194945%_))
                            (let* ((_%tl194887194948%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194885194945%_)))
                                   (_%rest194951%_ _%tl194887194948%_))
                              (declare (not safe))
                              (_%K194883194940%_ _%rest194951%_))
                            (let ((_%rest194909%_ _%tl194885194945%_))
                              (declare (not safe))
                              (_%K194875194903%_ _%rest194909%_)))
                        (if (equal? _%hd194884194943%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194885194945%_))
                                (let ((_%tl194882194928%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194885194945%_)))
                                      (_%hd194881194926%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194885194945%_))))
                                  (let ((_%opt194931%_ _%hd194881194926%_)
                                        (_%rest194933%_ _%tl194882194928%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K194878194918%_
                                       _%rest194933%_
                                       _%opt194931%_))))
                                (let ((_%rest194909%_ _%tl194885194945%_))
                                  (declare (not safe))
                                  (_%K194875194903%_ _%rest194909%_)))
                            (let ((_%rest194909%_ _%tl194885194945%_))
                              (declare (not safe))
                              (_%K194875194903%_ _%rest194909%_)))))
                  (let () (declare (not safe)) (_%else194873194897%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str194862%_)
        (let ((__tmp196260
               (let () (declare (not safe)) (string-empty? _%str194862%_))))
          (declare (not safe))
          (not __tmp196260))))
    (define gxc#gsc-compile-file
      (lambda (_%path194830%_ _%phi?194831%_)
        (letrec ((_%gsc-link-path194833%_
                  (lambda (_%base-path194854%_)
                    (let _%lp194856%_ ((_%n194858%_ '1))
                      (let ((_%path194860%_
                             (let ((__tmp196261 (number->string _%n194858%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path194854%_
                                '".o"
                                __tmp196261))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194860%_))
                            (let ((__tmp196262
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n194858%_ '1))))
                              (declare (not safe))
                              (_%lp194856%_ __tmp196262))
                            _%path194860%_))))))
          (let* ((_%base-path194835%_ (path-strip-extension _%path194830%_))
                 (_%path-c194837%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194835%_ '".c")))
                 (_%path-o194839%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194835%_ '".o")))
                 (_%link-path194841%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path194833%_ _%base-path194835%_)))
                 (_%link-path-c194843%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194841%_ '".c")))
                 (_%link-path-o194845%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194841%_ '".o")))
                 (_%gsc-link-opts194847%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?194831%_)))
                 (_%gsc-cc-opts194849%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?194831%_)))
                 (_%gcc-ld-opts194851%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp196265 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196263
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c194843%_
                                           (let ((__tmp196264
                                                  (cons _%path194830%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp196264
                                              _%gsc-link-opts194847%_))))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196265 __tmp196263))
            (let ((__tmp196268 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196266
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp196267
                                            (cons _%path-c194837%_
                                                  (cons _%link-path-c194843%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp196267
                                        _%gsc-cc-opts194849%_)))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196268 __tmp196266))
            (let ((__tmp196270 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp196269
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path194841%_
                                     (cons _%path-o194839%_
                                           (cons _%link-path-o194845%_
                                                 _%gcc-ld-opts194851%_)))))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp196270
               __tmp196269))
            (let ((__tmp196271
                   (cons _%path-c194837%_
                         (cons _%path-o194839%_
                               (cons _%link-path-c194843%_
                                     (cons _%link-path-o194845%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp196271))))))
    (define gxc#compile-output-file
      (lambda (_%ctx194796%_ _%n194797%_ _%ext194798%_)
        (letrec ((_%module-relative-path194800%_
                  (lambda (_%ctx194828%_)
                    (path-strip-directory
                     (let ((__tmp196272
                            (##structure-ref
                             _%ctx194828%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196272)))))
                 (_%module-source-directory194801%_
                  (lambda (_%ctx194824%_)
                    (path-directory
                     (let ((_%mpath194826%_
                            (##structure-ref
                             _%ctx194824%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath194826%_))
                           _%mpath194826%_
                           (last _%mpath194826%_))))))
                 (_%section-string194802%_
                  (lambda (_%n194818%_)
                    (if (let () (declare (not safe)) (number? _%n194818%_))
                        (let () (number->string _%n194818%_))
                        (if (let () (declare (not safe)) (symbol? _%n194818%_))
                            (let () (symbol->string _%n194818%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n194818%_))
                                (let () _%n194818%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n194818%_)))))))
                 (_%file-name194803%_
                  (lambda (_%path194816%_)
                    (if _%n194797%_
                        (string-append
                         _%path194816%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string194802%_ _%n194797%_))
                         _%ext194798%_)
                        (string-append _%path194816%_ _%ext194798%_))))
                 (_%file-path194804%_
                  (lambda ()
                    (let ((_%$e194810%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e194810%_
                          ((lambda (_%outdir194813%_)
                             (path-expand
                              (let ((__tmp196273
                                     (let ((__tmp196274
                                            (##structure-ref
                                             _%ctx194796%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp196274))))
                                (declare (not safe))
                                (_%file-name194803%_ __tmp196273))
                              _%outdir194813%_))
                           _%$e194810%_)
                          (let ()
                            (path-expand
                             (let ((__tmp196275
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path194800%_
                                       _%ctx194796%_))))
                               (declare (not safe))
                               (_%file-name194803%_ __tmp196275))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory194801%_
                                _%ctx194796%_)))))))))
          (let ((_%path194806%_
                 (let () (declare (not safe)) (_%file-path194804%_))))
            (let ((__tmp196276
                   (lambda ()
                     (let ((__tmp196277 (path-directory _%path194806%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196277)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196276))
            _%path194806%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx194777%_)
        (letrec ((_%file-name194779%_
                  (lambda (_%id194794%_)
                    (let ((__tmp196278
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id194794%_))))
                      (declare (not safe))
                      (##string-append __tmp196278 '".scm"))))
                 (_%file-path194780%_
                  (lambda ()
                    (let* ((_%file194786%_
                            (let ((__tmp196279
                                   (##structure-ref
                                    _%ctx194777%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name194779%_ __tmp196279)))
                           (_%$e194788%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e194788%_
                          ((lambda (_%outdir194791%_)
                             (path-expand
                              _%file194786%_
                              (path-expand '"static" _%outdir194791%_)))
                           _%$e194788%_)
                          (let () (path-expand _%file194786%_ '"static")))))))
          (let ((_%path194782%_
                 (let () (declare (not safe)) (_%file-path194780%_))))
            (let ((__tmp196280
                   (lambda ()
                     (let ((__tmp196281 (path-directory _%path194782%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196281)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196280))
            _%path194782%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx194770%_ _%opts194771%_)
        (let ((_%$e194773%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts194771%_))))
          (if _%$e194773%_
              (values _%$e194773%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx194770%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr194760%_)
        (if (let () (declare (not safe)) (string? _%idstr194760%_))
            (let ()
              (let* ((_%str194763%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr194760%_)))
                     (_%strs194765%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str194763%_ '#\/))))
                (declare (not safe))
                (string-join _%strs194765%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr194760%_))
                (let ((__tmp196282 (symbol->string _%idstr194760%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp196282))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr194760%_))))))
    (define gxc#invoke__%
      (lambda (_%@@keywords194725%_
               _%stdout-redirection194721194726%_
               _%stderr-redirection194722194728%_
               _%program194730%_
               _%args194731%_)
        (let* ((_%stdout-redirection194733%_
                (if (eq? _%stdout-redirection194721194726%_ absent-value)
                    '#f
                    _%stdout-redirection194721194726%_))
               (_%stderr-redirection194735%_
                (if (eq? _%stderr-redirection194722194728%_ absent-value)
                    '#f
                    _%stderr-redirection194722194728%_)))
          (let ((__tmp196283 (cons _%program194730%_ _%args194731%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196283))
          (let* ((_%proc194737%_
                  (open-process
                   (cons 'path:
                         (cons _%program194730%_
                               (cons 'arguments:
                                     (cons _%args194731%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection194733%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection194735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output194742%_
                  (if (or _%stdout-redirection194733%_
                          _%stderr-redirection194735%_)
                      (read-line _%proc194737%_ '#f)
                      '#f))
                 (_%status194745%_ (process-status _%proc194737%_)))
            (let () (declare (not safe)) (##close-port _%proc194737%_))
            (if (zero? _%status194745%_)
                '#!void
                (begin
                  (display _%output194742%_)
                  (let ((__tmp196284 (cons _%program194730%_ _%args194731%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196284
                     _%status194745%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords194750%_ . _%args194751%_)
        (apply gxc#invoke__%
               _%@@keywords194750%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194750%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194750%_
                  'stderr-redirection:
                  absent-value))
               _%args194751%_)))
    (define gxc#invoke
      (lambda _%args194723194757%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args194723194757%_)))
    (define gxc#join!
      (lambda (_%thread194715%_)
        (let ((__tmp196286
               (lambda (_%exn194717%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn194717%_))
                     (let ((__tmp196287
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn194717%_))))
                       (declare (not safe))
                       (raise __tmp196287))
                     (let () (declare (not safe)) (raise _%exn194717%_)))))
              (__tmp196285 (lambda () (thread-join! _%thread194715%_))))
          (declare (not safe))
          (__with-catch __tmp196286 __tmp196285))))))
