(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712161247)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp195266 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp195266))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp195267 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp195267))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path195172%_ _%fun195173%_)
        (with-output-to-file
         (cons 'path: (cons _%path195172%_ gxc#scheme-file-settings))
         _%fun195173%_)))
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
      (lambda (_%gerbil-libdir195167%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir195167%_)))
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
      (lambda (_%dir195165%_) (delete-file-or-directory _%dir195165%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath195139%_ _%opts195140%_)
        (if (let () (declare (not safe)) (string? _%srcpath195139%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195139%_)))
        (let ((_%outdir195142%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195140%_)))
              (_%invoke-gsc?195143%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195140%_)))
              (_%gsc-options195144%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195140%_)))
              (_%keep-scm?195145%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195140%_)))
              (_%verbosity195146%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195140%_)))
              (_%optimize195147%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts195140%_)))
              (_%debug195148%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts195140%_)))
              (_%gen-ssxi195149%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts195140%_))))
          (if _%outdir195142%_
              (let ((__tmp195268
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195142%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195268))
              '#!void)
          (if _%optimize195147%_
              (let ((__tmp195269
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195269))
              '#!void)
          (let ((__tmp195272
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath195139%_))
                   (let ((__tmp195273
                          (let ((__tmp195274
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195139%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp195274))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp195273))))
                (__tmp195271
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp195270
                 (cons 'compile-module (cons _%srcpath195139%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195272
             gxc#current-compile-output-dir
             _%outdir195142%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195143%_
             gxc#current-compile-gsc-options
             _%gsc-options195144%_
             gxc#current-compile-keep-scm
             _%keep-scm?195145%_
             gxc#current-compile-verbose
             _%verbosity195146%_
             gxc#current-compile-optimize
             _%optimize195147%_
             gxc#current-compile-debug
             _%debug195148%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi195149%_
             gxc#current-compile-timestamp
             __tmp195271
             gxc#current-compile-context
             __tmp195270
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath195158%_)
        (let ((_%opts195160%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath195158%_ _%opts195160%_))))
    (define gxc#compile-module
      (lambda _g195276_
        (let ((_g195275_ (let () (declare (not safe)) (##length _g195276_))))
          (cond ((let () (declare (not safe)) (##fx= _g195275_ 1))
                 (apply (lambda (_%srcpath195158%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath195158%_)))
                        _g195276_))
                ((let () (declare (not safe)) (##fx= _g195275_ 2))
                 (apply (lambda (_%srcpath195162%_ _%opts195163%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath195162%_
                             _%opts195163%_)))
                        _g195276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g195276_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath195115%_ _%opts195116%_)
        (if (let () (declare (not safe)) (string? _%srcpath195115%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath195115%_)))
        (let ((_%outdir195118%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts195116%_)))
              (_%invoke-gsc?195119%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts195116%_)))
              (_%gsc-options195120%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts195116%_)))
              (_%keep-scm?195121%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts195116%_)))
              (_%verbosity195122%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts195116%_)))
              (_%debug195123%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts195116%_))))
          (if _%outdir195118%_
              (let ((__tmp195277
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir195118%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp195277))
              '#!void)
          (let ((__tmp195280
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath195115%_))
                   (let ((__tmp195281
                          (let ((__tmp195282
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath195115%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp195282))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp195281
                      _%opts195116%_))))
                (__tmp195279
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp195278 (cons 'compile-exe (cons _%srcpath195115%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195280
             gxc#current-compile-output-dir
             _%outdir195118%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?195119%_
             gxc#current-compile-gsc-options
             _%gsc-options195120%_
             gxc#current-compile-keep-scm
             _%keep-scm?195121%_
             gxc#current-compile-verbose
             _%verbosity195122%_
             gxc#current-compile-debug
             _%debug195123%_
             gxc#current-compile-timestamp
             __tmp195279
             gxc#current-compile-context
             __tmp195278
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath195131%_)
        (let ((_%opts195133%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath195131%_ _%opts195133%_))))
    (define gxc#compile-exe
      (lambda _g195284_
        (let ((_g195283_ (let () (declare (not safe)) (##length _g195284_))))
          (cond ((let () (declare (not safe)) (##fx= _g195283_ 1))
                 (apply (lambda (_%srcpath195131%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath195131%_)))
                        _g195284_))
                ((let () (declare (not safe)) (##fx= _g195283_ 2))
                 (apply (lambda (_%srcpath195135%_ _%opts195136%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath195135%_
                             _%opts195136%_)))
                        _g195284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g195284_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx195111%_ _%opts195112%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts195112%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx195111%_
               _%opts195112%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx195111%_
               _%opts195112%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194988%_ _%opts194989%_)
        (letrec ((_%generate-stub194991%_
                  (lambda (_%builtin-modules195107%_)
                    (let ((_%mod-main195109%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194988%_ 'main))))
                      (let ((__tmp195285
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules195107%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp195285))
                      (let ((__tmp195286
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main195109%_
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
                        (##write __tmp195286))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194992%_
                  (lambda (_%libgerbil195105%_)
                    (let ((__tmp195287
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil195105%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp195287 read))))
                 (_%replace-extension194993%_
                  (lambda (_%path195102%_ _%ext195103%_)
                    (string-append
                     (path-strip-extension _%path195102%_)
                     _%ext195103%_)))
                 (_%not-exclude-module?194994%_
                  (lambda (_%ctx195098%_)
                    (let ((_%id-str195100%_
                           (symbol->string
                            (##structure-ref
                             _%ctx195098%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp195288
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str195100%_))))
                            (declare (not safe))
                            (not __tmp195288))
                          (let ((__tmp195289
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str195100%_))))
                            (declare (not safe))
                            (not __tmp195289))
                          '#f))))
                 (_%not-file-empty?194995%_
                  (lambda (_%path195096%_)
                    (let ((__tmp195290
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path195096%_))))
                      (declare (not safe))
                      (not __tmp195290))))
                 (_%compile-stub194996%_
                  (lambda (_%output-scm195003%_ _%output-bin195004%_)
                    (let* ((_%gerbil-home195006%_
                            (let ((__tmp195291
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195291)))
                           (_%gerbil-libdir195008%_
                            (path-expand '"lib" _%gerbil-home195006%_))
                           (_%gerbil-staticdir195010%_
                            (path-expand '"static" _%gerbil-libdir195008%_))
                           (_%gxlink195012%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir195008%_))
                           (_%tmp195014%_
                            (path-expand
                             (let ((__tmp195292
                                    (let ((__tmp195293
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp195293))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp195292))
                             '"/tmp"))
                           (_%tmp-path195018%_
                            (lambda (_%f195016%_)
                              (path-expand
                               (path-strip-directory _%f195016%_)
                               _%tmp195014%_)))
                           (_%deps195020%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194988%_)))
                           (_%deps195022%_
                            (filter _%not-exclude-module?194994%_
                                    _%deps195020%_))
                           (_%src-deps-scm195024%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps195022%_)))
                           (_%src-deps-scm195026%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194995%_
                               _%src-deps-scm195024%_)))
                           (_%src-deps-scm195028%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm195026%_)))
                           (_%deps-scm195030%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path195018%_
                                     _%src-deps-scm195028%_)))
                           (_%deps-c195036%_
                            (let ((__tmp195294
                                   (lambda (_%g195031195033%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194993%_
                                        _%g195031195033%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp195294 _%deps-scm195030%_)))
                           (_%deps-o195042%_
                            (let ((__tmp195295
                                   (lambda (_%g195037195039%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194993%_
                                        _%g195037195039%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp195295 _%deps-scm195030%_)))
                           (_%src-bin-scm195044%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194988%_)))
                           (_%src-bin-scm195046%_
                            (path-expand _%src-bin-scm195044%_))
                           (_%bin-scm195048%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path195018%_ _%src-bin-scm195046%_)))
                           (_%bin-c195050%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194993%_
                               _%bin-scm195048%_
                               '".c")))
                           (_%bin-o195052%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194993%_
                               _%bin-scm195048%_
                               '".o")))
                           (_%output-bin195054%_
                            (path-expand _%output-bin195004%_))
                           (_%output-scm195056%_
                            (path-expand _%output-scm195003%_))
                           (_%output-c195058%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194993%_
                               _%output-scm195056%_
                               '".c")))
                           (_%output-o195060%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194993%_
                               _%output-scm195056%_
                               '".o")))
                           (_%output_-c195062%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194993%_
                               _%output-scm195056%_
                               '"_.c")))
                           (_%output_-o195064%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194993%_
                               _%output-scm195056%_
                               '"_.o")))
                           (_%gsc-link-opts195066%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195068%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts195070%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir195010%_)))
                           (_%output-ld-opts195072%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a195074%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir195008%_))
                           (_%libgerbil.so195076%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir195008%_))
                           (_%libgerbil.dylib195078%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir195008%_))
                           (_%libgerbil-ld-opts195084%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so195076%_))
                                (let ()
                                  (declare (not safe))
                                  (_%get-libgerbil-ld-opts194992%_
                                   _%libgerbil.so195076%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib195078%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%get-libgerbil-ld-opts194992%_
                                       _%libgerbil.dylib195078%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a195074%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%get-libgerbil-ld-opts194992%_
                                           _%libgerbil.a195074%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _%libgerbil.a195074%_
                                           _%libgerbil.so195076%_
                                           _%libgerbil.dylib195078%_))))))
                           (_%rpath195086%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195008%_)))
                           (_%builtin-modules195090%_
                            (let ((__tmp195297
                                   (lambda (_%mod195088%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod195088%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp195296
                                   (cons _%ctx194988%_ _%deps195022%_)))
                              (declare (not safe))
                              (##map __tmp195297 __tmp195296))))
                      (let ((__tmp195298
                             (lambda ()
                               (let ((__tmp195299
                                      (path-directory _%output-bin195054%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195299)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195298))
                      (let ((__tmp195300
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub194991%_
                                  _%builtin-modules195090%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195056%_
                         __tmp195300))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp195301
                                   (lambda ()
                                     (create-directory _%tmp195014%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp195301))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm195028%_
                               _%deps-scm195030%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm195046%_
                               _%bin-scm195048%_))
                            (let ((__tmp195305
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp195302
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink195012%_
                                                     (let ((__tmp195303
                                                            (let ((__tmp195304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm195048%_
                                 (cons _%output-scm195056%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp195304 _%deps-scm195030%_))))
               (declare (not safe))
               (__foldr1 cons __tmp195303 _%gsc-link-opts195066%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195305
                               __tmp195302))
                            (let ((__tmp195310
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp195306
                                   (cons '"-obj"
                                         (let ((__tmp195307
                                                (let ((__tmp195308
                                                       (let ((__tmp195309
                                                              (cons _%bin-c195050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c195058%_
                                  (cons _%output_-c195062%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp195309 _%deps-c195036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195308
                                                   _%gsc-static-opts195070%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195307
                                            _%gsc-cc-opts195068%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195310
                               __tmp195306))
                            (let ((__tmp195314
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp195311
                                   (cons '"-o"
                                         (cons _%output-bin195054%_
                                               (let ((__tmp195312
                                                      (cons _%bin-o195052%_
                                                            (cons _%output-o195060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o195064%_
                                (let ((__tmp195313
                                       (cons _%rpath195086%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir195008%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts195084%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp195313
                                   _%output-ld-opts195072%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp195312
                                                  _%deps-o195042%_))))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195314
                               __tmp195311))
                            (let ((__tmp195315
                                   (cons _%output-c195058%_
                                         (cons _%output_-c195062%_
                                               (cons _%output-o195060%_
                                                     (cons _%output_-o195064%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp195315))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp195014%_)))
                          '#!void)))))
          (let* ((_%output-bin194998%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194988%_
                     _%opts194989%_)))
                 (_%output-scm195000%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194998%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194996%_
               _%output-scm195000%_
               _%output-bin194998%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm195000%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194813%_ _%opts194814%_)
        (letrec ((_%reset-declare194816%_
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
                 (_%generate-stub194817%_
                  (lambda (_%deps194979%_)
                    (let ((_%mod-main194981%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194813%_ 'main)))
                          (_%reset-decl194982%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare194816%_)))
                          (_%user-decl194983%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare194818%_))))
                      (for-each
                       (lambda (_%dep194985%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194982%_))
                         (newline)
                         (if _%user-decl194983%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194983%_))
                               (newline))
                             '#!void)
                         (let ((__tmp195316
                                (cons 'include (cons _%dep194985%_ '()))))
                           (declare (not safe))
                           (##write __tmp195316))
                         (newline))
                       _%deps194979%_)
                      (let ((__tmp195317
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp195317))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194818%_
                  (lambda ()
                    (let* ((_%gsc-opts194884%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194814%_)))
                           (_%gsc-prelude194886%_
                            (if _%gsc-opts194884%_
                                (member '"-prelude" _%gsc-opts194884%_)
                                '#f))
                           (_%gsc-prelude194888%_
                            (if _%gsc-prelude194886%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194886%_)))
                                '#f)))
                      (let _%lp194891%_ ((_%rest194893%_
                                          (cons _%gsc-prelude194888%_ '()))
                                         (_%user-decls194894%_ '()))
                        (let* ((_%rest194895194903%_ _%rest194893%_)
                               (_%else194897194911%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls194894%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194894%_)))))
                               (_%K194899194967%_
                                (lambda (_%rest194914%_ _%expr194915%_)
                                  (let* ((_%expr194916194928%_ _%expr194915%_)
                                         (_%else194919194936%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp194891%_
                                               _%rest194914%_
                                               _%user-decls194894%_)))))
                                    (let ((_%K194924194957%_
                                           (lambda (_%decls194955%_)
                                             (let ((__tmp195318
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls194894%_
                                                       _%decls194955%_))))
                                               (declare (not safe))
                                               (_%lp194891%_
                                                _%rest194914%_
                                                __tmp195318))))
                                          (_%K194921194942%_
                                           (lambda (_%exprs194940%_)
                                             (let ((__tmp195319
                                                    (append _%exprs194940%_
                                                            _%rest194914%_)))
                                               (declare (not safe))
                                               (_%lp194891%_
                                                __tmp195319
                                                _%user-decls194894%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194916194928%_))
                                          (let ((_%tl194926194962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194916194928%_)))
                                                (_%hd194925194960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194916194928%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194925194960%_
                                                         'declare))
                                                (let ((_%decls194965%_
                                                       _%tl194926194962%_))
                                                  (declare (not safe))
                                                  (_%K194924194957%_
                                                   _%decls194965%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194925194960%_
                                                             'begin))
                                                    (let ((_%exprs194950%_
                                                           _%tl194926194962%_))
                                                      (declare (not safe))
                                                      (_%K194921194942%_
                                                       _%exprs194950%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else194919194936%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194919194936%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194895194903%_))
                              (let ((_%hd194900194970%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194895194903%_)))
                                    (_%tl194901194972%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194895194903%_))))
                                (let* ((_%expr194975%_ _%hd194900194970%_)
                                       (_%rest194977%_ _%tl194901194972%_))
                                  (declare (not safe))
                                  (_%K194899194967%_
                                   _%rest194977%_
                                   _%expr194975%_)))
                              (let ()
                                (declare (not safe))
                                (_%else194897194911%_))))))))
                 (_%compile-stub194819%_
                  (lambda (_%output-scm194826%_ _%output-bin194827%_)
                    (let* ((_%gerbil-home194829%_
                            (let ((__tmp195320
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp195320)))
                           (_%gerbil-libdir194831%_
                            (path-expand '"lib" _%gerbil-home194829%_))
                           (_%runtime194833%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194835%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194829%_))
                           (_%include-gambit-sharp194837%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194835%_
                               '"\")")))
                           (_%bin-scm194839%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194813%_)))
                           (_%deps194841%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194813%_)))
                           (_%deps194843%_
                            (map gxc#find-static-module-file _%deps194841%_))
                           (_%deps194848%_
                            (let ((__tmp195321
                                   (lambda (_%$obj194845%_)
                                     (let ((__tmp195322
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj194845%_))))
                                       (declare (not safe))
                                       (not __tmp195322)))))
                              (declare (not safe))
                              (##filter __tmp195321 _%deps194843%_)))
                           (_%deps194852%_
                            (let ((__tmp195323
                                   (lambda (_%f194850%_)
                                     (let ((__tmp195324
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f194850%_
                                               _%runtime194833%_))))
                                       (declare (not safe))
                                       (not __tmp195324)))))
                              (declare (not safe))
                              (##filter __tmp195323 _%deps194848%_)))
                           (_%output-base194854%_
                            (let ((__tmp195325
                                   (path-strip-extension
                                    _%output-scm194826%_)))
                              (declare (not safe))
                              (##string-append __tmp195325)))
                           (_%output-c194856%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194854%_ '".c")))
                           (_%output-o194858%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194854%_ '".o")))
                           (_%output-c_194860%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194854%_ '"_.c")))
                           (_%output-o_194862%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194854%_ '"_.o")))
                           (_%gsc-link-opts194864%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194866%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194868%_
                            (let ((__tmp195326
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir194831%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp195326)))
                           (_%output-ld-opts194870%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros194872%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194837%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194837%_
                                            '()))))
                           (_%gsc-link-opts194874%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194864%_
                               _%gsc-gx-macros194872%_)))
                           (_%rpath194876%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194831%_)))
                           (_%default-ld-options194878%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp195327
                             (lambda ()
                               (let ((__tmp195328
                                      (path-directory _%output-bin194827%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp195328)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp195327))
                      (let ((__tmp195329
                             (lambda ()
                               (let ((__tmp195330
                                      (let ((__tmp195331
                                             (let ((__tmp195332
                                                    (cons _%bin-scm194839%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp195332
                                                _%deps194852%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195331
                                         _%runtime194833%_))))
                                 (declare (not safe))
                                 (_%generate-stub194817%_ __tmp195330)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194826%_
                         __tmp195329))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp195335
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp195333
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_194860%_
                                                     (let ((__tmp195334
                                                            (cons _%output-scm194826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp195334 _%gsc-link-opts194874%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195335
                               __tmp195333))
                            (let ((__tmp195339
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp195336
                                   (cons '"-obj"
                                         (let ((__tmp195337
                                                (let ((__tmp195338
                                                       (cons _%output-c194856%_
                                                             (cons _%output-c_194860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp195338
                                                   _%gsc-static-opts194868%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp195337
                                            _%gsc-cc-opts194866%_)))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195339
                               __tmp195336))
                            (let ((__tmp195342
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp195340
                                   (cons '"-o"
                                         (cons _%output-bin194827%_
                                               (cons _%output-o194858%_
                                                     (cons _%output-o_194862%_
                                                           (let ((__tmp195341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath194876%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir194831%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options194878%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp195341
                      _%output-ld-opts194870%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp195342
                               __tmp195340)))
                          '#!void)))))
          (let* ((_%output-bin194821%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194813%_
                     _%opts194814%_)))
                 (_%output-scm194823%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194821%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194819%_
               _%output-scm194823%_
               _%output-bin194821%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194823%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx194762%_ _%id194763%_)
        (let ((_%$e194809%_
               (let ((__tmp195344
                      (lambda (_%e194764194766%_)
                        (let* ((_%g194768194778%_ _%e194764194766%_)
                               (_%else194770194786%_ (lambda () '#f))
                               (_%K194772194790%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194768194778%_
                                 'gx#module-export::t))
                              (let* ((_%e194773194793%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194768194778%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194774194796%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194768194778%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194775194799%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194768194778%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194775194799%_ '0))
                                    (let ((_%e194776194802%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194768194778%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194804194806%_)
                                             (eq? _%g194804194806%_
                                                  _%id194763%_))
                                           _%e194776194802%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K194772194790%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194770194786%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else194770194786%_))))
                              (let ()
                                (declare (not safe))
                                (_%else194770194786%_))))))
                     (__tmp195343
                      (##structure-ref
                       _%ctx194762%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp195344 __tmp195343))))
          (if _%$e194809%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194809%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194753%_ _%id194754%_)
        (let ((_%$e194756%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx194753%_ _%id194754%_))))
          (if _%$e194756%_
              ((lambda (_%bind194759%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194759%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194754%_)))
                 (##structure-ref _%bind194759%_ '1 gx#binding::t '#f))
               _%$e194756%_)
              (let ((__tmp195345
                     (##structure-ref
                      _%ctx194753%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp195345
                 _%id194754%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx194619%_)
        (letrec* ((_%ht194621%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template194622%_
                   (lambda (_%in194698%_ _%phi194699%_)
                     (let ((_%iphi194701%_
                            (fx+ _%phi194699%_
                                 (##direct-structure-ref
                                  _%in194698%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194702%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194698%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194704%_ ((_%rest194706%_ _%imports194702%_)
                                          (_%r194707%_ '()))
                         (let* ((_%rest194708194716%_ _%rest194706%_)
                                (_%else194710194724%_ (lambda () _%r194707%_))
                                (_%K194712194741%_
                                 (lambda (_%rest194727%_ _%in194728%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194728%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi194701%_))
                                             (let ((__tmp195346
                                                    (cons _%in194728%_
                                                          _%r194707%_)))
                                               (declare (not safe))
                                               (_%lp194704%_
                                                _%rest194727%_
                                                __tmp195346))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp194704%_
                                                _%rest194727%_
                                                _%r194707%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194728%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194732%_
                                                  (fx+ _%phi194699%_
                                                       (##direct-structure-ref
                                                        _%in194728%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194732%_))
                                                 (let ((__tmp195347
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in194728%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r194707%_)))
                                                   (declare (not safe))
                                                   (_%lp194704%_
                                                    _%rest194727%_
                                                    __tmp195347))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp194704%_
                                                    _%rest194727%_
                                                    _%r194707%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194728%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194735%_
                                                      (fx+ _%iphi194701%_
                                                           (##direct-structure-ref
                                                            _%in194728%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194735%_))
                                                     (let ((__tmp195348
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in194728%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r194707%_)))
               (declare (not safe))
               (_%lp194704%_ _%rest194727%_ __tmp195348))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194735%_))
                                                         (let ((__tmp195349
                                                                (let ((__tmp195350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template194622%_
                                  _%in194728%_
                                  _%iphi194701%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r194707%_ __tmp195350))))
                   (declare (not safe))
                   (_%lp194704%_ _%rest194727%_ __tmp195349))
                 (let ()
                   (declare (not safe))
                   (_%lp194704%_ _%rest194727%_ _%r194707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp194704%_
                                                  _%rest194727%_
                                                  _%r194707%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194708194716%_))
                               (let ((_%hd194713194744%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194708194716%_)))
                                     (_%tl194714194746%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194708194716%_))))
                                 (let* ((_%in194749%_ _%hd194713194744%_)
                                        (_%rest194751%_ _%tl194714194746%_))
                                   (declare (not safe))
                                   (_%K194712194741%_
                                    _%rest194751%_
                                    _%in194749%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else194710194724%_))))))))
                  (_%find-deps194623%_
                   (lambda (_%rest194631%_ _%deps194632%_)
                     (let* ((_%rest194633194641%_ _%rest194631%_)
                            (_%else194635194649%_ (lambda () _%deps194632%_))
                            (_%K194637194686%_
                             (lambda (_%rest194652%_ _%hd194653%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd194653%_
                                      'gx#module-context::t))
                                   (let ((_%id194656%_
                                          (##structure-ref
                                           _%hd194653%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports194657%_
                                          (##structure-ref
                                           _%hd194653%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht194621%_
                                            _%id194656%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps194623%_
                                            _%rest194652%_
                                            _%deps194632%_))
                                         (let ((_%$e194660%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd194653%_))))
                                           (if _%$e194660%_
                                               ((lambda (_%pre194663%_)
                                                  (let ((_%xdeps194665%_
                                                         (let ((__tmp195351
                                                                (cons _%pre194663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports194657%_)))
                   (declare (not safe))
                   (_%find-deps194623%_ __tmp195351 _%deps194632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht194621%_
                                                       _%id194656%_
                                                       _%hd194653%_))
                                                    (let ((__tmp195352
                                                           (cons _%hd194653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps194665%_)))
              (declare (not safe))
              (_%find-deps194623%_ _%rest194652%_ __tmp195352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e194660%_)
                                               (let ((_%xdeps194668%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps194623%_
                                                         _%imports194657%_
                                                         _%deps194632%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht194621%_
                                                    _%id194656%_
                                                    _%hd194653%_))
                                                 (let ((__tmp195353
                                                        (cons _%hd194653%_
                                                              _%xdeps194668%_)))
                                                   (declare (not safe))
                                                   (_%find-deps194623%_
                                                    _%rest194652%_
                                                    __tmp195353)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd194653%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194671%_
                                              (##structure-ref
                                               _%hd194653%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht194621%_
                                                _%id194671%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps194623%_
                                                _%rest194652%_
                                                _%deps194632%_))
                                             (let ((_%xdeps194675%_
                                                    (let ((__tmp195354
                                                           (##structure-ref
                                                            _%hd194653%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps194623%_
                                                       __tmp195354
                                                       _%deps194632%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht194621%_
                                                      _%id194671%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps194623%_
                                                      _%rest194652%_
                                                      _%xdeps194675%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht194621%_
                                                        _%id194671%_
                                                        _%hd194653%_))
                                                     (let ((__tmp195355
                                                            (cons _%hd194653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps194675%_)))
               (declare (not safe))
               (_%find-deps194623%_ _%rest194652%_ __tmp195355)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd194653%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd194653%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp195356
                                                        (cons (##direct-structure-ref
                                                               _%hd194653%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest194652%_)))
                                                   (declare (not safe))
                                                   (_%find-deps194623%_
                                                    __tmp195356
                                                    _%deps194632%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps194623%_
                                                    _%rest194652%_
                                                    _%deps194632%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd194653%_
                                                  'gx#module-export::t))
                                               (let ((__tmp195357
                                                      (cons (##direct-structure-ref
                                                             _%hd194653%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest194652%_)))
                                                 (declare (not safe))
                                                 (_%find-deps194623%_
                                                  __tmp195357
                                                  _%deps194632%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd194653%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd194653%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp195358
                        (cons (##direct-structure-ref
                               _%hd194653%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest194652%_)))
                   (declare (not safe))
                   (_%find-deps194623%_ __tmp195358 _%deps194632%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd194653%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps194682%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template194622%_
                                  _%hd194653%_
                                  '0)))
                              (__tmp195359
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest194652%_
                                  _%xdeps194682%_))))
                         (declare (not safe))
                         (_%find-deps194623%_ __tmp195359 _%deps194632%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps194623%_ _%rest194652%_ _%deps194632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd194653%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest194633194641%_))
                           (let ((_%hd194638194689%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest194633194641%_)))
                                 (_%tl194639194691%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest194633194641%_))))
                             (let* ((_%hd194694%_ _%hd194638194689%_)
                                    (_%rest194696%_ _%tl194639194691%_))
                               (declare (not safe))
                               (_%K194637194686%_
                                _%rest194696%_
                                _%hd194694%_)))
                           (let ()
                             (declare (not safe))
                             (_%else194635194649%_)))))))
          (let ((__tmp195360
                 (filter gx#expander-context-id
                         (let ((__tmp195361
                                (let ((_%$e194625%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx194619%_))))
                                  (if _%$e194625%_
                                      ((lambda (_%pre194628%_)
                                         (cons _%pre194628%_
                                               (##structure-ref
                                                _%ctx194619%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e194625%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx194619%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps194623%_ __tmp195361 '())))))
            (declare (not safe))
            (##reverse __tmp195360)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx194549%_)
        (let* ((_%context-id194551%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx194549%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx194549%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx194549%_)))
               (_%scm194553%_
                (let ((__tmp195362
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id194551%_))))
                  (declare (not safe))
                  (##string-append __tmp195362 '".scm")))
               (_%dirs194555%_ (let () (declare (not safe)) (load-path)))
               (_%dirs194561%_
                (let ((_%user-libpath194557%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath194557%_
                      (let ((_%user-libpath194559%_
                             (path-expand '"lib" _%user-libpath194557%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath194559%_ _%dirs194555%_))
                            _%dirs194555%_
                            (cons _%user-libpath194559%_ _%dirs194555%_)))
                      _%dirs194555%_)))
               (_%dirs194571%_
                (let ((_%$e194563%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e194563%_
                      ((lambda (_%g194565194567%_)
                         (cons _%g194565194567%_ _%dirs194561%_))
                       _%$e194563%_)
                      (let () _%dirs194561%_))))
               (_%dirs194577%_
                (map (lambda (_%g194572194574%_)
                       (path-expand '"static" _%g194572194574%_))
                     _%dirs194571%_)))
          (let _%lp194580%_ ((_%rest194582%_ _%dirs194577%_))
            (let* ((_%rest194583194591%_ _%rest194582%_)
                   (_%else194585194599%_
                    (lambda ()
                      (let ((__tmp195363
                             (##structure-ref
                              _%ctx194549%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp195363
                         _%scm194553%_))))
                   (_%K194587194607%_
                    (lambda (_%rest194602%_ _%dir194603%_)
                      (let ((_%path194605%_
                             (path-expand _%scm194553%_ _%dir194603%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194605%_))
                            _%path194605%_
                            (let ()
                              (declare (not safe))
                              (_%lp194580%_ _%rest194602%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest194583194591%_))
                  (let ((_%hd194588194610%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194583194591%_)))
                        (_%tl194589194612%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194583194591%_))))
                    (let* ((_%dir194615%_ _%hd194588194610%_)
                           (_%rest194617%_ _%tl194589194612%_))
                      (declare (not safe))
                      (_%K194587194607%_ _%rest194617%_ _%dir194615%_)))
                  (let () (declare (not safe)) (_%else194585194599%_))))))))
    (define gxc#file-empty?
      (lambda (_%path194547%_)
        (zero? (let ((__tmp195364 (file-info _%path194547%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp195364)))))
    (define gxc#compile-top-module
      (lambda (_%ctx194536%_)
        (let ((__tmp195368
               (lambda ()
                 (let ((__tmp195369
                        (##structure-ref
                         _%ctx194536%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp195369))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp195370
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx194536%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp195370))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx194536%_))
                 (if (let ((__tmp195371
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx194536%_))))
                       (declare (not safe))
                       (null? __tmp195371))
                     (let* ((_%thr1194541%_
                             (let ((__tmp195372
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx194536%_)))))
                               (declare (not safe))
                               (__spawn __tmp195372)))
                            (_%thr2194544%_
                             (let ((__tmp195373
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx194536%_)))))
                               (declare (not safe))
                               (__spawn __tmp195373))))
                       (let () (declare (not safe)) (gxc#join! _%thr1194541%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2194544%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx194536%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx194536%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx194536%_))
                     '#!void)))
              (__tmp195367
               (let ((__obj195264
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj195264)
                 __obj195264))
              (__tmp195366 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp195365
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
           __tmp195368
           gx#current-expander-context
           _%ctx194536%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp195367
           gxc#current-compile-runtime-sections
           __tmp195366
           gxc#current-compile-runtime-names
           __tmp195365))))
    (define gxc#collect-bindings
      (lambda (_%ctx194534%_)
        (let ((__tmp195374
               (##structure-ref _%ctx194534%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp195374))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx194478%_)
        (letrec ((_%compile1194480%_
                  (lambda (_%ctx194521%_)
                    (let* ((_%code194523%_
                            (##structure-ref
                             _%ctx194521%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt194527%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code194523%_))
                                (let ((_%idstr194525%_
                                       (let ((__tmp195375
                                              (##structure-ref
                                               _%ctx194521%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp195375))))
                                  (declare (not safe))
                                  (##string-append _%idstr194525%_ '"~0"))
                                '#f)))
                      (if _%rt194527%_
                          (let ()
                            (let ((__tmp195376
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp195376
                               _%ctx194521%_
                               _%rt194527%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code194482%_
                               _%ctx194521%_
                               _%code194523%_)))
                          (let ((_%path194532%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx194521%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path194532%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code194483%_
                         _%ctx194521%_
                         _%code194523%_
                         _%rt194527%_)))))
                 (_%context-timestamp194481%_
                  (lambda (_%ctx194519%_)
                    (let ((__tmp195377
                           (let ((__tmp195378
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx194519%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp195378 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp195377))))
                 (_%generate-runtime-code194482%_
                  (lambda (_%ctx194501%_ _%code194502%_)
                    (let* ((_%lifts194504%_ (box '()))
                           (_%runtime-code194507%_
                            (let ((__tmp195381
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code194502%_))))
                                  (__tmp195380
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp195379
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195381
                               gx#current-expander-context
                               _%ctx194501%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts194504%_
                               gxc#current-compile-marks
                               __tmp195380
                               gxc#current-compile-identifiers
                               __tmp195379)))
                           (_%runtime-code194509%_
                            (if (let ((__tmp195382 (unbox _%lifts194504%_)))
                                  (declare (not safe))
                                  (null? __tmp195382))
                                _%runtime-code194507%_
                                (cons 'begin
                                      (let ((__tmp195384
                                             (cons _%runtime-code194507%_ '()))
                                            (__tmp195383
                                             (reverse (unbox _%lifts194504%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp195384
                                         __tmp195383)))))
                           (_%runtime-code194511%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp194481%_
                                                       _%ctx194501%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code194509%_ '()))))
                           (_%scm0194513%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx194501%_
                               '0
                               '".scm")))
                           (_%scms194516%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx194501%_))))
                      (let ((__tmp195385
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0194513%_
                                  _%runtime-code194511%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp195385
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms194516%_)
                          (delete-file _%scms194516%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0194513%_
                         '" => "
                         _%scms194516%_))
                      (copy-file _%scm0194513%_ _%scms194516%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0194513%_)))))
                 (_%generate-loader-code194483%_
                  (lambda (_%ctx194490%_ _%code194491%_ _%rt194492%_)
                    (let* ((_%loader-code194495%_
                            (let ((__tmp195386
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code194491%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp195386
                               gx#current-expander-context
                               _%ctx194490%_)))
                           (_%loader-code194497%_
                            (if _%rt194492%_
                                (cons 'begin
                                      (cons _%loader-code194495%_
                                            (cons (cons 'load-module
                                                        (cons _%rt194492%_
                                                              '()))
                                                  '())))
                                _%loader-code194495%_))
                           (__tmp195387
                            (lambda ()
                              (let ((__tmp195388
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx194490%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp195388
                                 _%loader-code194497%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195387
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules194485%_
                  (cons _%ctx194478%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx194478%_))))
                 (__tmp195389
                  (lambda (_%ctx194487%_)
                    (let ((__tmp195390
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1194480%_ _%ctx194487%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp195390
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp195389 _%all-modules194485%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx194373%_)
        (letrec ((_%compile-ssi194375%_
                  (lambda (_%code194446%_)
                    (let* ((_%path194448%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx194373%_
                               '#f
                               '".ssi")))
                           (_%prelude194460%_
                            (let* ((_%super194450%_
                                    (##structure-ref
                                     _%ctx194373%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e194452%_
                                    (##structure-ref
                                     _%super194450%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e194452%_
                                  ((lambda (_%g194454194456%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g194454194456%_)))
                                   _%$e194452%_)
                                  (let () ':<root>))))
                           (_%ns194462%_
                            (##structure-ref
                             _%ctx194373%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr194464%_
                            (symbol->string
                             (##structure-ref
                              _%ctx194373%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg194472%_
                            (let ((_%$e194466%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr194464%_ '#\/))))
                              (if _%$e194466%_
                                  ((lambda (_%x194469%_)
                                     (let ((__tmp195391
                                            (substring
                                             _%idstr194464%_
                                             '0
                                             _%x194469%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp195391)))
                                   _%$e194466%_)
                                  (let () '#f))))
                           (_%rt194474%_
                            (let ((__tmp195392
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp195392 _%ctx194373%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path194448%_))
                      (let ((__tmp195393
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude194460%_))
                               (if _%pkg194472%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg194472%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns194462%_))
                               (newline)
                               (pretty-print _%code194446%_)
                               (if _%rt194474%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt194474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path194448%_
                         __tmp195393)))))
                 (_%compile-phi194376%_
                  (lambda (_%part194386%_)
                    (let* ((_%part194387194400%_ _%part194386%_)
                           (_%E194389194404%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part194387194400%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K194390194415%_
                            (lambda (_%code194407%_
                                     _%n194408%_
                                     _%phi194409%_
                                     _%phi-ctx194410%_)
                              (let* ((_%code194413%_
                                      (let ((__tmp195394
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code194407%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp195394
                                         gx#current-expander-context
                                         _%phi-ctx194410%_
                                         gx#current-expander-phi
                                         _%phi194409%_)))
                                     (__tmp195395
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx194373%_
                                         _%n194408%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp195395
                                 _%code194413%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part194387194400%_))
                          (let ((_%hd194391194418%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part194387194400%_)))
                                (_%tl194392194420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part194387194400%_))))
                            (let ((_%phi-ctx194423%_ _%hd194391194418%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194392194420%_))
                                  (let ((_%hd194393194425%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194392194420%_)))
                                        (_%tl194394194427%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194392194420%_))))
                                    (let ((_%phi194430%_ _%hd194393194425%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl194394194427%_))
                                          (let ((_%hd194395194432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl194394194427%_)))
                                                (_%tl194396194434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl194394194427%_))))
                                            (let ((_%n194437%_
                                                   _%hd194395194432%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl194396194434%_))
                                                  (let ((_%hd194397194439%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl194396194434%_)))
                                                        (_%tl194398194441%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl194396194434%_))))
                                                    (let ((_%code194444%_
                                                           _%hd194397194439%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl194398194441%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K194390194415%_
                                                             _%code194444%_
                                                             _%n194437%_
                                                             _%phi194430%_
                                                             _%phi-ctx194423%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E194389194404%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E194389194404%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E194389194404%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E194389194404%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E194389194404%_)))))))
          (let ((_g195396_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx194373%_))))
            (begin
              (let ((_g195397_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g195396_)
                           (##vector-length _g195396_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g195397_ 2)))
                    (error "Context expects 2 values" _g195397_)))
              (let ((_%ssi-code194378%_
                     (let () (declare (not safe)) (##vector-ref _g195396_ 0)))
                    (_%phi-code194379%_
                     (let () (declare (not safe)) (##vector-ref _g195396_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi194375%_ _%ssi-code194378%_))
                  (let ((_%threads194384%_
                         (map (lambda (_%code194381%_)
                                (let ((__tmp195398
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi194376%_
                                            _%code194381%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp195398)))
                              _%phi-code194379%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads194384%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx194355%_)
        (let* ((_%path194357%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx194355%_ '#f '".ssxi.ss")))
               (_%code194359%_
                (let ((__tmp195399
                       (##structure-ref
                        _%ctx194355%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp195399)))
               (_%idstr194361%_
                (symbol->string
                 (##structure-ref
                  _%ctx194355%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg194369%_
                (let ((_%$e194363%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr194361%_ '#\/))))
                  (if _%$e194363%_
                      ((lambda (_%x194366%_)
                         (let ((__tmp195400
                                (substring _%idstr194361%_ '0 _%x194366%_)))
                           (declare (not safe))
                           (##string->symbol __tmp195400)))
                       _%$e194363%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path194357%_))
          (let ((__tmp195401
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg194369%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg194369%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code194359%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path194357%_ __tmp195401)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx194348%_)
        (let* ((_%state194350%_
                (let ((__obj195265
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj195265 _%ctx194348%_)
                  __obj195265))
               (_%ssi-code194352%_
                (let ((__tmp195402
                       (##structure-ref
                        _%ctx194348%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state194350%_
                   __tmp195402))))
          (values _%ssi-code194352%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state194350%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx194341%_)
        (let ((_%lifts194343%_ (box '())))
          (let ((__tmp195405
                 (lambda ()
                   (let ((_%code194346%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx194341%_))))
                     (if (let ((__tmp195406 (unbox _%lifts194343%_)))
                           (declare (not safe))
                           (null? __tmp195406))
                         _%code194346%_
                         (cons 'begin
                               (let ((__tmp195408 (cons _%code194346%_ '()))
                                     (__tmp195407
                                      (reverse (unbox _%lifts194343%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp195408 __tmp195407)))))))
                (__tmp195404
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp195403
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp195405
             gxc#current-compile-lift
             _%lifts194343%_
             gxc#current-compile-marks
             __tmp195404
             gxc#current-compile-identifiers
             __tmp195403)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx194337%_)
        (let ((_%modules194339%_ (box '())))
          (let ((__tmp195409
                 (##structure-ref _%ctx194337%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules194339%_ __tmp195409))
          (reverse (unbox _%modules194339%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path194320%_ _%code194321%_ _%phi?194322%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path194320%_))
        (let ((__tmp195410
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp195411
                                                 (if _%phi?194322%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp195411)))))))
                 (pretty-print _%code194321%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path194320%_ __tmp195410))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path194320%_ _%phi?194322%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path194320%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path194328%_ _%code194329%_)
        (let ((_%phi?194331%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path194328%_
           _%code194329%_
           _%phi?194331%_))))
    (define gxc#compile-scm-file
      (lambda _g195413_
        (let ((_g195412_ (let () (declare (not safe)) (##length _g195413_))))
          (cond ((let () (declare (not safe)) (##fx= _g195412_ 2))
                 (apply (lambda (_%path194328%_ _%code194329%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path194328%_
                             _%code194329%_)))
                        _g195413_))
                ((let () (declare (not safe)) (##fx= _g195412_ 3))
                 (apply (lambda (_%path194333%_ _%code194334%_ _%phi?194335%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path194333%_
                             _%code194334%_
                             _%phi?194335%_)))
                        _g195413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g195413_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?194221%_)
        (let _%lp194223%_ ((_%rest194225%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194226%_ '()))
          (let* ((_%rest194227194247%_ _%rest194225%_)
                 (_%else194231194255%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194221%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts194226%_)))
                        (reverse _%opts194226%_)))))
            (let ((_%K194241194298%_
                   (lambda (_%rest194296%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194223%_ _%rest194296%_ _%opts194226%_))))
                  (_%K194236194280%_
                   (lambda (_%rest194278%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194223%_ _%rest194278%_ _%opts194226%_))))
                  (_%K194233194262%_
                   (lambda (_%rest194259%_ _%opt194260%_)
                     (let ((__tmp195414 (cons _%opt194260%_ _%opts194226%_)))
                       (declare (not safe))
                       (_%lp194223%_ _%rest194259%_ __tmp195414)))))
              (if (let () (declare (not safe)) (##pair? _%rest194227194247%_))
                  (let ((_%tl194243194303%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194227194247%_)))
                        (_%hd194242194301%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194227194247%_))))
                    (if (equal? _%hd194242194301%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194243194303%_))
                            (let* ((_%tl194245194306%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194243194303%_)))
                                   (_%rest194309%_ _%tl194245194306%_))
                              (declare (not safe))
                              (_%K194241194298%_ _%rest194309%_))
                            (let ((_%opt194270%_ _%hd194242194301%_)
                                  (_%rest194272%_ _%tl194243194303%_))
                              (let ()
                                (declare (not safe))
                                (_%K194233194262%_
                                 _%rest194272%_
                                 _%opt194270%_))))
                        (if (equal? _%hd194242194301%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194243194303%_))
                                (let* ((_%tl194240194288%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194243194303%_)))
                                       (_%rest194291%_ _%tl194240194288%_))
                                  (declare (not safe))
                                  (_%K194236194280%_ _%rest194291%_))
                                (let ((_%opt194270%_ _%hd194242194301%_)
                                      (_%rest194272%_ _%tl194243194303%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K194233194262%_
                                     _%rest194272%_
                                     _%opt194270%_))))
                            (let ((_%opt194270%_ _%hd194242194301%_)
                                  (_%rest194272%_ _%tl194243194303%_))
                              (let ()
                                (declare (not safe))
                                (_%K194233194262%_
                                 _%rest194272%_
                                 _%opt194270%_))))))
                  (let () (declare (not safe)) (_%else194231194255%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?194315%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?194315%_))))
    (define gxc#gsc-link-options
      (lambda _g195416_
        (let ((_g195415_ (let () (declare (not safe)) (##length _g195416_))))
          (cond ((let () (declare (not safe)) (##fx= _g195415_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g195416_))
                ((let () (declare (not safe)) (##fx= _g195415_ 1))
                 (apply (lambda (_%phi?194317%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?194317%_)))
                        _g195416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g195416_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?194122%_)
        (let _%lp194124%_ ((_%rest194126%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194127%_ '()))
          (let* ((_%rest194128194148%_ _%rest194126%_)
                 (_%else194132194156%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?194122%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts194127%_)))
                        (reverse _%opts194127%_)))))
            (let ((_%K194142194195%_
                   (lambda (_%rest194192%_ _%opt194193%_)
                     (let ((__tmp195417
                            (let ((__tmp195418
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts194127%_))))
                              (declare (not safe))
                              (cons _%opt194193%_ __tmp195418))))
                       (declare (not safe))
                       (_%lp194124%_ _%rest194192%_ __tmp195417))))
                  (_%K194137194176%_
                   (lambda (_%rest194174%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194124%_ _%rest194174%_ _%opts194127%_))))
                  (_%K194134194162%_
                   (lambda (_%rest194160%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194124%_ _%rest194160%_ _%opts194127%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194128194148%_))
                  (let ((_%tl194144194200%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194128194148%_)))
                        (_%hd194143194198%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194128194148%_))))
                    (if (equal? _%hd194143194198%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194144194200%_))
                            (let ((_%tl194146194205%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl194144194200%_)))
                                  (_%hd194145194203%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl194144194200%_))))
                              (let ((_%opt194208%_ _%hd194145194203%_)
                                    (_%rest194210%_ _%tl194146194205%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K194142194195%_
                                   _%rest194210%_
                                   _%opt194208%_))))
                            (let ((_%rest194168%_ _%tl194144194200%_))
                              (declare (not safe))
                              (_%K194134194162%_ _%rest194168%_)))
                        (if (equal? _%hd194143194198%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194144194200%_))
                                (let* ((_%tl194141194184%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl194144194200%_)))
                                       (_%rest194187%_ _%tl194141194184%_))
                                  (declare (not safe))
                                  (_%K194137194176%_ _%rest194187%_))
                                (let ((_%rest194168%_ _%tl194144194200%_))
                                  (declare (not safe))
                                  (_%K194134194162%_ _%rest194168%_)))
                            (let ((_%rest194168%_ _%tl194144194200%_))
                              (declare (not safe))
                              (_%K194134194162%_ _%rest194168%_)))))
                  (let () (declare (not safe)) (_%else194132194156%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?194216%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?194216%_))))
    (define gxc#gsc-cc-options
      (lambda _g195420_
        (let ((_g195419_ (let () (declare (not safe)) (##length _g195420_))))
          (cond ((let () (declare (not safe)) (##fx= _g195419_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g195420_))
                ((let () (declare (not safe)) (##fx= _g195419_ 1))
                 (apply (lambda (_%phi?194218%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?194218%_)))
                        _g195420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g195420_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir194117%_)
        (let ((_%user-staticdir194119%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir194117%_
                       '" -I "
                       _%user-staticdir194119%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194029%_ ((_%rest194031%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194032%_ '()))
          (let* ((_%rest194033194053%_ _%rest194031%_)
                 (_%else194037194061%_ (lambda () _%opts194032%_)))
            (let ((_%K194047194104%_
                   (lambda (_%rest194102%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194029%_ _%rest194102%_ _%opts194032%_))))
                  (_%K194042194082%_
                   (lambda (_%rest194079%_ _%opt194080%_)
                     (let ((__tmp195421
                            (let ((__tmp195422
                                   (let ((__tmp195423
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt194080%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp195423))))
                              (declare (not safe))
                              (##append _%opts194032%_ __tmp195422))))
                       (declare (not safe))
                       (_%lp194029%_ _%rest194079%_ __tmp195421))))
                  (_%K194039194067%_
                   (lambda (_%rest194065%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194029%_ _%rest194065%_ _%opts194032%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194033194053%_))
                  (let ((_%tl194049194109%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194033194053%_)))
                        (_%hd194048194107%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194033194053%_))))
                    (if (equal? _%hd194048194107%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194049194109%_))
                            (let* ((_%tl194051194112%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194049194109%_)))
                                   (_%rest194115%_ _%tl194051194112%_))
                              (declare (not safe))
                              (_%K194047194104%_ _%rest194115%_))
                            (let ((_%rest194073%_ _%tl194049194109%_))
                              (declare (not safe))
                              (_%K194039194067%_ _%rest194073%_)))
                        (if (equal? _%hd194048194107%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194049194109%_))
                                (let ((_%tl194046194092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194049194109%_)))
                                      (_%hd194045194090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194049194109%_))))
                                  (let ((_%opt194095%_ _%hd194045194090%_)
                                        (_%rest194097%_ _%tl194046194092%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K194042194082%_
                                       _%rest194097%_
                                       _%opt194095%_))))
                                (let ((_%rest194073%_ _%tl194049194109%_))
                                  (declare (not safe))
                                  (_%K194039194067%_ _%rest194073%_)))
                            (let ((_%rest194073%_ _%tl194049194109%_))
                              (declare (not safe))
                              (_%K194039194067%_ _%rest194073%_)))))
                  (let () (declare (not safe)) (_%else194037194061%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str194026%_)
        (let ((__tmp195424
               (let () (declare (not safe)) (string-empty? _%str194026%_))))
          (declare (not safe))
          (not __tmp195424))))
    (define gxc#gsc-compile-file
      (lambda (_%path193994%_ _%phi?193995%_)
        (letrec ((_%gsc-link-path193997%_
                  (lambda (_%base-path194018%_)
                    (let _%lp194020%_ ((_%n194022%_ '1))
                      (let ((_%path194024%_
                             (let ((__tmp195425 (number->string _%n194022%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path194018%_
                                '".o"
                                __tmp195425))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path194024%_))
                            (let ((__tmp195426
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n194022%_ '1))))
                              (declare (not safe))
                              (_%lp194020%_ __tmp195426))
                            _%path194024%_))))))
          (let* ((_%base-path193999%_ (path-strip-extension _%path193994%_))
                 (_%path-c194001%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193999%_ '".c")))
                 (_%path-o194003%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193999%_ '".o")))
                 (_%link-path194005%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path193997%_ _%base-path193999%_)))
                 (_%link-path-c194007%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194005%_ '".c")))
                 (_%link-path-o194009%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path194005%_ '".o")))
                 (_%gsc-link-opts194011%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?193995%_)))
                 (_%gsc-cc-opts194013%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?193995%_)))
                 (_%gcc-ld-opts194015%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp195429 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp195427
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c194007%_
                                           (let ((__tmp195428
                                                  (cons _%path193994%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp195428
                                              _%gsc-link-opts194011%_))))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp195429 __tmp195427))
            (let ((__tmp195432 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp195430
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp195431
                                            (cons _%path-c194001%_
                                                  (cons _%link-path-c194007%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp195431
                                        _%gsc-cc-opts194013%_)))))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp195432 __tmp195430))
            (let ((__tmp195434 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp195433
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path194005%_
                                     (cons _%path-o194003%_
                                           (cons _%link-path-o194009%_
                                                 _%gcc-ld-opts194015%_)))))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp195434
               __tmp195433))
            (let ((__tmp195435
                   (cons _%path-c194001%_
                         (cons _%path-o194003%_
                               (cons _%link-path-c194007%_
                                     (cons _%link-path-o194009%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp195435))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193960%_ _%n193961%_ _%ext193962%_)
        (letrec ((_%module-relative-path193964%_
                  (lambda (_%ctx193992%_)
                    (path-strip-directory
                     (let ((__tmp195436
                            (##structure-ref
                             _%ctx193992%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp195436)))))
                 (_%module-source-directory193965%_
                  (lambda (_%ctx193988%_)
                    (path-directory
                     (let ((_%mpath193990%_
                            (##structure-ref
                             _%ctx193988%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath193990%_))
                           _%mpath193990%_
                           (last _%mpath193990%_))))))
                 (_%section-string193966%_
                  (lambda (_%n193982%_)
                    (if (let () (declare (not safe)) (number? _%n193982%_))
                        (let () (number->string _%n193982%_))
                        (if (let () (declare (not safe)) (symbol? _%n193982%_))
                            (let () (symbol->string _%n193982%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n193982%_))
                                (let () _%n193982%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193982%_)))))))
                 (_%file-name193967%_
                  (lambda (_%path193980%_)
                    (if _%n193961%_
                        (string-append
                         _%path193980%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string193966%_ _%n193961%_))
                         _%ext193962%_)
                        (string-append _%path193980%_ _%ext193962%_))))
                 (_%file-path193968%_
                  (lambda ()
                    (let ((_%$e193974%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193974%_
                          ((lambda (_%outdir193977%_)
                             (path-expand
                              (let ((__tmp195437
                                     (let ((__tmp195438
                                            (##structure-ref
                                             _%ctx193960%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp195438))))
                                (declare (not safe))
                                (_%file-name193967%_ __tmp195437))
                              _%outdir193977%_))
                           _%$e193974%_)
                          (let ()
                            (path-expand
                             (let ((__tmp195439
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path193964%_
                                       _%ctx193960%_))))
                               (declare (not safe))
                               (_%file-name193967%_ __tmp195439))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory193965%_
                                _%ctx193960%_)))))))))
          (let ((_%path193970%_
                 (let () (declare (not safe)) (_%file-path193968%_))))
            (let ((__tmp195440
                   (lambda ()
                     (let ((__tmp195441 (path-directory _%path193970%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195441)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195440))
            _%path193970%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193941%_)
        (letrec ((_%file-name193943%_
                  (lambda (_%id193958%_)
                    (let ((__tmp195442
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id193958%_))))
                      (declare (not safe))
                      (##string-append __tmp195442 '".scm"))))
                 (_%file-path193944%_
                  (lambda ()
                    (let* ((_%file193950%_
                            (let ((__tmp195443
                                   (##structure-ref
                                    _%ctx193941%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name193943%_ __tmp195443)))
                           (_%$e193952%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193952%_
                          ((lambda (_%outdir193955%_)
                             (path-expand
                              _%file193950%_
                              (path-expand '"static" _%outdir193955%_)))
                           _%$e193952%_)
                          (let () (path-expand _%file193950%_ '"static")))))))
          (let ((_%path193946%_
                 (let () (declare (not safe)) (_%file-path193944%_))))
            (let ((__tmp195444
                   (lambda ()
                     (let ((__tmp195445 (path-directory _%path193946%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp195445)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp195444))
            _%path193946%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193934%_ _%opts193935%_)
        (let ((_%$e193937%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193935%_))))
          (if _%$e193937%_
              (values _%$e193937%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx193934%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr193924%_)
        (if (let () (declare (not safe)) (string? _%idstr193924%_))
            (let ()
              (let* ((_%str193927%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr193924%_)))
                     (_%strs193929%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str193927%_ '#\/))))
                (declare (not safe))
                (string-join _%strs193929%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr193924%_))
                (let ((__tmp195446 (symbol->string _%idstr193924%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp195446))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193924%_))))))
    (define gxc#invoke__%
      (lambda (_%_193888%_
               _%stdout-redirection193884193890%_
               _%stderr-redirection193885193892%_
               _%program193894%_
               _%args193895%_)
        (let* ((_%stdout-redirection193897%_
                (if (eq? _%stdout-redirection193884193890%_ absent-value)
                    '#f
                    _%stdout-redirection193884193890%_))
               (_%stderr-redirection193899%_
                (if (eq? _%stderr-redirection193885193892%_ absent-value)
                    '#f
                    _%stderr-redirection193885193892%_)))
          (let ((__tmp195447 (cons _%program193894%_ _%args193895%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp195447))
          (let* ((_%proc193901%_
                  (open-process
                   (cons 'path:
                         (cons _%program193894%_
                               (cons 'arguments:
                                     (cons _%args193895%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193897%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193906%_
                  (if (or _%stdout-redirection193897%_
                          _%stderr-redirection193899%_)
                      (read-line _%proc193901%_ '#f)
                      '#f))
                 (_%status193909%_ (process-status _%proc193901%_)))
            (let () (declare (not safe)) (##close-port _%proc193901%_))
            (if (zero? _%status193909%_)
                '#!void
                (begin
                  (display _%output193906%_)
                  (let ((__tmp195448 (cons _%program193894%_ _%args193895%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp195448
                     _%status193909%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193914%_ . _%args193915%_)
        (apply gxc#invoke__%
               _%@@keywords193914%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193914%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193914%_
                  'stderr-redirection:
                  absent-value))
               _%args193915%_)))
    (define gxc#invoke
      (lambda _%args193886193921%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193886193921%_)))
    (define gxc#join!
      (lambda (_%thread193878%_)
        (let ((__tmp195450
               (lambda (_%exn193880%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn193880%_))
                     (let ((__tmp195451
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn193880%_))))
                       (declare (not safe))
                       (raise __tmp195451))
                     (let () (declare (not safe)) (raise _%exn193880%_)))))
              (__tmp195449 (lambda () (thread-join! _%thread193878%_))))
          (declare (not safe))
          (__with-catch __tmp195450 __tmp195449))))))
