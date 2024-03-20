(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710954841)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda () (inexact->exact (floor (time->seconds (current-time))))))
    (define gxc#compile-timestamp-nanos
      (lambda () (time->seconds (current-time))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_path160212_ _fun160213_)
        (with-output-to-file
         (let ((__tmp160306
                (let ()
                  (declare (not safe))
                  (cons _path160212_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp160306))
         _fun160213_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (getenv '"GERBIL_GSC" gxc#default-gerbil-gsc)))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (getenv '"GERBIL_GCC" gxc#default-gerbil-gcc)))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+ (getenv '"GERBIL_AR" gxc#default-gerbil-ar)))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_gerbil-libdir160207_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir160207_)))
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
      (lambda (_dir160205_) (delete-file-or-directory _dir160205_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath160179_ _opts160180_)
        (if (let () (declare (not safe)) (string? _srcpath160179_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160179_)))
        (let ((_outdir160182_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160180_)))
              (_invoke-gsc?160183_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160180_)))
              (_gsc-options160184_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160180_)))
              (_keep-scm?160185_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160180_)))
              (_verbosity160186_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160180_)))
              (_optimize160187_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts160180_)))
              (_debug160188_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160180_)))
              (_gen-ssxi160189_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts160180_))))
          (if _outdir160182_
              (let ((__tmp160307
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160182_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160307))
              '#!void)
          (if _optimize160187_
              (let ((__tmp160308
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160308))
              '#!void)
          (let ((__tmp160312
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath160179_))
                   (let ((__tmp160313
                          (let ((__tmp160314
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160179_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160314))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp160313))))
                (__tmp160311
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160309
                 (let ((__tmp160310
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160179_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp160310))))
            (declare (not safe))
            (call-with-parameters
             __tmp160312
             gxc#current-compile-output-dir
             _outdir160182_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160183_
             gxc#current-compile-gsc-options
             _gsc-options160184_
             gxc#current-compile-keep-scm
             _keep-scm?160185_
             gxc#current-compile-verbose
             _verbosity160186_
             gxc#current-compile-optimize
             _optimize160187_
             gxc#current-compile-debug
             _debug160188_
             gxc#current-compile-generate-ssxi
             _gen-ssxi160189_
             gxc#current-compile-timestamp
             __tmp160311
             gxc#current-compile-context
             __tmp160309
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath160198_)
        (let ((_opts160200_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath160198_ _opts160200_))))
    (define gxc#compile-module
      (lambda _g160316_
        (let ((_g160315_ (let () (declare (not safe)) (##length _g160316_))))
          (cond ((let () (declare (not safe)) (##fx= _g160315_ 1))
                 (apply (lambda (_srcpath160198_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath160198_)))
                        _g160316_))
                ((let () (declare (not safe)) (##fx= _g160315_ 2))
                 (apply (lambda (_srcpath160202_ _opts160203_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath160202_
                             _opts160203_)))
                        _g160316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g160316_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath160155_ _opts160156_)
        (if (let () (declare (not safe)) (string? _srcpath160155_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160155_)))
        (let ((_outdir160158_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160156_)))
              (_invoke-gsc?160159_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160156_)))
              (_gsc-options160160_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160156_)))
              (_keep-scm?160161_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160156_)))
              (_verbosity160162_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160156_)))
              (_debug160163_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160156_))))
          (if _outdir160158_
              (let ((__tmp160317
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160158_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160317))
              '#!void)
          (let ((__tmp160321
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath160155_))
                   (let ((__tmp160322
                          (let ((__tmp160323
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160155_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160323))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160322
                      _opts160156_))))
                (__tmp160320
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160318
                 (let ((__tmp160319
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160155_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160319))))
            (declare (not safe))
            (call-with-parameters
             __tmp160321
             gxc#current-compile-output-dir
             _outdir160158_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160159_
             gxc#current-compile-gsc-options
             _gsc-options160160_
             gxc#current-compile-keep-scm
             _keep-scm?160161_
             gxc#current-compile-verbose
             _verbosity160162_
             gxc#current-compile-debug
             _debug160163_
             gxc#current-compile-timestamp
             __tmp160320
             gxc#current-compile-context
             __tmp160318
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath160171_)
        (let ((_opts160173_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath160171_ _opts160173_))))
    (define gxc#compile-exe
      (lambda _g160325_
        (let ((_g160324_ (let () (declare (not safe)) (##length _g160325_))))
          (cond ((let () (declare (not safe)) (##fx= _g160324_ 1))
                 (apply (lambda (_srcpath160171_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath160171_)))
                        _g160325_))
                ((let () (declare (not safe)) (##fx= _g160324_ 2))
                 (apply (lambda (_srcpath160175_ _opts160176_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath160175_ _opts160176_)))
                        _g160325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160325_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx160151_ _opts160152_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts160152_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx160151_
               _opts160152_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx160151_
               _opts160152_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx160034_ _opts160035_)
        (letrec ((_generate-stub160037_
                  (lambda (_builtin-modules160147_)
                    (let ((_mod-main160149_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx160034_ 'main))))
                      (write (let ((__tmp160326
                                    (let ((__tmp160327
                                           (let ((__tmp160328
                                                  (let ((__tmp160329
                                                         (let ((__tmp160331
                                                                (let ((__tmp160332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules160147_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160332)))
                       (__tmp160330
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160331 __tmp160330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160329))))
                                             (declare (not safe))
                                             (cons __tmp160328 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160327))))
                               (declare (not safe))
                               (cons 'define __tmp160326)))
                      (write (let ((__tmp160333
                                    (let ((__tmp160372
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160334
                                           (let ((__tmp160335
                                                  (let ((__tmp160336
                                                         (let ((__tmp160360
                                                                (let ((__tmp160361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160362
                                      (let ((__tmp160370
                                             (let ((__tmp160371
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp160371)))
                                            (__tmp160363
                                             (let ((__tmp160364
                                                    (let ((__tmp160365
                                                           (let ((__tmp160366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160367
                                 (let ((__tmp160368
                                        (let ((__tmp160369
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160369 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160368))))
                            (declare (not safe))
                            (cons __tmp160367 '()))))
                     (declare (not safe))
                     (cons _mod-main160149_ __tmp160366))))
              (declare (not safe))
              (cons 'apply __tmp160365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160364 '()))))
                                        (declare (not safe))
                                        (cons __tmp160370 __tmp160363))))
                                 (declare (not safe))
                                 (cons '() __tmp160362))))
                          (declare (not safe))
                          (cons 'lambda __tmp160361)))
                       (__tmp160337
                        (let ((__tmp160338
                               (let ((__tmp160339
                                      (let ((__tmp160340
                                             (let ((__tmp160351
                                                    (let ((__tmp160352
                                                           (let ((__tmp160353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160354
                                 (let ((__tmp160355
                                        (let ((__tmp160356
                                               (let ((__tmp160357
                                                      (let ((__tmp160358
                                                             (let ((__tmp160359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160359 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160357 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160356))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160355))))
                            (declare (not safe))
                            (cons __tmp160354 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160353))))
              (declare (not safe))
              (cons 'with-catch __tmp160352)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160341
                                                    (let ((__tmp160342
                                                           (let ((__tmp160343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160344
                                 (let ((__tmp160345
                                        (let ((__tmp160346
                                               (let ((__tmp160347
                                                      (let ((__tmp160348
                                                             (let ((__tmp160349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp160350
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160350 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160349))))
                (declare (not safe))
                (cons __tmp160348 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160347))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160346))))
                                   (declare (not safe))
                                   (cons __tmp160345 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160344))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160343))))
              (declare (not safe))
              (cons __tmp160342 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160351
                                                     __tmp160341))))
                                        (declare (not safe))
                                        (cons '() __tmp160340))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160339))))
                          (declare (not safe))
                          (cons __tmp160338 '()))))
                   (declare (not safe))
                   (cons __tmp160360 __tmp160337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160336))))
                                             (declare (not safe))
                                             (cons __tmp160335 '()))))
                                      (declare (not safe))
                                      (cons __tmp160372 __tmp160334))))
                               (declare (not safe))
                               (cons 'define __tmp160333)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts160038_
                  (lambda (_libgerbil160145_)
                    (call-with-input-file
                     (string-append _libgerbil160145_ '".ldd")
                     read)))
                 (_replace-extension160039_
                  (lambda (_path160142_ _ext160143_)
                    (string-append
                     (path-strip-extension _path160142_)
                     _ext160143_)))
                 (_not-exclude-module?160040_
                  (lambda (_ctx160138_)
                    (let ((_id-str160140_
                           (symbol->string
                            (##structure-ref
                             _ctx160138_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160374
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str160140_))))
                            (declare (not safe))
                            (not __tmp160374))
                          (let ((__tmp160373
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str160140_))))
                            (declare (not safe))
                            (not __tmp160373))
                          '#f))))
                 (_not-file-empty?160041_
                  (lambda (_path160136_)
                    (let ((__tmp160375
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path160136_))))
                      (declare (not safe))
                      (not __tmp160375))))
                 (_compile-stub160042_
                  (lambda (_output-scm160049_ _output-bin160050_)
                    (let* ((_gerbil-home160052_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir160054_
                            (path-expand '"lib" _gerbil-home160052_))
                           (_gerbil-staticdir160056_
                            (path-expand '"static" _gerbil-libdir160054_))
                           (_gxlink160058_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir160054_))
                           (_tmp160060_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path160064_
                            (lambda (_f160062_)
                              (path-expand
                               (path-strip-directory _f160062_)
                               _tmp160060_)))
                           (_deps160066_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx160034_)))
                           (_deps160068_
                            (filter _not-exclude-module?160040_ _deps160066_))
                           (_src-deps-scm160070_
                            (map gxc#find-static-module-file _deps160068_))
                           (_src-deps-scm160072_
                            (filter _not-file-empty?160041_
                                    _src-deps-scm160070_))
                           (_src-deps-scm160074_
                            (map path-expand _src-deps-scm160072_))
                           (_deps-scm160076_
                            (map _tmp-path160064_ _src-deps-scm160074_))
                           (_deps-c160082_
                            (map (lambda (_g160077160079_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160039_
                                      _g160077160079_
                                      '".c")))
                                 _deps-scm160076_))
                           (_deps-o160088_
                            (map (lambda (_g160083160085_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160039_
                                      _g160083160085_
                                      '".o")))
                                 _deps-scm160076_))
                           (_src-bin-scm160090_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx160034_)))
                           (_src-bin-scm160092_
                            (path-expand _src-bin-scm160090_))
                           (_bin-scm160094_
                            (let ()
                              (declare (not safe))
                              (_tmp-path160064_ _src-bin-scm160092_)))
                           (_bin-c160096_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160039_
                               _bin-scm160094_
                               '".c")))
                           (_bin-o160098_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160039_
                               _bin-scm160094_
                               '".o")))
                           (_output-bin160100_
                            (path-expand _output-bin160050_))
                           (_output-scm160102_
                            (path-expand _output-scm160049_))
                           (_output-c160104_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160039_
                               _output-scm160102_
                               '".c")))
                           (_output-o160106_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160039_
                               _output-scm160102_
                               '".o")))
                           (_output_-c160108_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160039_
                               _output-scm160102_
                               '"_.c")))
                           (_output_-o160110_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160039_
                               _output-scm160102_
                               '"_.o")))
                           (_gsc-link-opts160112_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts160114_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts160116_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir160056_)))
                           (_output-ld-opts160118_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a160120_
                            (path-expand '"libgerbil.a" _gerbil-libdir160054_))
                           (_libgerbil.so160122_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir160054_))
                           (_libgerbil-ld-opts160124_
                            (if (file-exists? _libgerbil.so160122_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts160038_
                                   _libgerbil.so160122_))
                                (if (file-exists? _libgerbil.a160120_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts160038_
                                       _libgerbil.a160120_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a160120_
                                       _libgerbil.so160122_)))))
                           (_rpath160126_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir160054_)))
                           (_builtin-modules160130_
                            (map (lambda (_mod160128_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod160128_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx160034_ _deps160068_)))))
                      (let ((__tmp160376
                             (lambda ()
                               (let ((__tmp160377
                                      (path-directory _output-bin160100_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160377)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160376))
                      (let ((__tmp160378
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub160037_
                                  _builtin-modules160130_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm160102_
                         __tmp160378))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160379
                                   (lambda () (create-directory _tmp160060_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160379))
                            (for-each
                             copy-file
                             _src-deps-scm160074_
                             _deps-scm160076_)
                            (copy-file _src-bin-scm160092_ _bin-scm160094_)
                            (let ((__tmp160387
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160380
                                   (let ((__tmp160381
                                          (let ((__tmp160382
                                                 (let ((__tmp160383
                                                        (let ((__tmp160384
                                                               (let ((__tmp160385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160386
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm160102_ '()))))
                                (declare (not safe))
                                (cons _bin-scm160094_ __tmp160386))))
                         (declare (not safe))
                         (foldr1 cons __tmp160385 _deps-scm160076_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160384 _gsc-link-opts160112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink160058_
                                                         __tmp160383))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160382))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160381))))
                              (declare (not safe))
                              (gxc#invoke __tmp160387 __tmp160380))
                            (let ((__tmp160395
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160388
                                   (let ((__tmp160389
                                          (let ((__tmp160390
                                                 (let ((__tmp160391
                                                        (let ((__tmp160392
                                                               (let ((__tmp160393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160394
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c160108_ '()))))
                                (declare (not safe))
                                (cons _output-c160104_ __tmp160394))))
                         (declare (not safe))
                         (cons _bin-c160096_ __tmp160393))))
                  (declare (not safe))
                  (foldr1 cons __tmp160392 _deps-c160082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160391
                                                           _gsc-static-opts160116_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160390
                                                    _gsc-cc-opts160114_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160389))))
                              (declare (not safe))
                              (gxc#invoke __tmp160395 __tmp160388))
                            (let ((__tmp160408
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160396
                                   (let ((__tmp160397
                                          (let ((__tmp160398
                                                 (let ((__tmp160399
                                                        (let ((__tmp160400
                                                               (let ((__tmp160401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160402
                                     (let ((__tmp160403
                                            (let ((__tmp160404
                                                   (let ((__tmp160405
                                                          (let ((__tmp160406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160407
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts160124_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160407))))
                    (declare (not safe))
                    (cons _gerbil-libdir160054_ __tmp160406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160405))))
                                              (declare (not safe))
                                              (cons _rpath160126_
                                                    __tmp160404))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160403
                                               _output-ld-opts160118_))))
                                (declare (not safe))
                                (cons _output_-o160110_ __tmp160402))))
                         (declare (not safe))
                         (cons _output-o160106_ __tmp160401))))
                  (declare (not safe))
                  (cons _bin-o160098_ __tmp160400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160399
                                                           _deps-o160088_))))
                                            (declare (not safe))
                                            (cons _output-bin160100_
                                                  __tmp160398))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160397))))
                              (declare (not safe))
                              (gxc#invoke __tmp160408 __tmp160396))
                            (for-each
                             delete-file
                             (let ((__tmp160409
                                    (let ((__tmp160410
                                           (let ((__tmp160411
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o160110_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o160106_
                                                   __tmp160411))))
                                      (declare (not safe))
                                      (cons _output_-c160108_ __tmp160410))))
                               (declare (not safe))
                               (cons _output-c160104_ __tmp160409)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp160060_)))
                          '#!void)))))
          (let* ((_output-bin160044_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx160034_ _opts160035_)))
                 (_output-scm160046_
                  (string-append _output-bin160044_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub160042_ _output-scm160046_ _output-bin160044_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm160046_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159859_ _opts159860_)
        (letrec ((_reset-declare159862_
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
                 (_generate-stub159863_
                  (lambda (_deps160025_)
                    (let ((_mod-main160027_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159859_ 'main)))
                          (_reset-decl160028_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159862_)))
                          (_user-decl160029_
                           (let ()
                             (declare (not safe))
                             (_user-declare159864_))))
                      (for-each
                       (lambda (_dep160031_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl160028_)
                         (newline)
                         (if _user-decl160029_
                             (begin (write _user-decl160029_) (newline))
                             '#!void)
                         (write (let ((__tmp160412
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep160031_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160412)))
                         (newline))
                       _deps160025_)
                      (write (let ((__tmp160413
                                    (let ((__tmp160426
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160414
                                           (let ((__tmp160422
                                                  (let ((__tmp160423
                                                         (let ((__tmp160424
                                                                (let ((__tmp160425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160425))))
                   (declare (not safe))
                   (cons __tmp160424 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160423)))
                                                 (__tmp160415
                                                  (let ((__tmp160416
                                                         (let ((__tmp160417
                                                                (let ((__tmp160418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160419
                                      (let ((__tmp160420
                                             (let ((__tmp160421
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160421 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160420))))
                                 (declare (not safe))
                                 (cons __tmp160419 '()))))
                          (declare (not safe))
                          (cons _mod-main160027_ __tmp160418))))
                   (declare (not safe))
                   (cons 'apply __tmp160417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160416 '()))))
                                             (declare (not safe))
                                             (cons __tmp160422 __tmp160415))))
                                      (declare (not safe))
                                      (cons __tmp160426 __tmp160414))))
                               (declare (not safe))
                               (cons 'define __tmp160413)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159864_
                  (lambda ()
                    (let* ((_gsc-opts159930_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159860_)))
                           (_gsc-prelude159932_
                            (if _gsc-opts159930_
                                (member '"-prelude" _gsc-opts159930_)
                                '#f))
                           (_gsc-prelude159934_
                            (if _gsc-prelude159932_
                                (read (open-input-string
                                       (cadr _gsc-prelude159932_)))
                                '#f)))
                      (let _lp159937_ ((_rest159939_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159934_ '())))
                                       (_user-decls159940_ '()))
                        (let* ((_rest159941159949_ _rest159939_)
                               (_else159943159957_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159940_))
                                      '#f
                                      (let ((__tmp160427
                                             (reverse _user-decls159940_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160427)))))
                               (_K159945160013_
                                (lambda (_rest159960_ _expr159961_)
                                  (let* ((_expr159962159974_ _expr159961_)
                                         (_else159965159982_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159937_
                                               _rest159960_
                                               _user-decls159940_)))))
                                    (let ((_K159970160003_
                                           (lambda (_decls160001_)
                                             (let ((__tmp160428
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159940_
                                                              _decls160001_))))
                                               (declare (not safe))
                                               (_lp159937_
                                                _rest159960_
                                                __tmp160428))))
                                          (_K159967159988_
                                           (lambda (_exprs159986_)
                                             (let ((__tmp160429
                                                    (append _exprs159986_
                                                            _rest159960_)))
                                               (declare (not safe))
                                               (_lp159937_
                                                __tmp160429
                                                _user-decls159940_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159962159974_))
                                          (let ((_tl159972160008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159962159974_)))
                                                (_hd159971160006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159962159974_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159971160006_
                                                         'declare))
                                                (let ((_decls160011_
                                                       _tl159972160008_))
                                                  (declare (not safe))
                                                  (_K159970160003_
                                                   _decls160011_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159971160006_
                                                             'begin))
                                                    (let ((_exprs159996_
                                                           _tl159972160008_))
                                                      (declare (not safe))
                                                      (_K159967159988_
                                                       _exprs159996_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159965159982_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159965159982_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159941159949_))
                              (let ((_hd159946160016_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159941159949_)))
                                    (_tl159947160018_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159941159949_))))
                                (let* ((_expr160021_ _hd159946160016_)
                                       (_rest160023_ _tl159947160018_))
                                  (declare (not safe))
                                  (_K159945160013_ _rest160023_ _expr160021_)))
                              (let ()
                                (declare (not safe))
                                (_else159943159957_))))))))
                 (_compile-stub159865_
                  (lambda (_output-scm159872_ _output-bin159873_)
                    (let* ((_gerbil-home159875_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159877_
                            (path-expand '"lib" _gerbil-home159875_))
                           (_runtime159879_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159881_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159875_))
                           (_include-gambit-sharp159883_
                            (string-append
                             '"(include \""
                             _gambit-sharp159881_
                             '"\")"))
                           (_bin-scm159885_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159859_)))
                           (_deps159887_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159859_)))
                           (_deps159889_
                            (map gxc#find-static-module-file _deps159887_))
                           (_deps159894_
                            (filter (lambda (_$obj159891_)
                                      (let ((__tmp160430
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159891_))))
                                        (declare (not safe))
                                        (not __tmp160430)))
                                    _deps159889_))
                           (_deps159898_
                            (filter (lambda (_f159896_)
                                      (let ((__tmp160431
                                             (member _f159896_
                                                     _runtime159879_)))
                                        (declare (not safe))
                                        (not __tmp160431)))
                                    _deps159894_))
                           (_output-base159900_
                            (string-append
                             (path-strip-extension _output-scm159872_)))
                           (_output-c159902_
                            (string-append _output-base159900_ '".c"))
                           (_output-o159904_
                            (string-append _output-base159900_ '".o"))
                           (_output-c_159906_
                            (string-append _output-base159900_ '"_.c"))
                           (_output-o_159908_
                            (string-append _output-base159900_ '"_.o"))
                           (_gsc-link-opts159910_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159912_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159914_
                            (let ((__tmp160432
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159877_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160432)))
                           (_output-ld-opts159916_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159918_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160434
                                       (let ((__tmp160435
                                              (let ((__tmp160436
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159883_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160436))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160435))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160434))
                                (let ((__tmp160433
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159883_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160433))))
                           (_gsc-link-opts159920_
                            (append _gsc-link-opts159910_
                                    _gsc-gx-macros159918_))
                           (_rpath159922_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159877_)))
                           (_default-ld-options159924_
                            (let ((__tmp160437
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160437))))
                      (let ((__tmp160438
                             (lambda ()
                               (let ((__tmp160439
                                      (path-directory _output-bin159873_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160439)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160438))
                      (let ((__tmp160440
                             (lambda ()
                               (let ((__tmp160441
                                      (let ((__tmp160442
                                             (let ((__tmp160443
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159885_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160443
                                                       _deps159898_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160442
                                                _runtime159879_))))
                                 (declare (not safe))
                                 (_generate-stub159863_ __tmp160441)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159872_
                         __tmp160440))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160449
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160444
                                   (let ((__tmp160445
                                          (let ((__tmp160446
                                                 (let ((__tmp160447
                                                        (let ((__tmp160448
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159872_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160448 _gsc-link-opts159920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159906_
                                                         __tmp160447))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160446))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160445))))
                              (declare (not safe))
                              (gxc#invoke __tmp160449 __tmp160444))
                            (let ((__tmp160455
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160450
                                   (let ((__tmp160451
                                          (let ((__tmp160452
                                                 (let ((__tmp160453
                                                        (let ((__tmp160454
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159906_ '()))))
                  (declare (not safe))
                  (cons _output-c159902_ __tmp160454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160453
                                                           _gsc-static-opts159914_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160452
                                                    _gsc-cc-opts159912_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160451))))
                              (declare (not safe))
                              (gxc#invoke __tmp160455 __tmp160450))
                            (let ((__tmp160465
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160456
                                   (let ((__tmp160457
                                          (let ((__tmp160458
                                                 (let ((__tmp160459
                                                        (let ((__tmp160460
                                                               (let ((__tmp160461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160462
                                     (let ((__tmp160463
                                            (let ((__tmp160464
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159924_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159877_
                                                    __tmp160464))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160463))))
                                (declare (not safe))
                                (cons _rpath159922_ __tmp160462))))
                         (declare (not safe))
                         (foldr1 cons __tmp160461 _output-ld-opts159916_))))
                  (declare (not safe))
                  (cons _output-o_159908_ __tmp160460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159904_
                                                         __tmp160459))))
                                            (declare (not safe))
                                            (cons _output-bin159873_
                                                  __tmp160458))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160457))))
                              (declare (not safe))
                              (gxc#invoke __tmp160465 __tmp160456)))
                          '#!void)))))
          (let* ((_output-bin159867_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159859_ _opts159860_)))
                 (_output-scm159869_
                  (string-append _output-bin159867_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159865_ _output-scm159869_ _output-bin159867_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159869_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159809_ _id159810_)
        (let ((_$e159856_
               (let ((__tmp160467
                      (lambda (_e159811159813_)
                        (let* ((_g159815159825_ _e159811159813_)
                               (_else159817159833_ (lambda () '#f))
                               (_K159819159837_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159815159825_
                                 'gx#module-export::t))
                              (let* ((_e159820159840_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159815159825_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159821159843_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159815159825_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159822159846_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159815159825_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159822159846_ '0))
                                    (let ((_e159823159849_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159815159825_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159851159853_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159851159853_
                                                    _id159810_)))
                                           _e159823159849_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159819159837_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159817159833_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159817159833_))))
                              (let ()
                                (declare (not safe))
                                (_else159817159833_))))))
                     (__tmp160466
                      (##structure-ref
                       _ctx159809_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160467 __tmp160466))))
          (if _$e159856_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159856_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159801_ _id159802_)
        (let ((_$e159804_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159801_ _id159802_))))
          (if _$e159804_
              ((lambda (_bind159807_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159807_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159802_)))
                 (##structure-ref _bind159807_ '1 gx#binding::t '#f))
               _$e159804_)
              (let ((__tmp160468
                     (##structure-ref
                      _ctx159801_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160468
                 _id159802_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159688_)
        (letrec* ((_ht159690_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159691_
                   (lambda (_in159753_ _phi159754_)
                     (let ((_iphi159756_
                            (fx+ _phi159754_
                                 (##direct-structure-ref
                                  _in159753_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159757_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159753_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159759_ ((_rest159761_ _imports159757_)
                                        (_r159762_ '()))
                         (let* ((_rest159763159771_ _rest159761_)
                                (_else159765159779_ (lambda () _r159762_))
                                (_K159767159789_
                                 (lambda (_rest159782_ _in159783_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159783_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159756_))
                                           (let ((__tmp160475
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159783_
                                                          _r159762_))))
                                             (declare (not safe))
                                             (_lp159759_
                                              _rest159782_
                                              __tmp160475))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159759_
                                              _rest159782_
                                              _r159762_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159783_
                                              'gx#module-import::t))
                                           (let ((_iphi159785_
                                                  (fx+ _phi159754_
                                                       (##direct-structure-ref
                                                        _in159783_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159785_))
                                                 (let ((__tmp160473
                                                        (let ((__tmp160474
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159783_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160474 _r159762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159759_
                                                    _rest159782_
                                                    __tmp160473))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159759_
                                                    _rest159782_
                                                    _r159762_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159783_
                                                  'gx#import-set::t))
                                               (let ((_xphi159787_
                                                      (fx+ _iphi159756_
                                                           (##direct-structure-ref
                                                            _in159783_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159787_))
                                                     (let ((__tmp160471
                                                            (let ((__tmp160472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159783_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160472 _r159762_))))
               (declare (not safe))
               (_lp159759_ _rest159782_ __tmp160471))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159787_)
                                                         (let ((__tmp160469
                                                                (let ((__tmp160470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159691_
                                  _in159783_
                                  _iphi159756_))))
                          (declare (not safe))
                          (foldl1 cons _r159762_ __tmp160470))))
                   (declare (not safe))
                   (_lp159759_ _rest159782_ __tmp160469))
                 (let ()
                   (declare (not safe))
                   (_lp159759_ _rest159782_ _r159762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159759_
                                                  _rest159782_
                                                  _r159762_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159763159771_))
                               (let ((_hd159768159792_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159763159771_)))
                                     (_tl159769159794_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159763159771_))))
                                 (let* ((_in159797_ _hd159768159792_)
                                        (_rest159799_ _tl159769159794_))
                                   (declare (not safe))
                                   (_K159767159789_ _rest159799_ _in159797_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159765159779_))))))))
                  (_find-deps159692_
                   (lambda (_rest159699_ _deps159700_)
                     (let* ((_rest159701159709_ _rest159699_)
                            (_else159703159717_ (lambda () _deps159700_))
                            (_K159705159741_
                             (lambda (_rest159720_ _hd159721_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159721_
                                      'gx#module-context::t))
                                   (let ((_id159723_
                                          (##structure-ref
                                           _hd159721_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159724_
                                          (##structure-ref
                                           _hd159721_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159690_ _id159723_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159692_
                                            _rest159720_
                                            _deps159700_))
                                         (let ((_$e159726_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159721_))))
                                           (if _$e159726_
                                               ((lambda (_pre159729_)
                                                  (let ((_xdeps159731_
                                                         (let ((__tmp160488
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159729_ _imports159724_))))
                   (declare (not safe))
                   (_find-deps159692_ __tmp160488 _deps159700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159690_
                                                       _id159723_
                                                       _hd159721_))
                                                    (let ((__tmp160489
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159731_))))
              (declare (not safe))
              (_find-deps159692_ _rest159720_ __tmp160489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159726_)
                                               (let ((_xdeps159733_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159692_
                                                         _imports159724_
                                                         _deps159700_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159690_
                                                    _id159723_
                                                    _hd159721_))
                                                 (let ((__tmp160487
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159721_
                                                                _xdeps159733_))))
                                                   (declare (not safe))
                                                   (_find-deps159692_
                                                    _rest159720_
                                                    __tmp160487)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159721_
                                          'gx#prelude-context::t))
                                       (let ((_id159735_
                                              (##structure-ref
                                               _hd159721_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159690_
                                                _id159735_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159692_
                                                _rest159720_
                                                _deps159700_))
                                             (let ((_xdeps159737_
                                                    (let ((__tmp160485
                                                           (##structure-ref
                                                            _hd159721_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159692_
                                                       __tmp160485
                                                       _deps159700_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159690_
                                                      _id159735_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159692_
                                                      _rest159720_
                                                      _xdeps159737_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159690_
                                                        _id159735_
                                                        _hd159721_))
                                                     (let ((__tmp160486
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159737_))))
               (declare (not safe))
               (_find-deps159692_ _rest159720_ __tmp160486)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159721_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160484
                                                      (##direct-structure-ref
                                                       _hd159721_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160484))
                                               (let ((__tmp160482
                                                      (let ((__tmp160483
                                                             (##direct-structure-ref
                                                              _hd159721_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160483
                                                              _rest159720_))))
                                                 (declare (not safe))
                                                 (_find-deps159692_
                                                  __tmp160482
                                                  _deps159700_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159692_
                                                  _rest159720_
                                                  _deps159700_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159721_
                                                  'gx#module-export::t))
                                               (let ((__tmp160480
                                                      (let ((__tmp160481
                                                             (##direct-structure-ref
                                                              _hd159721_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160481
                                                              _rest159720_))))
                                                 (declare (not safe))
                                                 (_find-deps159692_
                                                  __tmp160480
                                                  _deps159700_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159721_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160479
                                                              (##direct-structure-ref
                                                               _hd159721_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160479))
                                                       (let ((__tmp160477
                                                              (let ((__tmp160478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159721_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160478 _rest159720_))))
                 (declare (not safe))
                 (_find-deps159692_ __tmp160477 _deps159700_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159721_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159739_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159691_ _hd159721_ '0)))
                          (__tmp160476
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159720_ _xdeps159739_))))
                     (declare (not safe))
                     (_find-deps159692_ __tmp160476 _deps159700_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159692_ _rest159720_ _deps159700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159721_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159701159709_))
                           (let ((_hd159706159744_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159701159709_)))
                                 (_tl159707159746_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159701159709_))))
                             (let* ((_hd159749_ _hd159706159744_)
                                    (_rest159751_ _tl159707159746_))
                               (declare (not safe))
                               (_K159705159741_ _rest159751_ _hd159749_)))
                           (let ()
                             (declare (not safe))
                             (_else159703159717_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160490
                                  (let ((_$e159694_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159688_))))
                                    (if _$e159694_
                                        ((lambda (_pre159697_)
                                           (let ((__tmp160491
                                                  (##structure-ref
                                                   _ctx159688_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159697_ __tmp160491)))
                                         _$e159694_)
                                        (##structure-ref
                                         _ctx159688_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159692_ __tmp160490 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159619_)
        (let* ((_context-id159621_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159619_
                       'gx#module-context::t))
                    (##structure-ref _ctx159619_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159619_)))
               (_scm159623_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159621_))
                 '".scm"))
               (_dirs159625_ (let () (declare (not safe)) (load-path)))
               (_dirs159631_
                (let ((_user-libpath159627_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159627_
                      (let ((_user-libpath159629_
                             (path-expand '"lib" _user-libpath159627_)))
                        (if (member _user-libpath159629_ _dirs159625_)
                            _dirs159625_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159629_ _dirs159625_))))
                      _dirs159625_)))
               (_dirs159640_
                (let ((_$e159633_ (gxc#current-compile-output-dir)))
                  (if _$e159633_
                      ((lambda (_g159635159637_)
                         (let ()
                           (declare (not safe))
                           (cons _g159635159637_ _dirs159631_)))
                       _$e159633_)
                      _dirs159631_)))
               (_dirs159646_
                (map (lambda (_g159641159643_)
                       (path-expand '"static" _g159641159643_))
                     _dirs159640_)))
          (let _lp159649_ ((_rest159651_ _dirs159646_))
            (let* ((_rest159652159660_ _rest159651_)
                   (_else159654159668_
                    (lambda ()
                      (let ((__tmp160492
                             (##structure-ref
                              _ctx159619_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160492
                         _scm159623_))))
                   (_K159656159676_
                    (lambda (_rest159671_ _dir159672_)
                      (let ((_path159674_
                             (path-expand _scm159623_ _dir159672_)))
                        (if (file-exists? _path159674_)
                            _path159674_
                            (let ()
                              (declare (not safe))
                              (_lp159649_ _rest159671_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159652159660_))
                  (let ((_hd159657159679_
                         (let ()
                           (declare (not safe))
                           (##car _rest159652159660_)))
                        (_tl159658159681_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159652159660_))))
                    (let* ((_dir159684_ _hd159657159679_)
                           (_rest159686_ _tl159658159681_))
                      (declare (not safe))
                      (_K159656159676_ _rest159686_ _dir159684_)))
                  (let () (declare (not safe)) (_else159654159668_))))))))
    (define gxc#file-empty?
      (lambda (_path159617_)
        (let ((__tmp160493 (file-info-size (file-info _path159617_ '#t))))
          (declare (not safe))
          (zero? __tmp160493))))
    (define gxc#compile-top-module
      (lambda (_ctx159606_)
        (let ((__tmp160497
               (lambda ()
                 (let ((__tmp160498
                        (##structure-ref
                         _ctx159606_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160498))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160499
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159606_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160499))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159606_))
                 (if (let ((__tmp160502
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159606_))))
                       (declare (not safe))
                       (null? __tmp160502))
                     (let* ((_thr1159611_
                             (let ((__tmp160500
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159606_)))))
                               (declare (not safe))
                               (spawn __tmp160500)))
                            (_thr2159614_
                             (let ((__tmp160501
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159606_)))))
                               (declare (not safe))
                               (spawn __tmp160501))))
                       (let () (declare (not safe)) (gxc#join! _thr1159611_))
                       (let () (declare (not safe)) (gxc#join! _thr2159614_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159606_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159606_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159606_))
                     '#!void)))
              (__tmp160496
               (let ((__obj160304
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj160304)
                 __obj160304))
              (__tmp160495 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160494 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160497
           gx#current-expander-context
           _ctx159606_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160496
           gxc#current-compile-runtime-sections
           __tmp160495
           gxc#current-compile-runtime-names
           __tmp160494))))
    (define gxc#collect-bindings
      (lambda (_ctx159604_)
        (let ((__tmp160503
               (##structure-ref _ctx159604_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160503))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159550_)
        (letrec ((_compile1159552_
                  (lambda (_ctx159593_)
                    (let* ((_code159595_
                            (##structure-ref
                             _ctx159593_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159599_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159595_))
                                (let ((_idstr159597_
                                       (let ((__tmp160504
                                              (##structure-ref
                                               _ctx159593_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160504))))
                                  (string-append _idstr159597_ '"~0"))
                                '#f)))
                      (if _rt159599_
                          (begin
                            (let ((__tmp160505
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160505 _ctx159593_ _rt159599_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159554_
                               _ctx159593_
                               _code159595_)))
                          (let ((_path159602_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159593_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159602_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159555_
                         _ctx159593_
                         _code159595_
                         _rt159599_)))))
                 (_context-timestamp159553_
                  (lambda (_ctx159591_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159591_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159554_
                  (lambda (_ctx159573_ _code159574_)
                    (let* ((_lifts159576_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159579_
                            (let ((__tmp160508
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159574_))))
                                  (__tmp160507
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160506
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160508
                               gx#current-expander-context
                               _ctx159573_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159576_
                               gxc#current-compile-marks
                               __tmp160507
                               gxc#current-compile-identifiers
                               __tmp160506)))
                           (_runtime-code159581_
                            (if (let ((__tmp160512 (unbox _lifts159576_)))
                                  (declare (not safe))
                                  (null? __tmp160512))
                                _runtime-code159579_
                                (let ((__tmp160509
                                       (let ((__tmp160511
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159579_
                                                      '())))
                                             (__tmp160510
                                              (reverse (unbox _lifts159576_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160511
                                                 __tmp160510))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160509))))
                           (_runtime-code159583_
                            (let ((__tmp160513
                                   (let ((__tmp160515
                                          (let ((__tmp160516
                                                 (let ((__tmp160519
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159553_
                                                           _ctx159573_)))
                                                       (__tmp160517
                                                        (let ((__tmp160518
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160518
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160519
                                                         __tmp160517))))
                                            (declare (not safe))
                                            (cons 'define __tmp160516)))
                                         (__tmp160514
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159581_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160515 __tmp160514))))
                              (declare (not safe))
                              (cons 'begin __tmp160513)))
                           (_scm0159585_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159573_
                               '0
                               '".scm"))))
                      (let ((_scms159588_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159573_))))
                        (let ((__tmp160520
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159585_
                                    _runtime-code159583_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160520
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159588_)
                            (delete-file _scms159588_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159585_
                           '" => "
                           _scms159588_))
                        (copy-file _scm0159585_ _scms159588_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159585_))))))
                 (_generate-loader-code159555_
                  (lambda (_ctx159562_ _code159563_ _rt159564_)
                    (let* ((_loader-code159567_
                            (let ((__tmp160521
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159563_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160521
                               gx#current-expander-context
                               _ctx159562_)))
                           (_loader-code159569_
                            (if _rt159564_
                                (let ((__tmp160522
                                       (let ((__tmp160523
                                              (let ((__tmp160524
                                                     (let ((__tmp160525
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160524 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159567_
                                               __tmp160523))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160522))
                                _loader-code159567_)))
                      (let ((__tmp160526
                             (lambda ()
                               (let ((__tmp160527
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159562_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160527
                                  _loader-code159569_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160526
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159557_
                 (let ((__tmp160528
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159550_))))
                   (declare (not safe))
                   (cons _ctx159550_ __tmp160528))))
            (for-each
             (lambda (_ctx159559_)
               (let ((__tmp160529
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159552_ _ctx159559_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160529
                  gxc#current-compile-decls
                  '())))
             _all-modules159557_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159447_)
        (letrec ((_compile-ssi159449_
                  (lambda (_code159520_)
                    (let* ((_path159522_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159447_
                               '#f
                               '".ssi")))
                           (_prelude159533_
                            (let* ((_super159524_
                                    (##structure-ref
                                     _ctx159447_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159526_
                                    (##structure-ref
                                     _super159524_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159526_
                                  ((lambda (_g159528159530_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159528159530_)))
                                   _$e159526_)
                                  ':<root>)))
                           (_ns159535_
                            (##structure-ref
                             _ctx159447_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159537_
                            (symbol->string
                             (##structure-ref
                              _ctx159447_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159544_
                            (let ((_$e159539_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159537_ '#\/))))
                              (if _$e159539_
                                  ((lambda (_x159542_)
                                     (string->symbol
                                      (substring _idstr159537_ '0 _x159542_)))
                                   _$e159539_)
                                  '#f)))
                           (_rt159546_
                            (let ((__tmp160530
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160530 _ctx159447_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159522_))
                      (let ((__tmp160531
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159533_))
                               (if _pkg159544_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159544_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159535_))
                               (newline)
                               (pretty-print _code159520_)
                               (if _rt159546_
                                   (pretty-print
                                    (let ((__tmp160532
                                           (let ((__tmp160536
                                                  (let ((__tmp160537
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160537)))
                                                 (__tmp160533
                                                  (let ((__tmp160534
                                                         (let ((__tmp160535
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159546_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160535))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160534 '()))))
                                             (declare (not safe))
                                             (cons __tmp160536 __tmp160533))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160532)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159522_
                         __tmp160531)))))
                 (_compile-phi159450_
                  (lambda (_part159460_)
                    (let* ((_part159461159474_ _part159460_)
                           (_E159463159478_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159461159474_))))
                           (_K159464159489_
                            (lambda (_code159481_
                                     _n159482_
                                     _phi159483_
                                     _phi-ctx159484_)
                              (let* ((_code159487_
                                      (let ((__tmp160538
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159481_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160538
                                         gx#current-expander-context
                                         _phi-ctx159484_
                                         gx#current-expander-phi
                                         _phi159483_)))
                                     (__tmp160539
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159447_
                                         _n159482_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160539
                                 _code159487_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159461159474_))
                          (let ((_hd159465159492_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159461159474_)))
                                (_tl159466159494_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159461159474_))))
                            (let ((_phi-ctx159497_ _hd159465159492_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159466159494_))
                                  (let ((_hd159467159499_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159466159494_)))
                                        (_tl159468159501_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159466159494_))))
                                    (let ((_phi159504_ _hd159467159499_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159468159501_))
                                          (let ((_hd159469159506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159468159501_)))
                                                (_tl159470159508_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159468159501_))))
                                            (let ((_n159511_ _hd159469159506_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159470159508_))
                                                  (let ((_hd159471159513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159470159508_)))
                                                        (_tl159472159515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159470159508_))))
                                                    (let ((_code159518_
                                                           _hd159471159513_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159472159515_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159464159489_
                                                             _code159518_
                                                             _n159511_
                                                             _phi159504_
                                                             _phi-ctx159497_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159463159478_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159463159478_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159463159478_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159463159478_)))))
                          (let () (declare (not safe)) (_E159463159478_)))))))
          (let ((_g160540_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159447_))))
            (begin
              (let ((_g160541_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160540_)
                           (##vector-length _g160540_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160541_ 2)))
                    (error "Context expects 2 values" _g160541_)))
              (let ((_ssi-code159452_
                     (let () (declare (not safe)) (##vector-ref _g160540_ 0)))
                    (_phi-code159453_
                     (let () (declare (not safe)) (##vector-ref _g160540_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159449_ _ssi-code159452_))
                  (let ((_threads159458_
                         (map (lambda (_code159455_)
                                (let ((__tmp160542
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159450_
                                            _code159455_)))))
                                  (declare (not safe))
                                  (spawn __tmp160542)))
                              _phi-code159453_)))
                    (for-each gxc#join! _threads159458_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159430_)
        (let* ((_path159432_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159430_ '#f '".ssxi.ss")))
               (_code159434_
                (let ((__tmp160543
                       (##structure-ref
                        _ctx159430_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160543)))
               (_idstr159436_
                (symbol->string
                 (##structure-ref _ctx159430_ '1 gx#expander-context::t '#f)))
               (_pkg159443_
                (let ((_$e159438_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159436_ '#\/))))
                  (if _$e159438_
                      ((lambda (_x159441_)
                         (string->symbol
                          (substring _idstr159436_ '0 _x159441_)))
                       _$e159438_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159432_))
          (let ((__tmp160544
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159443_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159443_))
                       '#!void)
                   (newline)
                   (pretty-print _code159434_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159432_ __tmp160544)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159423_)
        (let* ((_state159425_
                (let ((__obj160305
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj160305 _ctx159423_)
                  __obj160305))
               (_ssi-code159427_
                (let ((__tmp160545
                       (##structure-ref
                        _ctx159423_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160545
                   'state:
                   _state159425_))))
          (values _ssi-code159427_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159425_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159416_)
        (let ((_lifts159418_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160548
                 (lambda ()
                   (let ((_code159421_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159416_))))
                     (if (let ((__tmp160552 (unbox _lifts159418_)))
                           (declare (not safe))
                           (null? __tmp160552))
                         _code159421_
                         (let ((__tmp160549
                                (let ((__tmp160551
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159421_ '())))
                                      (__tmp160550
                                       (reverse (unbox _lifts159418_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160551 __tmp160550))))
                           (declare (not safe))
                           (cons 'begin __tmp160549))))))
                (__tmp160547
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160546
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160548
             gxc#current-compile-lift
             _lifts159418_
             gxc#current-compile-marks
             __tmp160547
             gxc#current-compile-identifiers
             __tmp160546)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159412_)
        (let ((_modules159414_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160553
                 (##structure-ref _ctx159412_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160553 'modules: _modules159414_))
          (reverse (unbox _modules159414_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159395_ _code159396_ _phi?159397_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159395_))
        (let ((__tmp160554
               (lambda ()
                 (pretty-print
                  (let ((__tmp160555
                         (let ((__tmp160562
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160556
                                (let ((__tmp160561
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160557
                                       (let ((__tmp160560
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160558
                                              (let ((__tmp160559
                                                     (if _phi?159397_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160559))))
                                         (declare (not safe))
                                         (cons __tmp160560 __tmp160558))))
                                  (declare (not safe))
                                  (cons __tmp160561 __tmp160557))))
                           (declare (not safe))
                           (cons __tmp160562 __tmp160556))))
                    (declare (not safe))
                    (cons 'declare __tmp160555)))
                 (pretty-print _code159396_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159395_ __tmp160554))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159395_ _phi?159397_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159395_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159403_ _code159404_)
        (let ((_phi?159406_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159403_ _code159404_ _phi?159406_))))
    (define gxc#compile-scm-file
      (lambda _g160564_
        (let ((_g160563_ (let () (declare (not safe)) (##length _g160564_))))
          (cond ((let () (declare (not safe)) (##fx= _g160563_ 2))
                 (apply (lambda (_path159403_ _code159404_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159403_
                             _code159404_)))
                        _g160564_))
                ((let () (declare (not safe)) (##fx= _g160563_ 3))
                 (apply (lambda (_path159408_ _code159409_ _phi?159410_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159408_
                             _code159409_
                             _phi?159410_)))
                        _g160564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160564_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?159296_)
        (let _lp159298_ ((_rest159300_ (gxc#current-compile-gsc-options))
                         (_opts159301_ '()))
          (let* ((_rest159302159322_ _rest159300_)
                 (_else159306159330_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159296_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160565
                               (let ((__tmp160566 (reverse _opts159301_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160566))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160565))
                        (reverse _opts159301_)))))
            (let ((_K159316159373_
                   (lambda (_rest159371_)
                     (let ()
                       (declare (not safe))
                       (_lp159298_ _rest159371_ _opts159301_))))
                  (_K159311159355_
                   (lambda (_rest159353_)
                     (let ()
                       (declare (not safe))
                       (_lp159298_ _rest159353_ _opts159301_))))
                  (_K159308159337_
                   (lambda (_rest159334_ _opt159335_)
                     (let ((__tmp160567
                            (let ()
                              (declare (not safe))
                              (cons _opt159335_ _opts159301_))))
                       (declare (not safe))
                       (_lp159298_ _rest159334_ __tmp160567)))))
              (if (let () (declare (not safe)) (##pair? _rest159302159322_))
                  (let ((_tl159318159378_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159302159322_)))
                        (_hd159317159376_
                         (let ()
                           (declare (not safe))
                           (##car _rest159302159322_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159317159376_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159318159378_))
                            (let* ((_tl159320159381_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159318159378_)))
                                   (_rest159384_ _tl159320159381_))
                              (declare (not safe))
                              (_K159316159373_ _rest159384_))
                            (let ((_opt159345_ _hd159317159376_)
                                  (_rest159347_ _tl159318159378_))
                              (let ()
                                (declare (not safe))
                                (_K159308159337_ _rest159347_ _opt159345_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159317159376_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159318159378_))
                                (let* ((_tl159315159363_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159318159378_)))
                                       (_rest159366_ _tl159315159363_))
                                  (declare (not safe))
                                  (_K159311159355_ _rest159366_))
                                (let ((_opt159345_ _hd159317159376_)
                                      (_rest159347_ _tl159318159378_))
                                  (let ()
                                    (declare (not safe))
                                    (_K159308159337_
                                     _rest159347_
                                     _opt159345_))))
                            (let ((_opt159345_ _hd159317159376_)
                                  (_rest159347_ _tl159318159378_))
                              (let ()
                                (declare (not safe))
                                (_K159308159337_ _rest159347_ _opt159345_))))))
                  (let () (declare (not safe)) (_else159306159330_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159390_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159390_))))
    (define gxc#gsc-link-options
      (lambda _g160569_
        (let ((_g160568_ (let () (declare (not safe)) (##length _g160569_))))
          (cond ((let () (declare (not safe)) (##fx= _g160568_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160569_))
                ((let () (declare (not safe)) (##fx= _g160568_ 1))
                 (apply (lambda (_phi?159392_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159392_)))
                        _g160569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160569_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?159197_)
        (let _lp159199_ ((_rest159201_ (gxc#current-compile-gsc-options))
                         (_opts159202_ '()))
          (let* ((_rest159203159223_ _rest159201_)
                 (_else159207159231_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159197_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160570
                               (let ((__tmp160571 (reverse _opts159202_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160571))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160570))
                        (reverse _opts159202_)))))
            (let ((_K159217159270_
                   (lambda (_rest159267_ _opt159268_)
                     (let ((__tmp160572
                            (let ((__tmp160573
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts159202_))))
                              (declare (not safe))
                              (cons _opt159268_ __tmp160573))))
                       (declare (not safe))
                       (_lp159199_ _rest159267_ __tmp160572))))
                  (_K159212159251_
                   (lambda (_rest159249_)
                     (let ()
                       (declare (not safe))
                       (_lp159199_ _rest159249_ _opts159202_))))
                  (_K159209159237_
                   (lambda (_rest159235_)
                     (let ()
                       (declare (not safe))
                       (_lp159199_ _rest159235_ _opts159202_)))))
              (if (let () (declare (not safe)) (##pair? _rest159203159223_))
                  (let ((_tl159219159275_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159203159223_)))
                        (_hd159218159273_
                         (let ()
                           (declare (not safe))
                           (##car _rest159203159223_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159218159273_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159219159275_))
                            (let ((_tl159221159280_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl159219159275_)))
                                  (_hd159220159278_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl159219159275_))))
                              (let ((_opt159283_ _hd159220159278_)
                                    (_rest159285_ _tl159221159280_))
                                (let ()
                                  (declare (not safe))
                                  (_K159217159270_ _rest159285_ _opt159283_))))
                            (let ((_rest159243_ _tl159219159275_))
                              (declare (not safe))
                              (_K159209159237_ _rest159243_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159218159273_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159219159275_))
                                (let* ((_tl159216159259_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159219159275_)))
                                       (_rest159262_ _tl159216159259_))
                                  (declare (not safe))
                                  (_K159212159251_ _rest159262_))
                                (let ((_rest159243_ _tl159219159275_))
                                  (declare (not safe))
                                  (_K159209159237_ _rest159243_)))
                            (let ((_rest159243_ _tl159219159275_))
                              (declare (not safe))
                              (_K159209159237_ _rest159243_)))))
                  (let () (declare (not safe)) (_else159207159231_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?159291_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?159291_))))
    (define gxc#gsc-cc-options
      (lambda _g160575_
        (let ((_g160574_ (let () (declare (not safe)) (##length _g160575_))))
          (cond ((let () (declare (not safe)) (##fx= _g160574_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160575_))
                ((let () (declare (not safe)) (##fx= _g160574_ 1))
                 (apply (lambda (_phi?159293_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?159293_)))
                        _g160575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160575_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir159192_)
        (let* ((_user-staticdir159194_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160576
                (let ((__tmp160577
                       (string-append
                        '"-I "
                        _staticdir159192_
                        '" -I "
                        _user-staticdir159194_)))
                  (declare (not safe))
                  (cons __tmp160577 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160576))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp159104_ ((_rest159106_ (gxc#current-compile-gsc-options))
                         (_opts159107_ '()))
          (let* ((_rest159108159128_ _rest159106_)
                 (_else159112159136_ (lambda () _opts159107_)))
            (let ((_K159122159179_
                   (lambda (_rest159177_)
                     (let ()
                       (declare (not safe))
                       (_lp159104_ _rest159177_ _opts159107_))))
                  (_K159117159157_
                   (lambda (_rest159154_ _opt159155_)
                     (let ((__tmp160578
                            (append _opts159107_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt159155_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp159104_ _rest159154_ __tmp160578))))
                  (_K159114159142_
                   (lambda (_rest159140_)
                     (let ()
                       (declare (not safe))
                       (_lp159104_ _rest159140_ _opts159107_)))))
              (if (let () (declare (not safe)) (##pair? _rest159108159128_))
                  (let ((_tl159124159184_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159108159128_)))
                        (_hd159123159182_
                         (let ()
                           (declare (not safe))
                           (##car _rest159108159128_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159123159182_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159124159184_))
                            (let* ((_tl159126159187_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159124159184_)))
                                   (_rest159190_ _tl159126159187_))
                              (declare (not safe))
                              (_K159122159179_ _rest159190_))
                            (let ((_rest159148_ _tl159124159184_))
                              (declare (not safe))
                              (_K159114159142_ _rest159148_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159123159182_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159124159184_))
                                (let ((_tl159121159167_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl159124159184_)))
                                      (_hd159120159165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl159124159184_))))
                                  (let ((_opt159170_ _hd159120159165_)
                                        (_rest159172_ _tl159121159167_))
                                    (let ()
                                      (declare (not safe))
                                      (_K159117159157_
                                       _rest159172_
                                       _opt159170_))))
                                (let ((_rest159148_ _tl159124159184_))
                                  (declare (not safe))
                                  (_K159114159142_ _rest159148_)))
                            (let ((_rest159148_ _tl159124159184_))
                              (declare (not safe))
                              (_K159114159142_ _rest159148_)))))
                  (let () (declare (not safe)) (_else159112159136_))))))))
    (define gxc#not-string-empty?
      (lambda (_str159101_)
        (let ((__tmp160579
               (let () (declare (not safe)) (string-empty? _str159101_))))
          (declare (not safe))
          (not __tmp160579))))
    (define gxc#gsc-compile-file
      (lambda (_path159069_ _phi?159070_)
        (letrec ((_gsc-link-path159072_
                  (lambda (_base-path159093_)
                    (let _lp159095_ ((_n159097_ '1))
                      (let ((_path159099_
                             (string-append
                              _base-path159093_
                              '".o"
                              (number->string _n159097_))))
                        (if (file-exists? _path159099_)
                            (let ((__tmp160580
                                   (let ()
                                     (declare (not safe))
                                     (+ _n159097_ '1))))
                              (declare (not safe))
                              (_lp159095_ __tmp160580))
                            _path159099_))))))
          (let* ((_base-path159074_ (path-strip-extension _path159069_))
                 (_path-c159076_ (string-append _base-path159074_ '".c"))
                 (_path-o159078_ (string-append _base-path159074_ '".o"))
                 (_link-path159080_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path159072_ _base-path159074_)))
                 (_link-path-c159082_ (string-append _link-path159080_ '".c"))
                 (_link-path-o159084_ (string-append _link-path159080_ '".o"))
                 (_gsc-link-opts159086_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?159070_)))
                 (_gsc-cc-opts159088_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?159070_)))
                 (_gcc-ld-opts159090_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160587 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160581
                   (let ((__tmp160582
                          (let ((__tmp160583
                                 (let ((__tmp160584
                                        (let ((__tmp160585
                                               (let ((__tmp160586
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path159069_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160586
                                                         _gsc-link-opts159086_))))
                                          (declare (not safe))
                                          (cons _link-path-c159082_
                                                __tmp160585))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160584))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160583))))
                     (declare (not safe))
                     (cons '"-link" __tmp160582))))
              (declare (not safe))
              (gxc#invoke __tmp160587 __tmp160581 'stdout-redirection: '#t))
            (let ((__tmp160594 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160588
                   (let ((__tmp160589
                          (let ((__tmp160590
                                 (let ((__tmp160591
                                        (let ((__tmp160592
                                               (let ((__tmp160593
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c159082_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c159076_
                                                       __tmp160593))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160592
                                                  _gsc-cc-opts159088_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160591))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160590))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160589))))
              (declare (not safe))
              (gxc#invoke __tmp160594 __tmp160588 'stdout-redirection: '#t))
            (let ((__tmp160600 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160595
                   (let ((__tmp160596
                          (let ((__tmp160597
                                 (let ((__tmp160598
                                        (let ((__tmp160599
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o159084_
                                                       _gcc-ld-opts159090_))))
                                          (declare (not safe))
                                          (cons _path-o159078_ __tmp160599))))
                                   (declare (not safe))
                                   (cons _link-path159080_ __tmp160598))))
                            (declare (not safe))
                            (cons '"-o" __tmp160597))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160596))))
              (declare (not safe))
              (gxc#invoke __tmp160600 __tmp160595))
            (for-each
             delete-file
             (let ((__tmp160601
                    (let ((__tmp160602
                           (let ((__tmp160603
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o159084_ '()))))
                             (declare (not safe))
                             (cons _link-path-c159082_ __tmp160603))))
                      (declare (not safe))
                      (cons _path-o159078_ __tmp160602))))
               (declare (not safe))
               (cons _path-c159076_ __tmp160601)))))))
    (define gxc#compile-output-file
      (lambda (_ctx159040_ _n159041_ _ext159042_)
        (letrec ((_module-relative-path159044_
                  (lambda (_ctx159067_)
                    (path-strip-directory
                     (let ((__tmp160604
                            (##structure-ref
                             _ctx159067_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160604)))))
                 (_module-source-directory159045_
                  (lambda (_ctx159063_)
                    (path-directory
                     (let ((_mpath159065_
                            (##structure-ref
                             _ctx159063_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath159065_))
                           _mpath159065_
                           (last _mpath159065_))))))
                 (_section-string159046_
                  (lambda (_n159061_)
                    (if (let () (declare (not safe)) (number? _n159061_))
                        (number->string _n159061_)
                        (if (let () (declare (not safe)) (symbol? _n159061_))
                            (symbol->string _n159061_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n159061_))
                                _n159061_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n159061_)))))))
                 (_file-name159047_
                  (lambda (_path159059_)
                    (if _n159041_
                        (string-append
                         _path159059_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_section-string159046_ _n159041_))
                         _ext159042_)
                        (string-append _path159059_ _ext159042_))))
                 (_file-path159048_
                  (lambda ()
                    (let ((_$e159054_ (gxc#current-compile-output-dir)))
                      (if _$e159054_
                          ((lambda (_outdir159057_)
                             (path-expand
                              (let ((__tmp160606
                                     (let ((__tmp160607
                                            (##structure-ref
                                             _ctx159040_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160607))))
                                (declare (not safe))
                                (_file-name159047_ __tmp160606))
                              _outdir159057_))
                           _$e159054_)
                          (path-expand
                           (let ((__tmp160605
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path159044_
                                     _ctx159040_))))
                             (declare (not safe))
                             (_file-name159047_ __tmp160605))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory159045_
                              _ctx159040_))))))))
          (let ((_path159050_
                 (let () (declare (not safe)) (_file-path159048_))))
            (let ((__tmp160608
                   (lambda ()
                     (let ((__tmp160609 (path-directory _path159050_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160609)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160608))
            _path159050_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx159022_)
        (letrec ((_file-name159024_
                  (lambda (_id159038_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id159038_))
                     '".scm")))
                 (_file-path159025_
                  (lambda ()
                    (let* ((_file159031_
                            (let ((__tmp160610
                                   (##structure-ref
                                    _ctx159022_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name159024_ __tmp160610)))
                           (_$e159033_ (gxc#current-compile-output-dir)))
                      (if _$e159033_
                          ((lambda (_outdir159036_)
                             (path-expand
                              _file159031_
                              (path-expand '"static" _outdir159036_)))
                           _$e159033_)
                          (path-expand _file159031_ '"static"))))))
          (let ((_path159027_
                 (let () (declare (not safe)) (_file-path159025_))))
            (let ((__tmp160611
                   (lambda ()
                     (let ((__tmp160612 (path-directory _path159027_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160612)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160611))
            _path159027_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx159016_ _opts159017_)
        (let ((_$e159019_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts159017_))))
          (if _$e159019_
              (values _$e159019_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx159016_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr159009_)
        (if (let () (declare (not safe)) (string? _idstr159009_))
            (let* ((_str159011_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr159009_)))
                   (_strs159013_
                    (let ()
                      (declare (not safe))
                      (string-split _str159011_ '#\/))))
              (let () (declare (not safe)) (string-join _strs159013_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr159009_))
                (let ((__tmp160613 (symbol->string _idstr159009_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160613))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr159009_))))))
    (define gxc#invoke__%
      (lambda (_g160614_
               _stdout-redirection158970158974_
               _stderr-redirection158971158976_
               _program158978_
               _args158979_)
        (let* ((_stdout-redirection158981_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158970158974_ absent-value))
                    '#f
                    _stdout-redirection158970158974_))
               (_stderr-redirection158983_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158971158976_ absent-value))
                    '#f
                    _stderr-redirection158971158976_)))
          (let ((__tmp160615
                 (let ()
                   (declare (not safe))
                   (cons _program158978_ _args158979_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160615))
          (let* ((_proc158985_
                  (open-process
                   (let ((__tmp160616
                          (let ((__tmp160617
                                 (let ((__tmp160618
                                        (let ((__tmp160619
                                               (let ((__tmp160620
                                                      (let ((__tmp160621
                                                             (let ((__tmp160622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection158983_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160622))))
                (declare (not safe))
                (cons _stdout-redirection158981_ __tmp160621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160620))))
                                          (declare (not safe))
                                          (cons _args158979_ __tmp160619))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160618))))
                            (declare (not safe))
                            (cons _program158978_ __tmp160617))))
                     (declare (not safe))
                     (cons 'path: __tmp160616))))
                 (_output158990_
                  (if (or _stdout-redirection158981_
                          _stderr-redirection158983_)
                      (read-line _proc158985_ '#f)
                      '#f)))
            (let ((_status158993_ (process-status _proc158985_)))
              (close-port _proc158985_)
              (if (let () (declare (not safe)) (zero? _status158993_))
                  '#!void
                  (begin
                    (display _output158990_)
                    (let ((__tmp160623
                           (let ()
                             (declare (not safe))
                             (cons _program158978_ _args158979_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160623
                       _status158993_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158969158998_ . _args159000_)
        (apply gxc#invoke__%
               _keys158969158998_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158969158998_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158969158998_
                  'stderr-redirection:
                  absent-value))
               _args159000_)))
    (define gxc#invoke
      (lambda _args158972159006_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158972159006_)))
    (define gxc#join!
      (lambda (_thread158963_)
        (let ((__tmp160625
               (lambda (_exn158965_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158965_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158965_)))
                     (raise _exn158965_))))
              (__tmp160624 (lambda () (thread-join! _thread158963_))))
          (declare (not safe))
          (with-catch __tmp160625 __tmp160624))))))
