(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712256093)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196085 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196085))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196086 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196086))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195991%_ _%fun195992%_)
        (with-output-to-file
         (cons 'path: (cons _%path195991%_ gxc#scheme-file-settings))
         _%fun195992%_)))
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
      (lambda (_%gerbil-libdir195986%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195986%_)))
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
      (lambda (_%dir195984%_) (delete-file-or-directory _%dir195984%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195958%_ _%opts195959%_)
        (if (let () (declare (not safe)) (string? _%srcpath195958%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195958%_)))
        (let ((_%outdir195961%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195959%_)))
              (_%invoke-gsc?195962%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195959%_)))
              (_%gsc-options195963%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195959%_)))
              (_%keep-scm?195964%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195959%_)))
              (_%verbosity195965%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195959%_)))
              (_%optimize195966%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195959%_)))
              (_%debug195967%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195959%_)))
              (_%gen-ssxi195968%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195959%_))))
          (if _%outdir195961%_
              (let ((__tmp196087
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195961%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196087))
              '#!void)
          (if _%optimize195966%_
              (let ((__tmp196088
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196088))
              '#!void)
          (let ((__tmp196091
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195958%_))
                   (let ((__tmp196092
                          (let ((__tmp196093
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195958%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196093))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp196092))))
                (__tmp196090
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196089
                 (cons 'compile-module (cons _%srcpath195958%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196091
             gxc#current-compile-output-dir
             _%outdir195961%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195962%_
             gxc#current-compile-gsc-options
             _%gsc-options195963%_
             gxc#current-compile-keep-scm
             _%keep-scm?195964%_
             gxc#current-compile-verbose
             _%verbosity195965%_
             gxc#current-compile-optimize
             _%optimize195966%_
             gxc#current-compile-debug
             _%debug195967%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195968%_
             gxc#current-compile-timestamp
             __tmp196090
             gxc#current-compile-context
             __tmp196089
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195977%_)
        (let ((_%opts195979%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath195977%_ _%opts195979%_))))
    (define gxc#compile-module
      (lambda _g196095_
        (let ((_g196094_ (let () (declare (not safe)) (##length _g196095_))))
          (cond ((let () (declare (not safe)) (##fx= _g196094_ 1))
                 (apply (lambda (_%srcpath195977%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath195977%_)))
                        _g196095_))
                ((let () (declare (not safe)) (##fx= _g196094_ 2))
                 (apply (lambda (_%srcpath195981%_ _%opts195982%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath195981%_
                             _%opts195982%_)))
                        _g196095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196095_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195934%_ _%opts195935%_)
        (if (let () (declare (not safe)) (string? _%srcpath195934%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195934%_)))
        (let ((_%outdir195937%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195935%_)))
              (_%invoke-gsc?195938%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195935%_)))
              (_%gsc-options195939%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195935%_)))
              (_%keep-scm?195940%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195935%_)))
              (_%verbosity195941%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195935%_)))
              (_%debug195942%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts195935%_))))
          (if _%outdir195937%_
              (let ((__tmp196096
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195937%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196096))
              '#!void)
          (let ((__tmp196099
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195934%_))
                   (let ((__tmp196100
                          (let ((__tmp196101
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195934%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196101))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp196100
                      _%opts195935%_))))
                (__tmp196098
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196097 (cons 'compile-exe (cons _%srcpath195934%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196099
             gxc#current-compile-output-dir
             _%outdir195937%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195938%_
             gxc#current-compile-gsc-options
             _%gsc-options195939%_
             gxc#current-compile-keep-scm
             _%keep-scm?195940%_
             gxc#current-compile-verbose
             _%verbosity195941%_
             gxc#current-compile-debug
             _%debug195942%_
             gxc#current-compile-timestamp
             __tmp196098
             gxc#current-compile-context
             __tmp196097
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195950%_)
        (let ((_%opts195952%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath195950%_ _%opts195952%_))))
    (define gxc#compile-exe
      (lambda _g196103_
        (let ((_g196102_ (let () (declare (not safe)) (##length _g196103_))))
          (cond ((let () (declare (not safe)) (##fx= _g196102_ 1))
                 (apply (lambda (_%srcpath195950%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath195950%_)))
                        _g196103_))
                ((let () (declare (not safe)) (##fx= _g196102_ 2))
                 (apply (lambda (_%srcpath195954%_ _%opts195955%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath195954%_
                             _%opts195955%_)))
                        _g196103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196103_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195930%_ _%opts195931%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195931%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx195930%_
               _%opts195931%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx195930%_
               _%opts195931%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx195807%_ _%opts195808%_)
        (letrec ((_%generate-stub195810%_
                  (lambda (_%builtin-modules195926%_)
                    (let ((_%mod-main195928%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195807%_ 'main))))
                      (let ((__tmp196104
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules195926%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196104))
                      (let ((__tmp196105
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195928%_
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
                        (##write __tmp196105))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts195811%_
                  (lambda (_%libgerbil195924%_)
                    (let ((__tmp196106
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil195924%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp196106 read))))
                 (_%replace-extension195812%_
                  (lambda (_%path195921%_ _%ext195922%_)
                    (string-append
                     (path-strip-extension _%path195921%_)
                     _%ext195922%_)))
                 (_%not-exclude-module?195813%_
                  (lambda (_%ctx195917%_)
                    (let ((_%id-str195919%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195917%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp196107
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195919%_))))
                            (declare (not safe))
                            (not __tmp196107))
                          (let ((__tmp196108
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str195919%_))))
                            (declare (not safe))
                            (not __tmp196108))
                          '#f))))
                 (_%not-file-empty?195814%_
                  (lambda (_%path195915%_)
                    (let ((__tmp196109
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path195915%_))))
                      (declare (not safe))
                      (not __tmp196109))))
                 (_%compile-stub195815%_
                  (lambda (_%output-scm195822%_ _%output-bin195823%_)
                    (let* ((_%gerbil-home195825%_
                            (let ((__tmp196110
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196110)))
                           (_%gerbil-libdir195827%_
                            (path-expand '"lib" _%gerbil-home195825%_))
                           (_%gerbil-staticdir195829%_
                            (path-expand '"static" _%gerbil-libdir195827%_))
                           (_%gxlink195831%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir195827%_))
                           (_%tmp195833%_
                            (path-expand
                             (let ((__tmp196111
                                    (let ((__tmp196112
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp196112))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp196111))
                             '"/tmp"))
                           (_%tmp-path195837%_
                            (lambda (_%f195835%_)
                              (path-expand
                               (path-strip-directory _%f195835%_)
                               _%tmp195833%_)))
                           (_%deps195839%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195807%_)))
                           (_%deps195841%_
                            (filter _%not-exclude-module?195813%_
                                    _%deps195839%_))
                           (_%src-deps-scm195843%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps195841%_)))
                           (_%src-deps-scm195845%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?195814%_
                               _%src-deps-scm195843%_)))
                           (_%src-deps-scm195847%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm195845%_)))
                           (_%deps-scm195849%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path195837%_
                                     _%src-deps-scm195847%_)))
                           (_%deps-c195855%_
                            (let ((__tmp196113
                                   (lambda (_%g195850195852%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195812%_
                                        _%g195850195852%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp196113 _%deps-scm195849%_)))
                           (_%deps-o195861%_
                            (let ((__tmp196114
                                   (lambda (_%g195856195858%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension195812%_
                                        _%g195856195858%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp196114 _%deps-scm195849%_)))
                           (_%src-bin-scm195863%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195807%_)))
                           (_%src-bin-scm195865%_
                            (path-expand _%src-bin-scm195863%_))
                           (_%bin-scm195867%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path195837%_ _%src-bin-scm195865%_)))
                           (_%bin-c195869%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195812%_
                               _%bin-scm195867%_
                               '".c")))
                           (_%bin-o195871%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195812%_
                               _%bin-scm195867%_
                               '".o")))
                           (_%output-bin195873%_
                            (path-expand _%output-bin195823%_))
                           (_%output-scm195875%_
                            (path-expand _%output-scm195822%_))
                           (_%output-c195877%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195812%_
                               _%output-scm195875%_
                               '".c")))
                           (_%output-o195879%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195812%_
                               _%output-scm195875%_
                               '".o")))
                           (_%output_-c195881%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195812%_
                               _%output-scm195875%_
                               '"_.c")))
                           (_%output_-o195883%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension195812%_
                               _%output-scm195875%_
                               '"_.o")))
                           (_%gsc-link-opts195885%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195887%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195889%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir195829%_)))
                           (_%output-ld-opts195891%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a195893%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir195827%_))
                           (_%libgerbil.so195895%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir195827%_))
                           (_%libgerbil.dylib195897%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir195827%_))
                           (_%libgerbil-ld-opts195903%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so195895%_))
                                (let ()
                                  (declare (not safe))
                                  (_%get-libgerbil-ld-opts195811%_
                                   _%libgerbil.so195895%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib195897%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%get-libgerbil-ld-opts195811%_
                                       _%libgerbil.dylib195897%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a195893%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%get-libgerbil-ld-opts195811%_
                                           _%libgerbil.a195893%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _%libgerbil.a195893%_
                                           _%libgerbil.so195895%_
                                           _%libgerbil.dylib195897%_))))))
                           (_%rpath195905%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195827%_)))
                           (_%builtin-modules195909%_
                            (let ((__tmp196116
                                   (lambda (_%mod195907%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod195907%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp196115
                                   (cons _%ctx195807%_ _%deps195841%_)))
                              (declare (not safe))
                              (##map __tmp196116 __tmp196115))))
                      (let ((__tmp196117
                             (lambda ()
                               (let ((__tmp196118
                                      (path-directory _%output-bin195873%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196118)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196117))
                      (let ((__tmp196119
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub195810%_
                                  _%builtin-modules195909%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195875%_
                         __tmp196119))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196120
                                   (lambda ()
                                     (create-directory _%tmp195833%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp196120))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm195847%_
                               _%deps-scm195849%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm195865%_
                               _%bin-scm195867%_))
                            (let ((__tmp196124
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196121
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink195831%_
                                                     (let ((__tmp196122
                                                            (let ((__tmp196123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm195867%_
                                 (cons _%output-scm195875%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp196123 _%deps-scm195849%_))))
               (declare (not safe))
               (__foldr1 cons __tmp196122 _%gsc-link-opts195885%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196124
                               __tmp196121))
                            (let ((__tmp196129
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196125
                                   (cons '"-obj"
                                         (let ((__tmp196126
                                                (let ((__tmp196127
                                                       (let ((__tmp196128
                                                              (cons _%bin-c195869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c195877%_
                                  (cons _%output_-c195881%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp196128 _%deps-c195855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196127
                                                   _%gsc-static-opts195889%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196126
                                            _%gsc-cc-opts195887%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196129
                               __tmp196125))
                            (let ((__tmp196133
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196130
                                   (cons '"-o"
                                         (cons _%output-bin195873%_
                                               (let ((__tmp196131
                                                      (cons _%bin-o195871%_
                                                            (cons _%output-o195879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o195883%_
                                (let ((__tmp196132
                                       (cons _%rpath195905%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir195827%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts195903%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp196132
                                   _%output-ld-opts195891%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp196131
                                                  _%deps-o195861%_))))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196133
                               __tmp196130))
                            (let ((__tmp196134
                                   (cons _%output-c195877%_
                                         (cons _%output_-c195881%_
                                               (cons _%output-o195879%_
                                                     (cons _%output_-o195883%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp196134))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp195833%_)))
                          '#!void)))))
          (let* ((_%output-bin195817%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195807%_
                     _%opts195808%_)))
                 (_%output-scm195819%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195817%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195815%_
               _%output-scm195819%_
               _%output-bin195817%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195819%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx195632%_ _%opts195633%_)
        (letrec ((_%reset-declare195635%_
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
                 (_%generate-stub195636%_
                  (lambda (_%deps195798%_)
                    (let ((_%mod-main195800%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195632%_ 'main)))
                          (_%reset-decl195801%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare195635%_)))
                          (_%user-decl195802%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare195637%_))))
                      (for-each
                       (lambda (_%dep195804%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl195801%_))
                         (newline)
                         (if _%user-decl195802%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl195802%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196135
                                (cons 'include (cons _%dep195804%_ '()))))
                           (declare (not safe))
                           (##write __tmp196135))
                         (newline))
                       _%deps195798%_)
                      (let ((__tmp196136
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main195800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196136))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare195637%_
                  (lambda ()
                    (let* ((_%gsc-opts195703%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts195633%_)))
                           (_%gsc-prelude195705%_
                            (if _%gsc-opts195703%_
                                (member '"-prelude" _%gsc-opts195703%_)
                                '#f))
                           (_%gsc-prelude195707%_
                            (if _%gsc-prelude195705%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude195705%_)))
                                '#f)))
                      (let _%lp195710%_ ((_%rest195712%_
                                          (cons _%gsc-prelude195707%_ '()))
                                         (_%user-decls195713%_ '()))
                        (let* ((_%rest195714195722%_ _%rest195712%_)
                               (_%else195716195730%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls195713%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls195713%_)))))
                               (_%K195718195786%_
                                (lambda (_%rest195733%_ _%expr195734%_)
                                  (let* ((_%expr195735195747%_ _%expr195734%_)
                                         (_%else195738195755%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp195710%_
                                               _%rest195733%_
                                               _%user-decls195713%_)))))
                                    (let ((_%K195743195776%_
                                           (lambda (_%decls195774%_)
                                             (let ((__tmp196137
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls195713%_
                                                       _%decls195774%_))))
                                               (declare (not safe))
                                               (_%lp195710%_
                                                _%rest195733%_
                                                __tmp196137))))
                                          (_%K195740195761%_
                                           (lambda (_%exprs195759%_)
                                             (let ((__tmp196138
                                                    (append _%exprs195759%_
                                                            _%rest195733%_)))
                                               (declare (not safe))
                                               (_%lp195710%_
                                                __tmp196138
                                                _%user-decls195713%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr195735195747%_))
                                          (let ((_%tl195745195781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr195735195747%_)))
                                                (_%hd195744195779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr195735195747%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd195744195779%_
                                                         'declare))
                                                (let ((_%decls195784%_
                                                       _%tl195745195781%_))
                                                  (declare (not safe))
                                                  (_%K195743195776%_
                                                   _%decls195784%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd195744195779%_
                                                             'begin))
                                                    (let ((_%exprs195769%_
                                                           _%tl195745195781%_))
                                                      (declare (not safe))
                                                      (_%K195740195761%_
                                                       _%exprs195769%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else195738195755%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195738195755%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest195714195722%_))
                              (let ((_%hd195719195789%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195714195722%_)))
                                    (_%tl195720195791%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195714195722%_))))
                                (let* ((_%expr195794%_ _%hd195719195789%_)
                                       (_%rest195796%_ _%tl195720195791%_))
                                  (declare (not safe))
                                  (_%K195718195786%_
                                   _%rest195796%_
                                   _%expr195794%_)))
                              (let ()
                                (declare (not safe))
                                (_%else195716195730%_))))))))
                 (_%compile-stub195638%_
                  (lambda (_%output-scm195645%_ _%output-bin195646%_)
                    (let* ((_%gerbil-home195648%_
                            (let ((__tmp196139
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196139)))
                           (_%gerbil-libdir195650%_
                            (path-expand '"lib" _%gerbil-home195648%_))
                           (_%runtime195652%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp195654%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home195648%_))
                           (_%include-gambit-sharp195656%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp195654%_
                               '"\")")))
                           (_%bin-scm195658%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195632%_)))
                           (_%deps195660%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195632%_)))
                           (_%deps195662%_
                            (map gxc#find-static-module-file _%deps195660%_))
                           (_%deps195667%_
                            (let ((__tmp196140
                                   (lambda (_%$obj195664%_)
                                     (let ((__tmp196141
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj195664%_))))
                                       (declare (not safe))
                                       (not __tmp196141)))))
                              (declare (not safe))
                              (##filter __tmp196140 _%deps195662%_)))
                           (_%deps195671%_
                            (let ((__tmp196142
                                   (lambda (_%f195669%_)
                                     (let ((__tmp196143
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f195669%_
                                               _%runtime195652%_))))
                                       (declare (not safe))
                                       (not __tmp196143)))))
                              (declare (not safe))
                              (##filter __tmp196142 _%deps195667%_)))
                           (_%output-base195673%_
                            (let ((__tmp196144
                                   (path-strip-extension
                                    _%output-scm195645%_)))
                              (declare (not safe))
                              (##string-append __tmp196144)))
                           (_%output-c195675%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195673%_ '".c")))
                           (_%output-o195677%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195673%_ '".o")))
                           (_%output-c_195679%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195673%_ '"_.c")))
                           (_%output-o_195681%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195673%_ '"_.o")))
                           (_%gsc-link-opts195683%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195685%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195687%_
                            (let ((__tmp196145
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir195650%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp196145)))
                           (_%output-ld-opts195689%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros195691%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp195656%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp195656%_
                                            '()))))
                           (_%gsc-link-opts195693%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts195683%_
                               _%gsc-gx-macros195691%_)))
                           (_%rpath195695%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195650%_)))
                           (_%default-ld-options195697%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196146
                             (lambda ()
                               (let ((__tmp196147
                                      (path-directory _%output-bin195646%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196147)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196146))
                      (let ((__tmp196148
                             (lambda ()
                               (let ((__tmp196149
                                      (let ((__tmp196150
                                             (let ((__tmp196151
                                                    (cons _%bin-scm195658%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp196151
                                                _%deps195671%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196150
                                         _%runtime195652%_))))
                                 (declare (not safe))
                                 (_%generate-stub195636%_ __tmp196149)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195645%_
                         __tmp196148))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp196154
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196152
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_195679%_
                                                     (let ((__tmp196153
                                                            (cons _%output-scm195645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp196153 _%gsc-link-opts195693%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196154
                               __tmp196152))
                            (let ((__tmp196158
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp196155
                                   (cons '"-obj"
                                         (let ((__tmp196156
                                                (let ((__tmp196157
                                                       (cons _%output-c195675%_
                                                             (cons _%output-c_195679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196157
                                                   _%gsc-static-opts195687%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196156
                                            _%gsc-cc-opts195685%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196158
                               __tmp196155))
                            (let ((__tmp196161
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp196159
                                   (cons '"-o"
                                         (cons _%output-bin195646%_
                                               (cons _%output-o195677%_
                                                     (cons _%output-o_195681%_
                                                           (let ((__tmp196160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath195695%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir195650%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options195697%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp196160
                      _%output-ld-opts195689%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp196161
                               __tmp196159)))
                          '#!void)))))
          (let* ((_%output-bin195640%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195632%_
                     _%opts195633%_)))
                 (_%output-scm195642%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195640%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub195638%_
               _%output-scm195642%_
               _%output-bin195640%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195642%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx195581%_ _%id195582%_)
        (let ((_%$e195628%_
               (let ((__tmp196163
                      (lambda (_%e195583195585%_)
                        (let* ((_%g195587195597%_ _%e195583195585%_)
                               (_%else195589195605%_ (lambda () '#f))
                               (_%K195591195609%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g195587195597%_
                                 'gx#module-export::t))
                              (let* ((_%e195592195612%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195587195597%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e195593195615%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195587195597%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e195594195618%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195587195597%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e195594195618%_ '0))
                                    (let ((_%e195595195621%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g195587195597%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g195623195625%_)
                                             (eq? _%g195623195625%_
                                                  _%id195582%_))
                                           _%e195595195621%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K195591195609%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195589195605%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else195589195605%_))))
                              (let ()
                                (declare (not safe))
                                (_%else195589195605%_))))))
                     (__tmp196162
                      (##structure-ref
                       _%ctx195581%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196163 __tmp196162))))
          (if _%$e195628%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e195628%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx195572%_ _%id195573%_)
        (let ((_%$e195575%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx195572%_ _%id195573%_))))
          (if _%$e195575%_
              ((lambda (_%bind195578%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind195578%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id195573%_)))
                 (##structure-ref _%bind195578%_ '1 gx#binding::t '#f))
               _%$e195575%_)
              (let ((__tmp196164
                     (##structure-ref
                      _%ctx195572%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196164
                 _%id195573%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195438%_)
        (letrec* ((_%ht195440%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195441%_
                   (lambda (_%in195517%_ _%phi195518%_)
                     (let ((_%iphi195520%_
                            (fx+ _%phi195518%_
                                 (##direct-structure-ref
                                  _%in195517%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports195521%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in195517%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp195523%_ ((_%rest195525%_ _%imports195521%_)
                                          (_%r195526%_ '()))
                         (let* ((_%rest195527195535%_ _%rest195525%_)
                                (_%else195529195543%_ (lambda () _%r195526%_))
                                (_%K195531195560%_
                                 (lambda (_%rest195546%_ _%in195547%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in195547%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi195520%_))
                                             (let ((__tmp196165
                                                    (cons _%in195547%_
                                                          _%r195526%_)))
                                               (declare (not safe))
                                               (_%lp195523%_
                                                _%rest195546%_
                                                __tmp196165))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp195523%_
                                                _%rest195546%_
                                                _%r195526%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in195547%_
                                              'gx#module-import::t))
                                           (let ((_%iphi195551%_
                                                  (fx+ _%phi195518%_
                                                       (##direct-structure-ref
                                                        _%in195547%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi195551%_))
                                                 (let ((__tmp196166
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in195547%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r195526%_)))
                                                   (declare (not safe))
                                                   (_%lp195523%_
                                                    _%rest195546%_
                                                    __tmp196166))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp195523%_
                                                    _%rest195546%_
                                                    _%r195526%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in195547%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi195554%_
                                                      (fx+ _%iphi195520%_
                                                           (##direct-structure-ref
                                                            _%in195547%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi195554%_))
                                                     (let ((__tmp196167
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in195547%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r195526%_)))
               (declare (not safe))
               (_%lp195523%_ _%rest195546%_ __tmp196167))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi195554%_))
                                                         (let ((__tmp196168
                                                                (let ((__tmp196169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195441%_
                                  _%in195547%_
                                  _%iphi195520%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r195526%_ __tmp196169))))
                   (declare (not safe))
                   (_%lp195523%_ _%rest195546%_ __tmp196168))
                 (let ()
                   (declare (not safe))
                   (_%lp195523%_ _%rest195546%_ _%r195526%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp195523%_
                                                  _%rest195546%_
                                                  _%r195526%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest195527195535%_))
                               (let ((_%hd195532195563%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest195527195535%_)))
                                     (_%tl195533195565%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest195527195535%_))))
                                 (let* ((_%in195568%_ _%hd195532195563%_)
                                        (_%rest195570%_ _%tl195533195565%_))
                                   (declare (not safe))
                                   (_%K195531195560%_
                                    _%rest195570%_
                                    _%in195568%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else195529195543%_))))))))
                  (_%find-deps195442%_
                   (lambda (_%rest195450%_ _%deps195451%_)
                     (let* ((_%rest195452195460%_ _%rest195450%_)
                            (_%else195454195468%_ (lambda () _%deps195451%_))
                            (_%K195456195505%_
                             (lambda (_%rest195471%_ _%hd195472%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195472%_
                                      'gx#module-context::t))
                                   (let ((_%id195475%_
                                          (##structure-ref
                                           _%hd195472%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195476%_
                                          (##structure-ref
                                           _%hd195472%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195440%_
                                            _%id195475%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps195442%_
                                            _%rest195471%_
                                            _%deps195451%_))
                                         (let ((_%$e195479%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195472%_))))
                                           (if _%$e195479%_
                                               ((lambda (_%pre195482%_)
                                                  (let ((_%xdeps195484%_
                                                         (let ((__tmp196170
                                                                (cons _%pre195482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports195476%_)))
                   (declare (not safe))
                   (_%find-deps195442%_ __tmp196170 _%deps195451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195440%_
                                                       _%id195475%_
                                                       _%hd195472%_))
                                                    (let ((__tmp196171
                                                           (cons _%hd195472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps195484%_)))
              (declare (not safe))
              (_%find-deps195442%_ _%rest195471%_ __tmp196171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e195479%_)
                                               (let ((_%xdeps195487%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps195442%_
                                                         _%imports195476%_
                                                         _%deps195451%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195440%_
                                                    _%id195475%_
                                                    _%hd195472%_))
                                                 (let ((__tmp196172
                                                        (cons _%hd195472%_
                                                              _%xdeps195487%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195442%_
                                                    _%rest195471%_
                                                    __tmp196172)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195472%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195490%_
                                              (##structure-ref
                                               _%hd195472%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195440%_
                                                _%id195490%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps195442%_
                                                _%rest195471%_
                                                _%deps195451%_))
                                             (let ((_%xdeps195494%_
                                                    (let ((__tmp196173
                                                           (##structure-ref
                                                            _%hd195472%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps195442%_
                                                       __tmp196173
                                                       _%deps195451%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195440%_
                                                      _%id195490%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps195442%_
                                                      _%rest195471%_
                                                      _%xdeps195494%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195440%_
                                                        _%id195490%_
                                                        _%hd195472%_))
                                                     (let ((__tmp196174
                                                            (cons _%hd195472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps195494%_)))
               (declare (not safe))
               (_%find-deps195442%_ _%rest195471%_ __tmp196174)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195472%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd195472%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp196175
                                                        (cons (##direct-structure-ref
                                                               _%hd195472%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest195471%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195442%_
                                                    __tmp196175
                                                    _%deps195451%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps195442%_
                                                    _%rest195471%_
                                                    _%deps195451%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195472%_
                                                  'gx#module-export::t))
                                               (let ((__tmp196176
                                                      (cons (##direct-structure-ref
                                                             _%hd195472%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest195471%_)))
                                                 (declare (not safe))
                                                 (_%find-deps195442%_
                                                  __tmp196176
                                                  _%deps195451%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195472%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd195472%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp196177
                        (cons (##direct-structure-ref
                               _%hd195472%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest195471%_)))
                   (declare (not safe))
                   (_%find-deps195442%_ __tmp196177 _%deps195451%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd195472%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps195501%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195441%_
                                  _%hd195472%_
                                  '0)))
                              (__tmp196178
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest195471%_
                                  _%xdeps195501%_))))
                         (declare (not safe))
                         (_%find-deps195442%_ __tmp196178 _%deps195451%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps195442%_ _%rest195471%_ _%deps195451%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195472%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195452195460%_))
                           (let ((_%hd195457195508%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195452195460%_)))
                                 (_%tl195458195510%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195452195460%_))))
                             (let* ((_%hd195513%_ _%hd195457195508%_)
                                    (_%rest195515%_ _%tl195458195510%_))
                               (declare (not safe))
                               (_%K195456195505%_
                                _%rest195515%_
                                _%hd195513%_)))
                           (let ()
                             (declare (not safe))
                             (_%else195454195468%_)))))))
          (let ((__tmp196179
                 (filter gx#expander-context-id
                         (let ((__tmp196180
                                (let ((_%$e195444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx195438%_))))
                                  (if _%$e195444%_
                                      ((lambda (_%pre195447%_)
                                         (cons _%pre195447%_
                                               (##structure-ref
                                                _%ctx195438%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e195444%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx195438%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps195442%_ __tmp196180 '())))))
            (declare (not safe))
            (##reverse __tmp196179)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195368%_)
        (let* ((_%context-id195370%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195368%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195368%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195368%_)))
               (_%scm195372%_
                (let ((__tmp196181
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id195370%_))))
                  (declare (not safe))
                  (##string-append __tmp196181 '".scm")))
               (_%dirs195374%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195380%_
                (let ((_%user-libpath195376%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195376%_
                      (let ((_%user-libpath195378%_
                             (path-expand '"lib" _%user-libpath195376%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195378%_ _%dirs195374%_))
                            _%dirs195374%_
                            (cons _%user-libpath195378%_ _%dirs195374%_)))
                      _%dirs195374%_)))
               (_%dirs195390%_
                (let ((_%$e195382%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195382%_
                      ((lambda (_%g195384195386%_)
                         (cons _%g195384195386%_ _%dirs195380%_))
                       _%$e195382%_)
                      (let () _%dirs195380%_))))
               (_%dirs195396%_
                (map (lambda (_%g195391195393%_)
                       (path-expand '"static" _%g195391195393%_))
                     _%dirs195390%_)))
          (let _%lp195399%_ ((_%rest195401%_ _%dirs195396%_))
            (let* ((_%rest195402195410%_ _%rest195401%_)
                   (_%else195404195418%_
                    (lambda ()
                      (let ((__tmp196182
                             (##structure-ref
                              _%ctx195368%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196182
                         _%scm195372%_))))
                   (_%K195406195426%_
                    (lambda (_%rest195421%_ _%dir195422%_)
                      (let ((_%path195424%_
                             (path-expand _%scm195372%_ _%dir195422%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195424%_))
                            _%path195424%_
                            (let ()
                              (declare (not safe))
                              (_%lp195399%_ _%rest195421%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest195402195410%_))
                  (let ((_%hd195407195429%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195402195410%_)))
                        (_%tl195408195431%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195402195410%_))))
                    (let* ((_%dir195434%_ _%hd195407195429%_)
                           (_%rest195436%_ _%tl195408195431%_))
                      (declare (not safe))
                      (_%K195406195426%_ _%rest195436%_ _%dir195434%_)))
                  (let () (declare (not safe)) (_%else195404195418%_))))))))
    (define gxc#file-empty?
      (lambda (_%path195366%_)
        (zero? (let ((__tmp196183 (file-info _%path195366%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196183)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195355%_)
        (let ((__tmp196187
               (lambda ()
                 (let ((__tmp196188
                        (##structure-ref
                         _%ctx195355%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196188))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196189
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195355%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196189))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx195355%_))
                 (if (let ((__tmp196190
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx195355%_))))
                       (declare (not safe))
                       (null? __tmp196190))
                     (let* ((_%thr1195360%_
                             (let ((__tmp196191
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx195355%_)))))
                               (declare (not safe))
                               (__spawn __tmp196191)))
                            (_%thr2195363%_
                             (let ((__tmp196192
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx195355%_)))))
                               (declare (not safe))
                               (__spawn __tmp196192))))
                       (let () (declare (not safe)) (gxc#join! _%thr1195360%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2195363%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx195355%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx195355%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx195355%_))
                     '#!void)))
              (__tmp196186
               (let ((__obj196083
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196083)
                 __obj196083))
              (__tmp196185 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196184
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
           __tmp196187
           gx#current-expander-context
           _%ctx195355%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196186
           gxc#current-compile-runtime-sections
           __tmp196185
           gxc#current-compile-runtime-names
           __tmp196184))))
    (define gxc#collect-bindings
      (lambda (_%ctx195353%_)
        (let ((__tmp196193
               (##structure-ref _%ctx195353%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196193))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195297%_)
        (letrec ((_%compile1195299%_
                  (lambda (_%ctx195340%_)
                    (let* ((_%code195342%_
                            (##structure-ref
                             _%ctx195340%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt195346%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code195342%_))
                                (let ((_%idstr195344%_
                                       (let ((__tmp196194
                                              (##structure-ref
                                               _%ctx195340%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp196194))))
                                  (declare (not safe))
                                  (##string-append _%idstr195344%_ '"~0"))
                                '#f)))
                      (if _%rt195346%_
                          (let ()
                            (let ((__tmp196195
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp196195
                               _%ctx195340%_
                               _%rt195346%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code195301%_
                               _%ctx195340%_
                               _%code195342%_)))
                          (let ((_%path195351%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx195340%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path195351%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code195302%_
                         _%ctx195340%_
                         _%code195342%_
                         _%rt195346%_)))))
                 (_%context-timestamp195300%_
                  (lambda (_%ctx195338%_)
                    (let ((__tmp196196
                           (let ((__tmp196197
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195338%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196197 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196196))))
                 (_%generate-runtime-code195301%_
                  (lambda (_%ctx195320%_ _%code195321%_)
                    (let* ((_%lifts195323%_ (box '()))
                           (_%runtime-code195326%_
                            (let ((__tmp196200
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code195321%_))))
                                  (__tmp196199
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp196198
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196200
                               gx#current-expander-context
                               _%ctx195320%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts195323%_
                               gxc#current-compile-marks
                               __tmp196199
                               gxc#current-compile-identifiers
                               __tmp196198)))
                           (_%runtime-code195328%_
                            (if (let ((__tmp196201 (unbox _%lifts195323%_)))
                                  (declare (not safe))
                                  (null? __tmp196201))
                                _%runtime-code195326%_
                                (cons 'begin
                                      (let ((__tmp196203
                                             (cons _%runtime-code195326%_ '()))
                                            (__tmp196202
                                             (reverse (unbox _%lifts195323%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196203
                                         __tmp196202)))))
                           (_%runtime-code195330%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp195300%_
                                                       _%ctx195320%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code195328%_ '()))))
                           (_%scm0195332%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195320%_
                               '0
                               '".scm")))
                           (_%scms195335%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx195320%_))))
                      (let ((__tmp196204
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0195332%_
                                  _%runtime-code195330%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196204
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms195335%_)
                          (delete-file _%scms195335%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0195332%_
                         '" => "
                         _%scms195335%_))
                      (copy-file _%scm0195332%_ _%scms195335%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0195332%_)))))
                 (_%generate-loader-code195302%_
                  (lambda (_%ctx195309%_ _%code195310%_ _%rt195311%_)
                    (let* ((_%loader-code195314%_
                            (let ((__tmp196205
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195310%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196205
                               gx#current-expander-context
                               _%ctx195309%_)))
                           (_%loader-code195316%_
                            (if _%rt195311%_
                                (cons 'begin
                                      (cons _%loader-code195314%_
                                            (cons (cons 'load-module
                                                        (cons _%rt195311%_
                                                              '()))
                                                  '())))
                                _%loader-code195314%_))
                           (__tmp196206
                            (lambda ()
                              (let ((__tmp196207
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx195309%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp196207
                                 _%loader-code195316%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196206
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules195304%_
                  (cons _%ctx195297%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx195297%_))))
                 (__tmp196208
                  (lambda (_%ctx195306%_)
                    (let ((__tmp196209
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1195299%_ _%ctx195306%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196209
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196208 _%all-modules195304%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195192%_)
        (letrec ((_%compile-ssi195194%_
                  (lambda (_%code195265%_)
                    (let* ((_%path195267%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195192%_
                               '#f
                               '".ssi")))
                           (_%prelude195279%_
                            (let* ((_%super195269%_
                                    (##structure-ref
                                     _%ctx195192%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195271%_
                                    (##structure-ref
                                     _%super195269%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195271%_
                                  ((lambda (_%g195273195275%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195273195275%_)))
                                   _%$e195271%_)
                                  (let () ':<root>))))
                           (_%ns195281%_
                            (##structure-ref
                             _%ctx195192%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195283%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195192%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195291%_
                            (let ((_%$e195285%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195283%_ '#\/))))
                              (if _%$e195285%_
                                  ((lambda (_%x195288%_)
                                     (let ((__tmp196210
                                            (substring
                                             _%idstr195283%_
                                             '0
                                             _%x195288%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196210)))
                                   _%$e195285%_)
                                  (let () '#f))))
                           (_%rt195293%_
                            (let ((__tmp196211
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196211 _%ctx195192%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195267%_))
                      (let ((__tmp196212
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude195279%_))
                               (if _%pkg195291%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg195291%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns195281%_))
                               (newline)
                               (pretty-print _%code195265%_)
                               (if _%rt195293%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt195293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path195267%_
                         __tmp196212)))))
                 (_%compile-phi195195%_
                  (lambda (_%part195205%_)
                    (let* ((_%part195206195219%_ _%part195205%_)
                           (_%E195208195223%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195206195219%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195209195234%_
                            (lambda (_%code195226%_
                                     _%n195227%_
                                     _%phi195228%_
                                     _%phi-ctx195229%_)
                              (let* ((_%code195232%_
                                      (let ((__tmp196213
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code195226%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp196213
                                         gx#current-expander-context
                                         _%phi-ctx195229%_
                                         gx#current-expander-phi
                                         _%phi195228%_)))
                                     (__tmp196214
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx195192%_
                                         _%n195227%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp196214
                                 _%code195232%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195206195219%_))
                          (let ((_%hd195210195237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195206195219%_)))
                                (_%tl195211195239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195206195219%_))))
                            (let ((_%phi-ctx195242%_ _%hd195210195237%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195211195239%_))
                                  (let ((_%hd195212195244%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195211195239%_)))
                                        (_%tl195213195246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195211195239%_))))
                                    (let ((_%phi195249%_ _%hd195212195244%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195213195246%_))
                                          (let ((_%hd195214195251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195213195246%_)))
                                                (_%tl195215195253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195213195246%_))))
                                            (let ((_%n195256%_
                                                   _%hd195214195251%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195215195253%_))
                                                  (let ((_%hd195216195258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195215195253%_)))
                                                        (_%tl195217195260%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195215195253%_))))
                                                    (let ((_%code195263%_
                                                           _%hd195216195258%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195217195260%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K195209195234%_
                                                             _%code195263%_
                                                             _%n195256%_
                                                             _%phi195249%_
                                                             _%phi-ctx195242%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E195208195223%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E195208195223%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E195208195223%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E195208195223%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E195208195223%_)))))))
          (let ((_g196215_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx195192%_))))
            (begin
              (let ((_g196216_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196215_)
                           (##vector-length _g196215_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196216_ 2)))
                    (error "Context expects 2 values" _g196216_)))
              (let ((_%ssi-code195197%_
                     (let () (declare (not safe)) (##vector-ref _g196215_ 0)))
                    (_%phi-code195198%_
                     (let () (declare (not safe)) (##vector-ref _g196215_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi195194%_ _%ssi-code195197%_))
                  (let ((_%threads195203%_
                         (map (lambda (_%code195200%_)
                                (let ((__tmp196217
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi195195%_
                                            _%code195200%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp196217)))
                              _%phi-code195198%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads195203%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195174%_)
        (let* ((_%path195176%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx195174%_ '#f '".ssxi.ss")))
               (_%code195178%_
                (let ((__tmp196218
                       (##structure-ref
                        _%ctx195174%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196218)))
               (_%idstr195180%_
                (symbol->string
                 (##structure-ref
                  _%ctx195174%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195188%_
                (let ((_%$e195182%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195180%_ '#\/))))
                  (if _%$e195182%_
                      ((lambda (_%x195185%_)
                         (let ((__tmp196219
                                (substring _%idstr195180%_ '0 _%x195185%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196219)))
                       _%$e195182%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195176%_))
          (let ((__tmp196220
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg195188%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg195188%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code195178%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path195176%_ __tmp196220)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195167%_)
        (let* ((_%state195169%_
                (let ((__obj196084
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196084 _%ctx195167%_)
                  __obj196084))
               (_%ssi-code195171%_
                (let ((__tmp196221
                       (##structure-ref
                        _%ctx195167%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195169%_
                   __tmp196221))))
          (values _%ssi-code195171%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195169%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195160%_)
        (let ((_%lifts195162%_ (box '())))
          (let ((__tmp196224
                 (lambda ()
                   (let ((_%code195165%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195160%_))))
                     (if (let ((__tmp196225 (unbox _%lifts195162%_)))
                           (declare (not safe))
                           (null? __tmp196225))
                         _%code195165%_
                         (cons 'begin
                               (let ((__tmp196227 (cons _%code195165%_ '()))
                                     (__tmp196226
                                      (reverse (unbox _%lifts195162%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196227 __tmp196226)))))))
                (__tmp196223
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196222
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196224
             gxc#current-compile-lift
             _%lifts195162%_
             gxc#current-compile-marks
             __tmp196223
             gxc#current-compile-identifiers
             __tmp196222)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195156%_)
        (let ((_%modules195158%_ (box '())))
          (let ((__tmp196228
                 (##structure-ref _%ctx195156%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195158%_ __tmp196228))
          (reverse (unbox _%modules195158%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195139%_ _%code195140%_ _%phi?195141%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195139%_))
        (let ((__tmp196229
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp196230
                                                 (if _%phi?195141%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp196230)))))))
                 (pretty-print _%code195140%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path195139%_ __tmp196229))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path195139%_ _%phi?195141%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path195139%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path195147%_ _%code195148%_)
        (let ((_%phi?195150%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path195147%_
           _%code195148%_
           _%phi?195150%_))))
    (define gxc#compile-scm-file
      (lambda _g196232_
        (let ((_g196231_ (let () (declare (not safe)) (##length _g196232_))))
          (cond ((let () (declare (not safe)) (##fx= _g196231_ 2))
                 (apply (lambda (_%path195147%_ _%code195148%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path195147%_
                             _%code195148%_)))
                        _g196232_))
                ((let () (declare (not safe)) (##fx= _g196231_ 3))
                 (apply (lambda (_%path195152%_ _%code195153%_ _%phi?195154%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path195152%_
                             _%code195153%_
                             _%phi?195154%_)))
                        _g196232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196232_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?195040%_)
        (let _%lp195042%_ ((_%rest195044%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195045%_ '()))
          (let* ((_%rest195046195066%_ _%rest195044%_)
                 (_%else195050195074%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?195040%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts195045%_)))
                        (reverse _%opts195045%_)))))
            (let ((_%K195060195117%_
                   (lambda (_%rest195115%_)
                     (let ()
                       (declare (not safe))
                       (_%lp195042%_ _%rest195115%_ _%opts195045%_))))
                  (_%K195055195099%_
                   (lambda (_%rest195097%_)
                     (let ()
                       (declare (not safe))
                       (_%lp195042%_ _%rest195097%_ _%opts195045%_))))
                  (_%K195052195081%_
                   (lambda (_%rest195078%_ _%opt195079%_)
                     (let ((__tmp196233 (cons _%opt195079%_ _%opts195045%_)))
                       (declare (not safe))
                       (_%lp195042%_ _%rest195078%_ __tmp196233)))))
              (if (let () (declare (not safe)) (##pair? _%rest195046195066%_))
                  (let ((_%tl195062195122%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195046195066%_)))
                        (_%hd195061195120%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195046195066%_))))
                    (if (equal? _%hd195061195120%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195062195122%_))
                            (let* ((_%tl195064195125%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195062195122%_)))
                                   (_%rest195128%_ _%tl195064195125%_))
                              (declare (not safe))
                              (_%K195060195117%_ _%rest195128%_))
                            (let ((_%opt195089%_ _%hd195061195120%_)
                                  (_%rest195091%_ _%tl195062195122%_))
                              (let ()
                                (declare (not safe))
                                (_%K195052195081%_
                                 _%rest195091%_
                                 _%opt195089%_))))
                        (if (equal? _%hd195061195120%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195062195122%_))
                                (let* ((_%tl195059195107%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl195062195122%_)))
                                       (_%rest195110%_ _%tl195059195107%_))
                                  (declare (not safe))
                                  (_%K195055195099%_ _%rest195110%_))
                                (let ((_%opt195089%_ _%hd195061195120%_)
                                      (_%rest195091%_ _%tl195062195122%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K195052195081%_
                                     _%rest195091%_
                                     _%opt195089%_))))
                            (let ((_%opt195089%_ _%hd195061195120%_)
                                  (_%rest195091%_ _%tl195062195122%_))
                              (let ()
                                (declare (not safe))
                                (_%K195052195081%_
                                 _%rest195091%_
                                 _%opt195089%_))))))
                  (let () (declare (not safe)) (_%else195050195074%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195134%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?195134%_))))
    (define gxc#gsc-link-options
      (lambda _g196235_
        (let ((_g196234_ (let () (declare (not safe)) (##length _g196235_))))
          (cond ((let () (declare (not safe)) (##fx= _g196234_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g196235_))
                ((let () (declare (not safe)) (##fx= _g196234_ 1))
                 (apply (lambda (_%phi?195136%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?195136%_)))
                        _g196235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196235_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?194941%_)
        (let _%lp194943%_ ((_%rest194945%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194946%_ '()))
          (let* ((_%rest194947194967%_ _%rest194945%_)
                 (_%else194951194975%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194941%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts194946%_)))
                        (reverse _%opts194946%_)))))
            (let ((_%K194961195014%_
                   (lambda (_%rest195011%_ _%opt195012%_)
                     (let ((__tmp196236
                            (let ((__tmp196237
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts194946%_))))
                              (declare (not safe))
                              (cons _%opt195012%_ __tmp196237))))
                       (declare (not safe))
                       (_%lp194943%_ _%rest195011%_ __tmp196236))))
                  (_%K194956194995%_
                   (lambda (_%rest194993%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194943%_ _%rest194993%_ _%opts194946%_))))
                  (_%K194953194981%_
                   (lambda (_%rest194979%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194943%_ _%rest194979%_ _%opts194946%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194947194967%_))
                  (let ((_%tl194963195019%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194947194967%_)))
                        (_%hd194962195017%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194947194967%_))))
                    (if (equal? _%hd194962195017%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194963195019%_))
                            (let ((_%tl194965195024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl194963195019%_)))
                                  (_%hd194964195022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl194963195019%_))))
                              (let ((_%opt195027%_ _%hd194964195022%_)
                                    (_%rest195029%_ _%tl194965195024%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K194961195014%_
                                   _%rest195029%_
                                   _%opt195027%_))))
                            (let ((_%rest194987%_ _%tl194963195019%_))
                              (declare (not safe))
                              (_%K194953194981%_ _%rest194987%_)))
                        (if (equal? _%hd194962195017%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194963195019%_))
                                (let* ((_%tl194960195003%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194963195019%_)))
                                       (_%rest195006%_ _%tl194960195003%_))
                                  (declare (not safe))
                                  (_%K194956194995%_ _%rest195006%_))
                                (let ((_%rest194987%_ _%tl194963195019%_))
                                  (declare (not safe))
                                  (_%K194953194981%_ _%rest194987%_)))
                            (let ((_%rest194987%_ _%tl194963195019%_))
                              (declare (not safe))
                              (_%K194953194981%_ _%rest194987%_)))))
                  (let () (declare (not safe)) (_%else194951194975%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?195035%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?195035%_))))
    (define gxc#gsc-cc-options
      (lambda _g196239_
        (let ((_g196238_ (let () (declare (not safe)) (##length _g196239_))))
          (cond ((let () (declare (not safe)) (##fx= _g196238_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g196239_))
                ((let () (declare (not safe)) (##fx= _g196238_ 1))
                 (apply (lambda (_%phi?195037%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?195037%_)))
                        _g196239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g196239_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir194936%_)
        (let ((_%user-staticdir194938%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir194936%_
                       '" -I "
                       _%user-staticdir194938%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194848%_ ((_%rest194850%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194851%_ '()))
          (let* ((_%rest194852194872%_ _%rest194850%_)
                 (_%else194856194880%_ (lambda () _%opts194851%_)))
            (let ((_%K194866194923%_
                   (lambda (_%rest194921%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194848%_ _%rest194921%_ _%opts194851%_))))
                  (_%K194861194901%_
                   (lambda (_%rest194898%_ _%opt194899%_)
                     (let ((__tmp196240
                            (let ((__tmp196241
                                   (let ((__tmp196242
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt194899%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp196242))))
                              (declare (not safe))
                              (##append _%opts194851%_ __tmp196241))))
                       (declare (not safe))
                       (_%lp194848%_ _%rest194898%_ __tmp196240))))
                  (_%K194858194886%_
                   (lambda (_%rest194884%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194848%_ _%rest194884%_ _%opts194851%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194852194872%_))
                  (let ((_%tl194868194928%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194852194872%_)))
                        (_%hd194867194926%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194852194872%_))))
                    (if (equal? _%hd194867194926%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194868194928%_))
                            (let* ((_%tl194870194931%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194868194928%_)))
                                   (_%rest194934%_ _%tl194870194931%_))
                              (declare (not safe))
                              (_%K194866194923%_ _%rest194934%_))
                            (let ((_%rest194892%_ _%tl194868194928%_))
                              (declare (not safe))
                              (_%K194858194886%_ _%rest194892%_)))
                        (if (equal? _%hd194867194926%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194868194928%_))
                                (let ((_%tl194865194911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194868194928%_)))
                                      (_%hd194864194909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194868194928%_))))
                                  (let ((_%opt194914%_ _%hd194864194909%_)
                                        (_%rest194916%_ _%tl194865194911%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K194861194901%_
                                       _%rest194916%_
                                       _%opt194914%_))))
                                (let ((_%rest194892%_ _%tl194868194928%_))
                                  (declare (not safe))
                                  (_%K194858194886%_ _%rest194892%_)))
                            (let ((_%rest194892%_ _%tl194868194928%_))
                              (declare (not safe))
                              (_%K194858194886%_ _%rest194892%_)))))
                  (let () (declare (not safe)) (_%else194856194880%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str194845%_)
        (let ((__tmp196243
               (let () (declare (not safe)) (string-empty? _%str194845%_))))
          (declare (not safe))
          (not __tmp196243))))
    (define gxc#gsc-compile-file
      (lambda (_%path194813%_ _%phi?194814%_)
        (letrec ((_%gsc-link-path194816%_
                  (lambda (_%base-path194837%_)
                    (let _%lp194839%_ ((_%n194841%_ '1))
                      (let ((_%path194843%_
                             (let ((__tmp196244 (number->string _%n194841%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path194837%_
                                '".o"
                                __tmp196244))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194843%_))
                            (let ((__tmp196245
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n194841%_ '1))))
                              (declare (not safe))
                              (_%lp194839%_ __tmp196245))
                            _%path194843%_))))))
          (let* ((_%base-path194818%_ (path-strip-extension _%path194813%_))
                 (_%path-c194820%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194818%_ '".c")))
                 (_%path-o194822%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path194818%_ '".o")))
                 (_%link-path194824%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path194816%_ _%base-path194818%_)))
                 (_%link-path-c194826%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194824%_ '".c")))
                 (_%link-path-o194828%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194824%_ '".o")))
                 (_%gsc-link-opts194830%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?194814%_)))
                 (_%gsc-cc-opts194832%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?194814%_)))
                 (_%gcc-ld-opts194834%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp196248 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196246
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c194826%_
                                           (let ((__tmp196247
                                                  (cons _%path194813%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp196247
                                              _%gsc-link-opts194830%_))))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196248 __tmp196246))
            (let ((__tmp196251 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp196249
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp196250
                                            (cons _%path-c194820%_
                                                  (cons _%link-path-c194826%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp196250
                                        _%gsc-cc-opts194832%_)))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp196251 __tmp196249))
            (let ((__tmp196253 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp196252
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path194824%_
                                     (cons _%path-o194822%_
                                           (cons _%link-path-o194828%_
                                                 _%gcc-ld-opts194834%_)))))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp196253
               __tmp196252))
            (let ((__tmp196254
                   (cons _%path-c194820%_
                         (cons _%path-o194822%_
                               (cons _%link-path-c194826%_
                                     (cons _%link-path-o194828%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp196254))))))
    (define gxc#compile-output-file
      (lambda (_%ctx194779%_ _%n194780%_ _%ext194781%_)
        (letrec ((_%module-relative-path194783%_
                  (lambda (_%ctx194811%_)
                    (path-strip-directory
                     (let ((__tmp196255
                            (##structure-ref
                             _%ctx194811%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196255)))))
                 (_%module-source-directory194784%_
                  (lambda (_%ctx194807%_)
                    (path-directory
                     (let ((_%mpath194809%_
                            (##structure-ref
                             _%ctx194807%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath194809%_))
                           _%mpath194809%_
                           (last _%mpath194809%_))))))
                 (_%section-string194785%_
                  (lambda (_%n194801%_)
                    (if (let () (declare (not safe)) (number? _%n194801%_))
                        (let () (number->string _%n194801%_))
                        (if (let () (declare (not safe)) (symbol? _%n194801%_))
                            (let () (symbol->string _%n194801%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n194801%_))
                                (let () _%n194801%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n194801%_)))))))
                 (_%file-name194786%_
                  (lambda (_%path194799%_)
                    (if _%n194780%_
                        (string-append
                         _%path194799%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string194785%_ _%n194780%_))
                         _%ext194781%_)
                        (string-append _%path194799%_ _%ext194781%_))))
                 (_%file-path194787%_
                  (lambda ()
                    (let ((_%$e194793%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e194793%_
                          ((lambda (_%outdir194796%_)
                             (path-expand
                              (let ((__tmp196256
                                     (let ((__tmp196257
                                            (##structure-ref
                                             _%ctx194779%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp196257))))
                                (declare (not safe))
                                (_%file-name194786%_ __tmp196256))
                              _%outdir194796%_))
                           _%$e194793%_)
                          (let ()
                            (path-expand
                             (let ((__tmp196258
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path194783%_
                                       _%ctx194779%_))))
                               (declare (not safe))
                               (_%file-name194786%_ __tmp196258))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory194784%_
                                _%ctx194779%_)))))))))
          (let ((_%path194789%_
                 (let () (declare (not safe)) (_%file-path194787%_))))
            (let ((__tmp196259
                   (lambda ()
                     (let ((__tmp196260 (path-directory _%path194789%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196260)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196259))
            _%path194789%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx194760%_)
        (letrec ((_%file-name194762%_
                  (lambda (_%id194777%_)
                    (let ((__tmp196261
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id194777%_))))
                      (declare (not safe))
                      (##string-append __tmp196261 '".scm"))))
                 (_%file-path194763%_
                  (lambda ()
                    (let* ((_%file194769%_
                            (let ((__tmp196262
                                   (##structure-ref
                                    _%ctx194760%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name194762%_ __tmp196262)))
                           (_%$e194771%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e194771%_
                          ((lambda (_%outdir194774%_)
                             (path-expand
                              _%file194769%_
                              (path-expand '"static" _%outdir194774%_)))
                           _%$e194771%_)
                          (let () (path-expand _%file194769%_ '"static")))))))
          (let ((_%path194765%_
                 (let () (declare (not safe)) (_%file-path194763%_))))
            (let ((__tmp196263
                   (lambda ()
                     (let ((__tmp196264 (path-directory _%path194765%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196264)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196263))
            _%path194765%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx194753%_ _%opts194754%_)
        (let ((_%$e194756%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts194754%_))))
          (if _%$e194756%_
              (values _%$e194756%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx194753%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr194743%_)
        (if (let () (declare (not safe)) (string? _%idstr194743%_))
            (let ()
              (let* ((_%str194746%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr194743%_)))
                     (_%strs194748%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str194746%_ '#\/))))
                (declare (not safe))
                (string-join _%strs194748%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr194743%_))
                (let ((__tmp196265 (symbol->string _%idstr194743%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp196265))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr194743%_))))))
    (define gxc#invoke__%
      (lambda (_%@@keywords194708%_
               _%stdout-redirection194704194709%_
               _%stderr-redirection194705194711%_
               _%program194713%_
               _%args194714%_)
        (let* ((_%stdout-redirection194716%_
                (if (eq? _%stdout-redirection194704194709%_ absent-value)
                    '#f
                    _%stdout-redirection194704194709%_))
               (_%stderr-redirection194718%_
                (if (eq? _%stderr-redirection194705194711%_ absent-value)
                    '#f
                    _%stderr-redirection194705194711%_)))
          (let ((__tmp196266 (cons _%program194713%_ _%args194714%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196266))
          (let* ((_%proc194720%_
                  (open-process
                   (cons 'path:
                         (cons _%program194713%_
                               (cons 'arguments:
                                     (cons _%args194714%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection194716%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection194718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output194725%_
                  (if (or _%stdout-redirection194716%_
                          _%stderr-redirection194718%_)
                      (read-line _%proc194720%_ '#f)
                      '#f))
                 (_%status194728%_ (process-status _%proc194720%_)))
            (let () (declare (not safe)) (##close-port _%proc194720%_))
            (if (zero? _%status194728%_)
                '#!void
                (begin
                  (display _%output194725%_)
                  (let ((__tmp196267 (cons _%program194713%_ _%args194714%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196267
                     _%status194728%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords194733%_ . _%args194734%_)
        (apply gxc#invoke__%
               _%@@keywords194733%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194733%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194733%_
                  'stderr-redirection:
                  absent-value))
               _%args194734%_)))
    (define gxc#invoke
      (lambda _%args194706194740%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args194706194740%_)))
    (define gxc#join!
      (lambda (_%thread194698%_)
        (let ((__tmp196269
               (lambda (_%exn194700%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn194700%_))
                     (let ((__tmp196270
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn194700%_))))
                       (declare (not safe))
                       (raise __tmp196270))
                     (let () (declare (not safe)) (raise _%exn194700%_)))))
              (__tmp196268 (lambda () (thread-join! _%thread194698%_))))
          (declare (not safe))
          (__with-catch __tmp196269 __tmp196268))))))
