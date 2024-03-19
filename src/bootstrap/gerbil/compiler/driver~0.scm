(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710833429)
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
      (lambda (_path160230_ _fun160231_)
        (with-output-to-file
         (let ((__tmp160324
                (let ()
                  (declare (not safe))
                  (cons _path160230_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp160324))
         _fun160231_)))
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
      (lambda (_gerbil-libdir160225_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir160225_)))
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
      (lambda (_dir160223_) (delete-file-or-directory _dir160223_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath160197_ _opts160198_)
        (if (let () (declare (not safe)) (string? _srcpath160197_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160197_)))
        (let ((_outdir160200_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160198_)))
              (_invoke-gsc?160201_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160198_)))
              (_gsc-options160202_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160198_)))
              (_keep-scm?160203_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160198_)))
              (_verbosity160204_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160198_)))
              (_optimize160205_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts160198_)))
              (_debug160206_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160198_)))
              (_gen-ssxi160207_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts160198_))))
          (if _outdir160200_
              (let ((__tmp160325
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160200_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160325))
              '#!void)
          (if _optimize160205_
              (let ((__tmp160326
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160326))
              '#!void)
          (let ((__tmp160330
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath160197_))
                   (let ((__tmp160331
                          (let ((__tmp160332
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160197_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160332))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp160331))))
                (__tmp160329
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160327
                 (let ((__tmp160328
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160197_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp160328))))
            (declare (not safe))
            (call-with-parameters
             __tmp160330
             gxc#current-compile-output-dir
             _outdir160200_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160201_
             gxc#current-compile-gsc-options
             _gsc-options160202_
             gxc#current-compile-keep-scm
             _keep-scm?160203_
             gxc#current-compile-verbose
             _verbosity160204_
             gxc#current-compile-optimize
             _optimize160205_
             gxc#current-compile-debug
             _debug160206_
             gxc#current-compile-generate-ssxi
             _gen-ssxi160207_
             gxc#current-compile-timestamp
             __tmp160329
             gxc#current-compile-context
             __tmp160327
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath160216_)
        (let ((_opts160218_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath160216_ _opts160218_))))
    (define gxc#compile-module
      (lambda _g160334_
        (let ((_g160333_ (let () (declare (not safe)) (##length _g160334_))))
          (cond ((let () (declare (not safe)) (##fx= _g160333_ 1))
                 (apply (lambda (_srcpath160216_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath160216_)))
                        _g160334_))
                ((let () (declare (not safe)) (##fx= _g160333_ 2))
                 (apply (lambda (_srcpath160220_ _opts160221_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath160220_
                             _opts160221_)))
                        _g160334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g160334_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath160173_ _opts160174_)
        (if (let () (declare (not safe)) (string? _srcpath160173_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160173_)))
        (let ((_outdir160176_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160174_)))
              (_invoke-gsc?160177_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160174_)))
              (_gsc-options160178_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160174_)))
              (_keep-scm?160179_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160174_)))
              (_verbosity160180_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160174_)))
              (_debug160181_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160174_))))
          (if _outdir160176_
              (let ((__tmp160335
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160176_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160335))
              '#!void)
          (let ((__tmp160339
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath160173_))
                   (let ((__tmp160340
                          (let ((__tmp160341
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160173_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160341))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160340
                      _opts160174_))))
                (__tmp160338
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160336
                 (let ((__tmp160337
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160173_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160337))))
            (declare (not safe))
            (call-with-parameters
             __tmp160339
             gxc#current-compile-output-dir
             _outdir160176_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160177_
             gxc#current-compile-gsc-options
             _gsc-options160178_
             gxc#current-compile-keep-scm
             _keep-scm?160179_
             gxc#current-compile-verbose
             _verbosity160180_
             gxc#current-compile-debug
             _debug160181_
             gxc#current-compile-timestamp
             __tmp160338
             gxc#current-compile-context
             __tmp160336
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath160189_)
        (let ((_opts160191_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath160189_ _opts160191_))))
    (define gxc#compile-exe
      (lambda _g160343_
        (let ((_g160342_ (let () (declare (not safe)) (##length _g160343_))))
          (cond ((let () (declare (not safe)) (##fx= _g160342_ 1))
                 (apply (lambda (_srcpath160189_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath160189_)))
                        _g160343_))
                ((let () (declare (not safe)) (##fx= _g160342_ 2))
                 (apply (lambda (_srcpath160193_ _opts160194_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath160193_ _opts160194_)))
                        _g160343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160343_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx160169_ _opts160170_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts160170_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx160169_
               _opts160170_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx160169_
               _opts160170_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx160052_ _opts160053_)
        (letrec ((_generate-stub160055_
                  (lambda (_builtin-modules160165_)
                    (let ((_mod-main160167_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx160052_ 'main))))
                      (write (let ((__tmp160344
                                    (let ((__tmp160345
                                           (let ((__tmp160346
                                                  (let ((__tmp160347
                                                         (let ((__tmp160349
                                                                (let ((__tmp160350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules160165_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160350)))
                       (__tmp160348
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160349 __tmp160348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160347))))
                                             (declare (not safe))
                                             (cons __tmp160346 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160345))))
                               (declare (not safe))
                               (cons 'define __tmp160344)))
                      (write (let ((__tmp160351
                                    (let ((__tmp160390
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160352
                                           (let ((__tmp160353
                                                  (let ((__tmp160354
                                                         (let ((__tmp160378
                                                                (let ((__tmp160379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160380
                                      (let ((__tmp160388
                                             (let ((__tmp160389
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp160389)))
                                            (__tmp160381
                                             (let ((__tmp160382
                                                    (let ((__tmp160383
                                                           (let ((__tmp160384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160385
                                 (let ((__tmp160386
                                        (let ((__tmp160387
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160387 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160386))))
                            (declare (not safe))
                            (cons __tmp160385 '()))))
                     (declare (not safe))
                     (cons _mod-main160167_ __tmp160384))))
              (declare (not safe))
              (cons 'apply __tmp160383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160382 '()))))
                                        (declare (not safe))
                                        (cons __tmp160388 __tmp160381))))
                                 (declare (not safe))
                                 (cons '() __tmp160380))))
                          (declare (not safe))
                          (cons 'lambda __tmp160379)))
                       (__tmp160355
                        (let ((__tmp160356
                               (let ((__tmp160357
                                      (let ((__tmp160358
                                             (let ((__tmp160369
                                                    (let ((__tmp160370
                                                           (let ((__tmp160371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160372
                                 (let ((__tmp160373
                                        (let ((__tmp160374
                                               (let ((__tmp160375
                                                      (let ((__tmp160376
                                                             (let ((__tmp160377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160377 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160375 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160374))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160373))))
                            (declare (not safe))
                            (cons __tmp160372 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160371))))
              (declare (not safe))
              (cons 'with-catch __tmp160370)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160359
                                                    (let ((__tmp160360
                                                           (let ((__tmp160361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160362
                                 (let ((__tmp160363
                                        (let ((__tmp160364
                                               (let ((__tmp160365
                                                      (let ((__tmp160366
                                                             (let ((__tmp160367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp160368
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160368 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160367))))
                (declare (not safe))
                (cons __tmp160366 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160365))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160364))))
                                   (declare (not safe))
                                   (cons __tmp160363 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160362))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160361))))
              (declare (not safe))
              (cons __tmp160360 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160369
                                                     __tmp160359))))
                                        (declare (not safe))
                                        (cons '() __tmp160358))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160357))))
                          (declare (not safe))
                          (cons __tmp160356 '()))))
                   (declare (not safe))
                   (cons __tmp160378 __tmp160355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160354))))
                                             (declare (not safe))
                                             (cons __tmp160353 '()))))
                                      (declare (not safe))
                                      (cons __tmp160390 __tmp160352))))
                               (declare (not safe))
                               (cons 'define __tmp160351)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts160056_
                  (lambda (_libgerbil160163_)
                    (call-with-input-file
                     (string-append _libgerbil160163_ '".ldd")
                     read)))
                 (_replace-extension160057_
                  (lambda (_path160160_ _ext160161_)
                    (string-append
                     (path-strip-extension _path160160_)
                     _ext160161_)))
                 (_not-exclude-module?160058_
                  (lambda (_ctx160156_)
                    (let ((_id-str160158_
                           (symbol->string
                            (##structure-ref
                             _ctx160156_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160392
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str160158_))))
                            (declare (not safe))
                            (not __tmp160392))
                          (let ((__tmp160391
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str160158_))))
                            (declare (not safe))
                            (not __tmp160391))
                          '#f))))
                 (_not-file-empty?160059_
                  (lambda (_path160154_)
                    (let ((__tmp160393
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path160154_))))
                      (declare (not safe))
                      (not __tmp160393))))
                 (_compile-stub160060_
                  (lambda (_output-scm160067_ _output-bin160068_)
                    (let* ((_gerbil-home160070_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir160072_
                            (path-expand '"lib" _gerbil-home160070_))
                           (_gerbil-staticdir160074_
                            (path-expand '"static" _gerbil-libdir160072_))
                           (_gxlink160076_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir160072_))
                           (_tmp160078_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path160082_
                            (lambda (_f160080_)
                              (path-expand
                               (path-strip-directory _f160080_)
                               _tmp160078_)))
                           (_deps160084_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx160052_)))
                           (_deps160086_
                            (filter _not-exclude-module?160058_ _deps160084_))
                           (_src-deps-scm160088_
                            (map gxc#find-static-module-file _deps160086_))
                           (_src-deps-scm160090_
                            (filter _not-file-empty?160059_
                                    _src-deps-scm160088_))
                           (_src-deps-scm160092_
                            (map path-expand _src-deps-scm160090_))
                           (_deps-scm160094_
                            (map _tmp-path160082_ _src-deps-scm160092_))
                           (_deps-c160100_
                            (map (lambda (_g160095160097_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160057_
                                      _g160095160097_
                                      '".c")))
                                 _deps-scm160094_))
                           (_deps-o160106_
                            (map (lambda (_g160101160103_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160057_
                                      _g160101160103_
                                      '".o")))
                                 _deps-scm160094_))
                           (_src-bin-scm160108_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx160052_)))
                           (_src-bin-scm160110_
                            (path-expand _src-bin-scm160108_))
                           (_bin-scm160112_
                            (let ()
                              (declare (not safe))
                              (_tmp-path160082_ _src-bin-scm160110_)))
                           (_bin-c160114_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160057_
                               _bin-scm160112_
                               '".c")))
                           (_bin-o160116_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160057_
                               _bin-scm160112_
                               '".o")))
                           (_output-bin160118_
                            (path-expand _output-bin160068_))
                           (_output-scm160120_
                            (path-expand _output-scm160067_))
                           (_output-c160122_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160057_
                               _output-scm160120_
                               '".c")))
                           (_output-o160124_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160057_
                               _output-scm160120_
                               '".o")))
                           (_output_-c160126_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160057_
                               _output-scm160120_
                               '"_.c")))
                           (_output_-o160128_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160057_
                               _output-scm160120_
                               '"_.o")))
                           (_gsc-link-opts160130_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts160132_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts160134_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir160074_)))
                           (_output-ld-opts160136_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a160138_
                            (path-expand '"libgerbil.a" _gerbil-libdir160072_))
                           (_libgerbil.so160140_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir160072_))
                           (_libgerbil-ld-opts160142_
                            (if (file-exists? _libgerbil.so160140_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts160056_
                                   _libgerbil.so160140_))
                                (if (file-exists? _libgerbil.a160138_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts160056_
                                       _libgerbil.a160138_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a160138_
                                       _libgerbil.so160140_)))))
                           (_rpath160144_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir160072_)))
                           (_builtin-modules160148_
                            (map (lambda (_mod160146_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod160146_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx160052_ _deps160086_)))))
                      (let ((__tmp160394
                             (lambda ()
                               (let ((__tmp160395
                                      (path-directory _output-bin160118_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160395)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160394))
                      (let ((__tmp160396
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub160055_
                                  _builtin-modules160148_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm160120_
                         __tmp160396))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160397
                                   (lambda () (create-directory _tmp160078_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160397))
                            (for-each
                             copy-file
                             _src-deps-scm160092_
                             _deps-scm160094_)
                            (copy-file _src-bin-scm160110_ _bin-scm160112_)
                            (let ((__tmp160405
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160398
                                   (let ((__tmp160399
                                          (let ((__tmp160400
                                                 (let ((__tmp160401
                                                        (let ((__tmp160402
                                                               (let ((__tmp160403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160404
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm160120_ '()))))
                                (declare (not safe))
                                (cons _bin-scm160112_ __tmp160404))))
                         (declare (not safe))
                         (foldr1 cons __tmp160403 _deps-scm160094_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160402 _gsc-link-opts160130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink160076_
                                                         __tmp160401))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160400))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160399))))
                              (declare (not safe))
                              (gxc#invoke __tmp160405 __tmp160398))
                            (let ((__tmp160413
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160406
                                   (let ((__tmp160407
                                          (let ((__tmp160408
                                                 (let ((__tmp160409
                                                        (let ((__tmp160410
                                                               (let ((__tmp160411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160412
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c160126_ '()))))
                                (declare (not safe))
                                (cons _output-c160122_ __tmp160412))))
                         (declare (not safe))
                         (cons _bin-c160114_ __tmp160411))))
                  (declare (not safe))
                  (foldr1 cons __tmp160410 _deps-c160100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160409
                                                           _gsc-static-opts160134_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160408
                                                    _gsc-cc-opts160132_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160407))))
                              (declare (not safe))
                              (gxc#invoke __tmp160413 __tmp160406))
                            (let ((__tmp160426
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160414
                                   (let ((__tmp160415
                                          (let ((__tmp160416
                                                 (let ((__tmp160417
                                                        (let ((__tmp160418
                                                               (let ((__tmp160419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160420
                                     (let ((__tmp160421
                                            (let ((__tmp160422
                                                   (let ((__tmp160423
                                                          (let ((__tmp160424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160425
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts160142_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160425))))
                    (declare (not safe))
                    (cons _gerbil-libdir160072_ __tmp160424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160423))))
                                              (declare (not safe))
                                              (cons _rpath160144_
                                                    __tmp160422))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160421
                                               _output-ld-opts160136_))))
                                (declare (not safe))
                                (cons _output_-o160128_ __tmp160420))))
                         (declare (not safe))
                         (cons _output-o160124_ __tmp160419))))
                  (declare (not safe))
                  (cons _bin-o160116_ __tmp160418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160417
                                                           _deps-o160106_))))
                                            (declare (not safe))
                                            (cons _output-bin160118_
                                                  __tmp160416))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160415))))
                              (declare (not safe))
                              (gxc#invoke __tmp160426 __tmp160414))
                            (for-each
                             delete-file
                             (let ((__tmp160427
                                    (let ((__tmp160428
                                           (let ((__tmp160429
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o160128_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o160124_
                                                   __tmp160429))))
                                      (declare (not safe))
                                      (cons _output_-c160126_ __tmp160428))))
                               (declare (not safe))
                               (cons _output-c160122_ __tmp160427)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp160078_)))
                          '#!void)))))
          (let* ((_output-bin160062_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx160052_ _opts160053_)))
                 (_output-scm160064_
                  (string-append _output-bin160062_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub160060_ _output-scm160064_ _output-bin160062_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm160064_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159877_ _opts159878_)
        (letrec ((_reset-declare159880_
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
                 (_generate-stub159881_
                  (lambda (_deps160043_)
                    (let ((_mod-main160045_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159877_ 'main)))
                          (_reset-decl160046_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159880_)))
                          (_user-decl160047_
                           (let ()
                             (declare (not safe))
                             (_user-declare159882_))))
                      (for-each
                       (lambda (_dep160049_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl160046_)
                         (newline)
                         (if _user-decl160047_
                             (begin (write _user-decl160047_) (newline))
                             '#!void)
                         (write (let ((__tmp160430
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep160049_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160430)))
                         (newline))
                       _deps160043_)
                      (write (let ((__tmp160431
                                    (let ((__tmp160444
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160432
                                           (let ((__tmp160440
                                                  (let ((__tmp160441
                                                         (let ((__tmp160442
                                                                (let ((__tmp160443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160443))))
                   (declare (not safe))
                   (cons __tmp160442 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160441)))
                                                 (__tmp160433
                                                  (let ((__tmp160434
                                                         (let ((__tmp160435
                                                                (let ((__tmp160436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160437
                                      (let ((__tmp160438
                                             (let ((__tmp160439
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160439 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160438))))
                                 (declare (not safe))
                                 (cons __tmp160437 '()))))
                          (declare (not safe))
                          (cons _mod-main160045_ __tmp160436))))
                   (declare (not safe))
                   (cons 'apply __tmp160435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160434 '()))))
                                             (declare (not safe))
                                             (cons __tmp160440 __tmp160433))))
                                      (declare (not safe))
                                      (cons __tmp160444 __tmp160432))))
                               (declare (not safe))
                               (cons 'define __tmp160431)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159882_
                  (lambda ()
                    (let* ((_gsc-opts159948_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159878_)))
                           (_gsc-prelude159950_
                            (if _gsc-opts159948_
                                (member '"-prelude" _gsc-opts159948_)
                                '#f))
                           (_gsc-prelude159952_
                            (if _gsc-prelude159950_
                                (read (open-input-string
                                       (cadr _gsc-prelude159950_)))
                                '#f)))
                      (let _lp159955_ ((_rest159957_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159952_ '())))
                                       (_user-decls159958_ '()))
                        (let* ((_rest159959159967_ _rest159957_)
                               (_else159961159975_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159958_))
                                      '#f
                                      (let ((__tmp160445
                                             (reverse _user-decls159958_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160445)))))
                               (_K159963160031_
                                (lambda (_rest159978_ _expr159979_)
                                  (let* ((_expr159980159992_ _expr159979_)
                                         (_else159983160000_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159955_
                                               _rest159978_
                                               _user-decls159958_)))))
                                    (let ((_K159988160021_
                                           (lambda (_decls160019_)
                                             (let ((__tmp160446
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159958_
                                                              _decls160019_))))
                                               (declare (not safe))
                                               (_lp159955_
                                                _rest159978_
                                                __tmp160446))))
                                          (_K159985160006_
                                           (lambda (_exprs160004_)
                                             (let ((__tmp160447
                                                    (append _exprs160004_
                                                            _rest159978_)))
                                               (declare (not safe))
                                               (_lp159955_
                                                __tmp160447
                                                _user-decls159958_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159980159992_))
                                          (let ((_tl159990160026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159980159992_)))
                                                (_hd159989160024_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159980159992_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159989160024_
                                                         'declare))
                                                (let ((_decls160029_
                                                       _tl159990160026_))
                                                  (declare (not safe))
                                                  (_K159988160021_
                                                   _decls160029_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159989160024_
                                                             'begin))
                                                    (let ((_exprs160014_
                                                           _tl159990160026_))
                                                      (declare (not safe))
                                                      (_K159985160006_
                                                       _exprs160014_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159983160000_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159983160000_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159959159967_))
                              (let ((_hd159964160034_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159959159967_)))
                                    (_tl159965160036_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159959159967_))))
                                (let* ((_expr160039_ _hd159964160034_)
                                       (_rest160041_ _tl159965160036_))
                                  (declare (not safe))
                                  (_K159963160031_ _rest160041_ _expr160039_)))
                              (let ()
                                (declare (not safe))
                                (_else159961159975_))))))))
                 (_compile-stub159883_
                  (lambda (_output-scm159890_ _output-bin159891_)
                    (let* ((_gerbil-home159893_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159895_
                            (path-expand '"lib" _gerbil-home159893_))
                           (_runtime159897_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159899_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159893_))
                           (_include-gambit-sharp159901_
                            (string-append
                             '"(include \""
                             _gambit-sharp159899_
                             '"\")"))
                           (_bin-scm159903_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159877_)))
                           (_deps159905_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159877_)))
                           (_deps159907_
                            (map gxc#find-static-module-file _deps159905_))
                           (_deps159912_
                            (filter (lambda (_$obj159909_)
                                      (let ((__tmp160448
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159909_))))
                                        (declare (not safe))
                                        (not __tmp160448)))
                                    _deps159907_))
                           (_deps159916_
                            (filter (lambda (_f159914_)
                                      (let ((__tmp160449
                                             (member _f159914_
                                                     _runtime159897_)))
                                        (declare (not safe))
                                        (not __tmp160449)))
                                    _deps159912_))
                           (_output-base159918_
                            (string-append
                             (path-strip-extension _output-scm159890_)))
                           (_output-c159920_
                            (string-append _output-base159918_ '".c"))
                           (_output-o159922_
                            (string-append _output-base159918_ '".o"))
                           (_output-c_159924_
                            (string-append _output-base159918_ '"_.c"))
                           (_output-o_159926_
                            (string-append _output-base159918_ '"_.o"))
                           (_gsc-link-opts159928_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159930_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159932_
                            (let ((__tmp160450
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159895_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160450)))
                           (_output-ld-opts159934_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159936_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160452
                                       (let ((__tmp160453
                                              (let ((__tmp160454
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159901_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160454))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160453))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160452))
                                (let ((__tmp160451
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159901_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160451))))
                           (_gsc-link-opts159938_
                            (append _gsc-link-opts159928_
                                    _gsc-gx-macros159936_))
                           (_rpath159940_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159895_)))
                           (_default-ld-options159942_
                            (let ((__tmp160455
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160455))))
                      (let ((__tmp160456
                             (lambda ()
                               (let ((__tmp160457
                                      (path-directory _output-bin159891_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160457)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160456))
                      (let ((__tmp160458
                             (lambda ()
                               (let ((__tmp160459
                                      (let ((__tmp160460
                                             (let ((__tmp160461
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159903_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160461
                                                       _deps159916_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160460
                                                _runtime159897_))))
                                 (declare (not safe))
                                 (_generate-stub159881_ __tmp160459)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159890_
                         __tmp160458))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160467
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160462
                                   (let ((__tmp160463
                                          (let ((__tmp160464
                                                 (let ((__tmp160465
                                                        (let ((__tmp160466
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159890_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160466 _gsc-link-opts159938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159924_
                                                         __tmp160465))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160464))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160463))))
                              (declare (not safe))
                              (gxc#invoke __tmp160467 __tmp160462))
                            (let ((__tmp160473
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160468
                                   (let ((__tmp160469
                                          (let ((__tmp160470
                                                 (let ((__tmp160471
                                                        (let ((__tmp160472
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159924_ '()))))
                  (declare (not safe))
                  (cons _output-c159920_ __tmp160472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160471
                                                           _gsc-static-opts159932_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160470
                                                    _gsc-cc-opts159930_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160469))))
                              (declare (not safe))
                              (gxc#invoke __tmp160473 __tmp160468))
                            (let ((__tmp160483
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160474
                                   (let ((__tmp160475
                                          (let ((__tmp160476
                                                 (let ((__tmp160477
                                                        (let ((__tmp160478
                                                               (let ((__tmp160479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160480
                                     (let ((__tmp160481
                                            (let ((__tmp160482
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159942_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159895_
                                                    __tmp160482))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160481))))
                                (declare (not safe))
                                (cons _rpath159940_ __tmp160480))))
                         (declare (not safe))
                         (foldr1 cons __tmp160479 _output-ld-opts159934_))))
                  (declare (not safe))
                  (cons _output-o_159926_ __tmp160478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159922_
                                                         __tmp160477))))
                                            (declare (not safe))
                                            (cons _output-bin159891_
                                                  __tmp160476))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160475))))
                              (declare (not safe))
                              (gxc#invoke __tmp160483 __tmp160474)))
                          '#!void)))))
          (let* ((_output-bin159885_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159877_ _opts159878_)))
                 (_output-scm159887_
                  (string-append _output-bin159885_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159883_ _output-scm159887_ _output-bin159885_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159887_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159827_ _id159828_)
        (let ((_$e159874_
               (let ((__tmp160485
                      (lambda (_e159829159831_)
                        (let* ((_g159833159843_ _e159829159831_)
                               (_else159835159851_ (lambda () '#f))
                               (_K159837159855_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159833159843_
                                 'gx#module-export::t))
                              (let* ((_e159838159858_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159833159843_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159839159861_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159833159843_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159840159864_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159833159843_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159840159864_ '0))
                                    (let ((_e159841159867_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159833159843_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159869159871_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159869159871_
                                                    _id159828_)))
                                           _e159841159867_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159837159855_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159835159851_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159835159851_))))
                              (let ()
                                (declare (not safe))
                                (_else159835159851_))))))
                     (__tmp160484
                      (##structure-ref
                       _ctx159827_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160485 __tmp160484))))
          (if _$e159874_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159874_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159819_ _id159820_)
        (let ((_$e159822_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159819_ _id159820_))))
          (if _$e159822_
              ((lambda (_bind159825_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159825_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159820_)))
                 (##structure-ref _bind159825_ '1 gx#binding::t '#f))
               _$e159822_)
              (let ((__tmp160486
                     (##structure-ref
                      _ctx159819_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160486
                 _id159820_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159706_)
        (letrec* ((_ht159708_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159709_
                   (lambda (_in159771_ _phi159772_)
                     (let ((_iphi159774_
                            (fx+ _phi159772_
                                 (##direct-structure-ref
                                  _in159771_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159775_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159771_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159777_ ((_rest159779_ _imports159775_)
                                        (_r159780_ '()))
                         (let* ((_rest159781159789_ _rest159779_)
                                (_else159783159797_ (lambda () _r159780_))
                                (_K159785159807_
                                 (lambda (_rest159800_ _in159801_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159801_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159774_))
                                           (let ((__tmp160493
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159801_
                                                          _r159780_))))
                                             (declare (not safe))
                                             (_lp159777_
                                              _rest159800_
                                              __tmp160493))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159777_
                                              _rest159800_
                                              _r159780_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159801_
                                              'gx#module-import::t))
                                           (let ((_iphi159803_
                                                  (fx+ _phi159772_
                                                       (##direct-structure-ref
                                                        _in159801_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159803_))
                                                 (let ((__tmp160491
                                                        (let ((__tmp160492
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159801_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160492 _r159780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159777_
                                                    _rest159800_
                                                    __tmp160491))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159777_
                                                    _rest159800_
                                                    _r159780_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159801_
                                                  'gx#import-set::t))
                                               (let ((_xphi159805_
                                                      (fx+ _iphi159774_
                                                           (##direct-structure-ref
                                                            _in159801_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159805_))
                                                     (let ((__tmp160489
                                                            (let ((__tmp160490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159801_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160490 _r159780_))))
               (declare (not safe))
               (_lp159777_ _rest159800_ __tmp160489))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159805_)
                                                         (let ((__tmp160487
                                                                (let ((__tmp160488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159709_
                                  _in159801_
                                  _iphi159774_))))
                          (declare (not safe))
                          (foldl1 cons _r159780_ __tmp160488))))
                   (declare (not safe))
                   (_lp159777_ _rest159800_ __tmp160487))
                 (let ()
                   (declare (not safe))
                   (_lp159777_ _rest159800_ _r159780_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159777_
                                                  _rest159800_
                                                  _r159780_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159781159789_))
                               (let ((_hd159786159810_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159781159789_)))
                                     (_tl159787159812_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159781159789_))))
                                 (let* ((_in159815_ _hd159786159810_)
                                        (_rest159817_ _tl159787159812_))
                                   (declare (not safe))
                                   (_K159785159807_ _rest159817_ _in159815_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159783159797_))))))))
                  (_find-deps159710_
                   (lambda (_rest159717_ _deps159718_)
                     (let* ((_rest159719159727_ _rest159717_)
                            (_else159721159735_ (lambda () _deps159718_))
                            (_K159723159759_
                             (lambda (_rest159738_ _hd159739_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159739_
                                      'gx#module-context::t))
                                   (let ((_id159741_
                                          (##structure-ref
                                           _hd159739_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159742_
                                          (##structure-ref
                                           _hd159739_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159708_ _id159741_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159710_
                                            _rest159738_
                                            _deps159718_))
                                         (let ((_$e159744_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159739_))))
                                           (if _$e159744_
                                               ((lambda (_pre159747_)
                                                  (let ((_xdeps159749_
                                                         (let ((__tmp160506
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159747_ _imports159742_))))
                   (declare (not safe))
                   (_find-deps159710_ __tmp160506 _deps159718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159708_
                                                       _id159741_
                                                       _hd159739_))
                                                    (let ((__tmp160507
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159749_))))
              (declare (not safe))
              (_find-deps159710_ _rest159738_ __tmp160507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159744_)
                                               (let ((_xdeps159751_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159710_
                                                         _imports159742_
                                                         _deps159718_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159708_
                                                    _id159741_
                                                    _hd159739_))
                                                 (let ((__tmp160505
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159739_
                                                                _xdeps159751_))))
                                                   (declare (not safe))
                                                   (_find-deps159710_
                                                    _rest159738_
                                                    __tmp160505)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159739_
                                          'gx#prelude-context::t))
                                       (let ((_id159753_
                                              (##structure-ref
                                               _hd159739_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159708_
                                                _id159753_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159710_
                                                _rest159738_
                                                _deps159718_))
                                             (let ((_xdeps159755_
                                                    (let ((__tmp160503
                                                           (##structure-ref
                                                            _hd159739_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159710_
                                                       __tmp160503
                                                       _deps159718_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159708_
                                                      _id159753_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159710_
                                                      _rest159738_
                                                      _xdeps159755_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159708_
                                                        _id159753_
                                                        _hd159739_))
                                                     (let ((__tmp160504
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159755_))))
               (declare (not safe))
               (_find-deps159710_ _rest159738_ __tmp160504)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159739_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160502
                                                      (##direct-structure-ref
                                                       _hd159739_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160502))
                                               (let ((__tmp160500
                                                      (let ((__tmp160501
                                                             (##direct-structure-ref
                                                              _hd159739_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160501
                                                              _rest159738_))))
                                                 (declare (not safe))
                                                 (_find-deps159710_
                                                  __tmp160500
                                                  _deps159718_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159710_
                                                  _rest159738_
                                                  _deps159718_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159739_
                                                  'gx#module-export::t))
                                               (let ((__tmp160498
                                                      (let ((__tmp160499
                                                             (##direct-structure-ref
                                                              _hd159739_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160499
                                                              _rest159738_))))
                                                 (declare (not safe))
                                                 (_find-deps159710_
                                                  __tmp160498
                                                  _deps159718_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159739_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160497
                                                              (##direct-structure-ref
                                                               _hd159739_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160497))
                                                       (let ((__tmp160495
                                                              (let ((__tmp160496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159739_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160496 _rest159738_))))
                 (declare (not safe))
                 (_find-deps159710_ __tmp160495 _deps159718_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159739_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159757_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159709_ _hd159739_ '0)))
                          (__tmp160494
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159738_ _xdeps159757_))))
                     (declare (not safe))
                     (_find-deps159710_ __tmp160494 _deps159718_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159710_ _rest159738_ _deps159718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159739_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159719159727_))
                           (let ((_hd159724159762_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159719159727_)))
                                 (_tl159725159764_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159719159727_))))
                             (let* ((_hd159767_ _hd159724159762_)
                                    (_rest159769_ _tl159725159764_))
                               (declare (not safe))
                               (_K159723159759_ _rest159769_ _hd159767_)))
                           (let ()
                             (declare (not safe))
                             (_else159721159735_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160508
                                  (let ((_$e159712_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159706_))))
                                    (if _$e159712_
                                        ((lambda (_pre159715_)
                                           (let ((__tmp160509
                                                  (##structure-ref
                                                   _ctx159706_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159715_ __tmp160509)))
                                         _$e159712_)
                                        (##structure-ref
                                         _ctx159706_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159710_ __tmp160508 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159637_)
        (let* ((_context-id159639_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159637_
                       'gx#module-context::t))
                    (##structure-ref _ctx159637_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159637_)))
               (_scm159641_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159639_))
                 '".scm"))
               (_dirs159643_ (let () (declare (not safe)) (load-path)))
               (_dirs159649_
                (let ((_user-libpath159645_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159645_
                      (let ((_user-libpath159647_
                             (path-expand '"lib" _user-libpath159645_)))
                        (if (member _user-libpath159647_ _dirs159643_)
                            _dirs159643_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159647_ _dirs159643_))))
                      _dirs159643_)))
               (_dirs159658_
                (let ((_$e159651_ (gxc#current-compile-output-dir)))
                  (if _$e159651_
                      ((lambda (_g159653159655_)
                         (let ()
                           (declare (not safe))
                           (cons _g159653159655_ _dirs159649_)))
                       _$e159651_)
                      _dirs159649_)))
               (_dirs159664_
                (map (lambda (_g159659159661_)
                       (path-expand '"static" _g159659159661_))
                     _dirs159658_)))
          (let _lp159667_ ((_rest159669_ _dirs159664_))
            (let* ((_rest159670159678_ _rest159669_)
                   (_else159672159686_
                    (lambda ()
                      (let ((__tmp160510
                             (##structure-ref
                              _ctx159637_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160510
                         _scm159641_))))
                   (_K159674159694_
                    (lambda (_rest159689_ _dir159690_)
                      (let ((_path159692_
                             (path-expand _scm159641_ _dir159690_)))
                        (if (file-exists? _path159692_)
                            _path159692_
                            (let ()
                              (declare (not safe))
                              (_lp159667_ _rest159689_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159670159678_))
                  (let ((_hd159675159697_
                         (let ()
                           (declare (not safe))
                           (##car _rest159670159678_)))
                        (_tl159676159699_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159670159678_))))
                    (let* ((_dir159702_ _hd159675159697_)
                           (_rest159704_ _tl159676159699_))
                      (declare (not safe))
                      (_K159674159694_ _rest159704_ _dir159702_)))
                  (let () (declare (not safe)) (_else159672159686_))))))))
    (define gxc#file-empty?
      (lambda (_path159635_)
        (let ((__tmp160511 (file-info-size (file-info _path159635_ '#t))))
          (declare (not safe))
          (zero? __tmp160511))))
    (define gxc#compile-top-module
      (lambda (_ctx159624_)
        (let ((__tmp160515
               (lambda ()
                 (let ((__tmp160516
                        (##structure-ref
                         _ctx159624_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160516))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160517
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159624_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160517))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159624_))
                 (if (let ((__tmp160520
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159624_))))
                       (declare (not safe))
                       (null? __tmp160520))
                     (let* ((_thr1159629_
                             (let ((__tmp160518
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159624_)))))
                               (declare (not safe))
                               (spawn __tmp160518)))
                            (_thr2159632_
                             (let ((__tmp160519
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159624_)))))
                               (declare (not safe))
                               (spawn __tmp160519))))
                       (let () (declare (not safe)) (gxc#join! _thr1159629_))
                       (let () (declare (not safe)) (gxc#join! _thr2159632_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159624_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159624_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159624_))
                     '#!void)))
              (__tmp160514
               (let ((__obj160322
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj160322)
                 __obj160322))
              (__tmp160513 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160512 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160515
           gx#current-expander-context
           _ctx159624_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160514
           gxc#current-compile-runtime-sections
           __tmp160513
           gxc#current-compile-runtime-names
           __tmp160512))))
    (define gxc#collect-bindings
      (lambda (_ctx159622_)
        (let ((__tmp160521
               (##structure-ref _ctx159622_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160521))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159568_)
        (letrec ((_compile1159570_
                  (lambda (_ctx159611_)
                    (let* ((_code159613_
                            (##structure-ref
                             _ctx159611_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159617_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159613_))
                                (let ((_idstr159615_
                                       (let ((__tmp160522
                                              (##structure-ref
                                               _ctx159611_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160522))))
                                  (string-append _idstr159615_ '"~0"))
                                '#f)))
                      (if _rt159617_
                          (begin
                            (let ((__tmp160523
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160523 _ctx159611_ _rt159617_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159572_
                               _ctx159611_
                               _code159613_)))
                          (let ((_path159620_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159611_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159620_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159573_
                         _ctx159611_
                         _code159613_
                         _rt159617_)))))
                 (_context-timestamp159571_
                  (lambda (_ctx159609_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159609_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159572_
                  (lambda (_ctx159591_ _code159592_)
                    (let* ((_lifts159594_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159597_
                            (let ((__tmp160526
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159592_))))
                                  (__tmp160525
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160524
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160526
                               gx#current-expander-context
                               _ctx159591_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159594_
                               gxc#current-compile-marks
                               __tmp160525
                               gxc#current-compile-identifiers
                               __tmp160524)))
                           (_runtime-code159599_
                            (if (let ((__tmp160530 (unbox _lifts159594_)))
                                  (declare (not safe))
                                  (null? __tmp160530))
                                _runtime-code159597_
                                (let ((__tmp160527
                                       (let ((__tmp160529
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159597_
                                                      '())))
                                             (__tmp160528
                                              (reverse (unbox _lifts159594_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160529
                                                 __tmp160528))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160527))))
                           (_runtime-code159601_
                            (let ((__tmp160531
                                   (let ((__tmp160533
                                          (let ((__tmp160534
                                                 (let ((__tmp160537
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159571_
                                                           _ctx159591_)))
                                                       (__tmp160535
                                                        (let ((__tmp160536
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160536
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160537
                                                         __tmp160535))))
                                            (declare (not safe))
                                            (cons 'define __tmp160534)))
                                         (__tmp160532
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159599_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160533 __tmp160532))))
                              (declare (not safe))
                              (cons 'begin __tmp160531)))
                           (_scm0159603_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159591_
                               '0
                               '".scm"))))
                      (let ((_scms159606_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159591_))))
                        (let ((__tmp160538
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159603_
                                    _runtime-code159601_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160538
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159606_)
                            (delete-file _scms159606_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159603_
                           '" => "
                           _scms159606_))
                        (copy-file _scm0159603_ _scms159606_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159603_))))))
                 (_generate-loader-code159573_
                  (lambda (_ctx159580_ _code159581_ _rt159582_)
                    (let* ((_loader-code159585_
                            (let ((__tmp160539
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159581_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160539
                               gx#current-expander-context
                               _ctx159580_)))
                           (_loader-code159587_
                            (if _rt159582_
                                (let ((__tmp160540
                                       (let ((__tmp160541
                                              (let ((__tmp160542
                                                     (let ((__tmp160543
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160542 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159585_
                                               __tmp160541))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160540))
                                _loader-code159585_)))
                      (let ((__tmp160544
                             (lambda ()
                               (let ((__tmp160545
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159580_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160545
                                  _loader-code159587_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160544
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159575_
                 (let ((__tmp160546
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159568_))))
                   (declare (not safe))
                   (cons _ctx159568_ __tmp160546))))
            (for-each
             (lambda (_ctx159577_)
               (let ((__tmp160547
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159570_ _ctx159577_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160547
                  gxc#current-compile-decls
                  '())))
             _all-modules159575_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159465_)
        (letrec ((_compile-ssi159467_
                  (lambda (_code159538_)
                    (let* ((_path159540_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159465_
                               '#f
                               '".ssi")))
                           (_prelude159551_
                            (let* ((_super159542_
                                    (##structure-ref
                                     _ctx159465_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159544_
                                    (##structure-ref
                                     _super159542_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159544_
                                  ((lambda (_g159546159548_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159546159548_)))
                                   _$e159544_)
                                  ':<root>)))
                           (_ns159553_
                            (##structure-ref
                             _ctx159465_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159555_
                            (symbol->string
                             (##structure-ref
                              _ctx159465_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159562_
                            (let ((_$e159557_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159555_ '#\/))))
                              (if _$e159557_
                                  ((lambda (_x159560_)
                                     (string->symbol
                                      (substring _idstr159555_ '0 _x159560_)))
                                   _$e159557_)
                                  '#f)))
                           (_rt159564_
                            (let ((__tmp160548
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160548 _ctx159465_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159540_))
                      (let ((__tmp160549
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159551_))
                               (if _pkg159562_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159562_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159553_))
                               (newline)
                               (pretty-print _code159538_)
                               (if _rt159564_
                                   (pretty-print
                                    (let ((__tmp160550
                                           (let ((__tmp160554
                                                  (let ((__tmp160555
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160555)))
                                                 (__tmp160551
                                                  (let ((__tmp160552
                                                         (let ((__tmp160553
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159564_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160552 '()))))
                                             (declare (not safe))
                                             (cons __tmp160554 __tmp160551))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160550)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159540_
                         __tmp160549)))))
                 (_compile-phi159468_
                  (lambda (_part159478_)
                    (let* ((_part159479159492_ _part159478_)
                           (_E159481159496_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159479159492_))))
                           (_K159482159507_
                            (lambda (_code159499_
                                     _n159500_
                                     _phi159501_
                                     _phi-ctx159502_)
                              (let* ((_code159505_
                                      (let ((__tmp160556
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159499_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160556
                                         gx#current-expander-context
                                         _phi-ctx159502_
                                         gx#current-expander-phi
                                         _phi159501_)))
                                     (__tmp160557
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159465_
                                         _n159500_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160557
                                 _code159505_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159479159492_))
                          (let ((_hd159483159510_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159479159492_)))
                                (_tl159484159512_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159479159492_))))
                            (let ((_phi-ctx159515_ _hd159483159510_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159484159512_))
                                  (let ((_hd159485159517_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159484159512_)))
                                        (_tl159486159519_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159484159512_))))
                                    (let ((_phi159522_ _hd159485159517_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159486159519_))
                                          (let ((_hd159487159524_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159486159519_)))
                                                (_tl159488159526_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159486159519_))))
                                            (let ((_n159529_ _hd159487159524_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159488159526_))
                                                  (let ((_hd159489159531_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159488159526_)))
                                                        (_tl159490159533_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159488159526_))))
                                                    (let ((_code159536_
                                                           _hd159489159531_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159490159533_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159482159507_
                                                             _code159536_
                                                             _n159529_
                                                             _phi159522_
                                                             _phi-ctx159515_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159481159496_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159481159496_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159481159496_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159481159496_)))))
                          (let () (declare (not safe)) (_E159481159496_)))))))
          (let ((_g160558_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159465_))))
            (begin
              (let ((_g160559_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160558_)
                           (##vector-length _g160558_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160559_ 2)))
                    (error "Context expects 2 values" _g160559_)))
              (let ((_ssi-code159470_
                     (let () (declare (not safe)) (##vector-ref _g160558_ 0)))
                    (_phi-code159471_
                     (let () (declare (not safe)) (##vector-ref _g160558_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159467_ _ssi-code159470_))
                  (let ((_threads159476_
                         (map (lambda (_code159473_)
                                (let ((__tmp160560
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159468_
                                            _code159473_)))))
                                  (declare (not safe))
                                  (spawn __tmp160560)))
                              _phi-code159471_)))
                    (for-each gxc#join! _threads159476_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159448_)
        (let* ((_path159450_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159448_ '#f '".ssxi.ss")))
               (_code159452_
                (let ((__tmp160561
                       (##structure-ref
                        _ctx159448_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160561)))
               (_idstr159454_
                (symbol->string
                 (##structure-ref _ctx159448_ '1 gx#expander-context::t '#f)))
               (_pkg159461_
                (let ((_$e159456_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159454_ '#\/))))
                  (if _$e159456_
                      ((lambda (_x159459_)
                         (string->symbol
                          (substring _idstr159454_ '0 _x159459_)))
                       _$e159456_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159450_))
          (let ((__tmp160562
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159461_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159461_))
                       '#!void)
                   (newline)
                   (pretty-print _code159452_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159450_ __tmp160562)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159441_)
        (let* ((_state159443_
                (let ((__obj160323
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj160323 _ctx159441_)
                  __obj160323))
               (_ssi-code159445_
                (let ((__tmp160563
                       (##structure-ref
                        _ctx159441_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160563
                   'state:
                   _state159443_))))
          (values _ssi-code159445_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159443_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159434_)
        (let ((_lifts159436_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160566
                 (lambda ()
                   (let ((_code159439_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159434_))))
                     (if (let ((__tmp160570 (unbox _lifts159436_)))
                           (declare (not safe))
                           (null? __tmp160570))
                         _code159439_
                         (let ((__tmp160567
                                (let ((__tmp160569
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159439_ '())))
                                      (__tmp160568
                                       (reverse (unbox _lifts159436_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160569 __tmp160568))))
                           (declare (not safe))
                           (cons 'begin __tmp160567))))))
                (__tmp160565
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160564
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160566
             gxc#current-compile-lift
             _lifts159436_
             gxc#current-compile-marks
             __tmp160565
             gxc#current-compile-identifiers
             __tmp160564)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159430_)
        (let ((_modules159432_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160571
                 (##structure-ref _ctx159430_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160571 'modules: _modules159432_))
          (reverse (unbox _modules159432_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159413_ _code159414_ _phi?159415_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159413_))
        (let ((__tmp160572
               (lambda ()
                 (pretty-print
                  (let ((__tmp160573
                         (let ((__tmp160580
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160574
                                (let ((__tmp160579
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160575
                                       (let ((__tmp160578
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160576
                                              (let ((__tmp160577
                                                     (if _phi?159415_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160577))))
                                         (declare (not safe))
                                         (cons __tmp160578 __tmp160576))))
                                  (declare (not safe))
                                  (cons __tmp160579 __tmp160575))))
                           (declare (not safe))
                           (cons __tmp160580 __tmp160574))))
                    (declare (not safe))
                    (cons 'declare __tmp160573)))
                 (pretty-print _code159414_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159413_ __tmp160572))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159413_ _phi?159415_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159413_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159421_ _code159422_)
        (let ((_phi?159424_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159421_ _code159422_ _phi?159424_))))
    (define gxc#compile-scm-file
      (lambda _g160582_
        (let ((_g160581_ (let () (declare (not safe)) (##length _g160582_))))
          (cond ((let () (declare (not safe)) (##fx= _g160581_ 2))
                 (apply (lambda (_path159421_ _code159422_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159421_
                             _code159422_)))
                        _g160582_))
                ((let () (declare (not safe)) (##fx= _g160581_ 3))
                 (apply (lambda (_path159426_ _code159427_ _phi?159428_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159426_
                             _code159427_
                             _phi?159428_)))
                        _g160582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160582_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?159314_)
        (let _lp159316_ ((_rest159318_ (gxc#current-compile-gsc-options))
                         (_opts159319_ '()))
          (let* ((_rest159320159340_ _rest159318_)
                 (_else159324159348_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159314_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160583
                               (let ((__tmp160584 (reverse _opts159319_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160584))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160583))
                        (reverse _opts159319_)))))
            (let ((_K159334159391_
                   (lambda (_rest159389_)
                     (let ()
                       (declare (not safe))
                       (_lp159316_ _rest159389_ _opts159319_))))
                  (_K159329159373_
                   (lambda (_rest159371_)
                     (let ()
                       (declare (not safe))
                       (_lp159316_ _rest159371_ _opts159319_))))
                  (_K159326159355_
                   (lambda (_rest159352_ _opt159353_)
                     (let ((__tmp160585
                            (let ()
                              (declare (not safe))
                              (cons _opt159353_ _opts159319_))))
                       (declare (not safe))
                       (_lp159316_ _rest159352_ __tmp160585)))))
              (if (let () (declare (not safe)) (##pair? _rest159320159340_))
                  (let ((_tl159336159396_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159320159340_)))
                        (_hd159335159394_
                         (let ()
                           (declare (not safe))
                           (##car _rest159320159340_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159335159394_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159336159396_))
                            (let* ((_tl159338159399_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159336159396_)))
                                   (_rest159402_ _tl159338159399_))
                              (declare (not safe))
                              (_K159334159391_ _rest159402_))
                            (let ((_opt159363_ _hd159335159394_)
                                  (_rest159365_ _tl159336159396_))
                              (let ()
                                (declare (not safe))
                                (_K159326159355_ _rest159365_ _opt159363_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159335159394_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159336159396_))
                                (let* ((_tl159333159381_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159336159396_)))
                                       (_rest159384_ _tl159333159381_))
                                  (declare (not safe))
                                  (_K159329159373_ _rest159384_))
                                (let ((_opt159363_ _hd159335159394_)
                                      (_rest159365_ _tl159336159396_))
                                  (let ()
                                    (declare (not safe))
                                    (_K159326159355_
                                     _rest159365_
                                     _opt159363_))))
                            (let ((_opt159363_ _hd159335159394_)
                                  (_rest159365_ _tl159336159396_))
                              (let ()
                                (declare (not safe))
                                (_K159326159355_ _rest159365_ _opt159363_))))))
                  (let () (declare (not safe)) (_else159324159348_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159408_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159408_))))
    (define gxc#gsc-link-options
      (lambda _g160587_
        (let ((_g160586_ (let () (declare (not safe)) (##length _g160587_))))
          (cond ((let () (declare (not safe)) (##fx= _g160586_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160587_))
                ((let () (declare (not safe)) (##fx= _g160586_ 1))
                 (apply (lambda (_phi?159410_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159410_)))
                        _g160587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160587_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?159215_)
        (let _lp159217_ ((_rest159219_ (gxc#current-compile-gsc-options))
                         (_opts159220_ '()))
          (let* ((_rest159221159241_ _rest159219_)
                 (_else159225159249_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159215_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160588
                               (let ((__tmp160589 (reverse _opts159220_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160589))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160588))
                        (reverse _opts159220_)))))
            (let ((_K159235159288_
                   (lambda (_rest159285_ _opt159286_)
                     (let ((__tmp160590
                            (let ((__tmp160591
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts159220_))))
                              (declare (not safe))
                              (cons _opt159286_ __tmp160591))))
                       (declare (not safe))
                       (_lp159217_ _rest159285_ __tmp160590))))
                  (_K159230159269_
                   (lambda (_rest159267_)
                     (let ()
                       (declare (not safe))
                       (_lp159217_ _rest159267_ _opts159220_))))
                  (_K159227159255_
                   (lambda (_rest159253_)
                     (let ()
                       (declare (not safe))
                       (_lp159217_ _rest159253_ _opts159220_)))))
              (if (let () (declare (not safe)) (##pair? _rest159221159241_))
                  (let ((_tl159237159293_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159221159241_)))
                        (_hd159236159291_
                         (let ()
                           (declare (not safe))
                           (##car _rest159221159241_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159236159291_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159237159293_))
                            (let ((_tl159239159298_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl159237159293_)))
                                  (_hd159238159296_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl159237159293_))))
                              (let ((_opt159301_ _hd159238159296_)
                                    (_rest159303_ _tl159239159298_))
                                (let ()
                                  (declare (not safe))
                                  (_K159235159288_ _rest159303_ _opt159301_))))
                            (let ((_rest159261_ _tl159237159293_))
                              (declare (not safe))
                              (_K159227159255_ _rest159261_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159236159291_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159237159293_))
                                (let* ((_tl159234159277_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159237159293_)))
                                       (_rest159280_ _tl159234159277_))
                                  (declare (not safe))
                                  (_K159230159269_ _rest159280_))
                                (let ((_rest159261_ _tl159237159293_))
                                  (declare (not safe))
                                  (_K159227159255_ _rest159261_)))
                            (let ((_rest159261_ _tl159237159293_))
                              (declare (not safe))
                              (_K159227159255_ _rest159261_)))))
                  (let () (declare (not safe)) (_else159225159249_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?159309_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?159309_))))
    (define gxc#gsc-cc-options
      (lambda _g160593_
        (let ((_g160592_ (let () (declare (not safe)) (##length _g160593_))))
          (cond ((let () (declare (not safe)) (##fx= _g160592_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160593_))
                ((let () (declare (not safe)) (##fx= _g160592_ 1))
                 (apply (lambda (_phi?159311_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?159311_)))
                        _g160593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160593_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir159210_)
        (let* ((_user-staticdir159212_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160594
                (let ((__tmp160595
                       (string-append
                        '"-I "
                        _staticdir159210_
                        '" -I "
                        _user-staticdir159212_)))
                  (declare (not safe))
                  (cons __tmp160595 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160594))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp159122_ ((_rest159124_ (gxc#current-compile-gsc-options))
                         (_opts159125_ '()))
          (let* ((_rest159126159146_ _rest159124_)
                 (_else159130159154_ (lambda () _opts159125_)))
            (let ((_K159140159197_
                   (lambda (_rest159195_)
                     (let ()
                       (declare (not safe))
                       (_lp159122_ _rest159195_ _opts159125_))))
                  (_K159135159175_
                   (lambda (_rest159172_ _opt159173_)
                     (let ((__tmp160596
                            (append _opts159125_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt159173_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp159122_ _rest159172_ __tmp160596))))
                  (_K159132159160_
                   (lambda (_rest159158_)
                     (let ()
                       (declare (not safe))
                       (_lp159122_ _rest159158_ _opts159125_)))))
              (if (let () (declare (not safe)) (##pair? _rest159126159146_))
                  (let ((_tl159142159202_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159126159146_)))
                        (_hd159141159200_
                         (let ()
                           (declare (not safe))
                           (##car _rest159126159146_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159141159200_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159142159202_))
                            (let* ((_tl159144159205_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159142159202_)))
                                   (_rest159208_ _tl159144159205_))
                              (declare (not safe))
                              (_K159140159197_ _rest159208_))
                            (let ((_rest159166_ _tl159142159202_))
                              (declare (not safe))
                              (_K159132159160_ _rest159166_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159141159200_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159142159202_))
                                (let ((_tl159139159185_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl159142159202_)))
                                      (_hd159138159183_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl159142159202_))))
                                  (let ((_opt159188_ _hd159138159183_)
                                        (_rest159190_ _tl159139159185_))
                                    (let ()
                                      (declare (not safe))
                                      (_K159135159175_
                                       _rest159190_
                                       _opt159188_))))
                                (let ((_rest159166_ _tl159142159202_))
                                  (declare (not safe))
                                  (_K159132159160_ _rest159166_)))
                            (let ((_rest159166_ _tl159142159202_))
                              (declare (not safe))
                              (_K159132159160_ _rest159166_)))))
                  (let () (declare (not safe)) (_else159130159154_))))))))
    (define gxc#not-string-empty?
      (lambda (_str159119_)
        (let ((__tmp160597
               (let () (declare (not safe)) (string-empty? _str159119_))))
          (declare (not safe))
          (not __tmp160597))))
    (define gxc#gsc-compile-file
      (lambda (_path159087_ _phi?159088_)
        (letrec ((_gsc-link-path159090_
                  (lambda (_base-path159111_)
                    (let _lp159113_ ((_n159115_ '1))
                      (let ((_path159117_
                             (string-append
                              _base-path159111_
                              '".o"
                              (number->string _n159115_))))
                        (if (file-exists? _path159117_)
                            (let ((__tmp160598
                                   (let ()
                                     (declare (not safe))
                                     (+ _n159115_ '1))))
                              (declare (not safe))
                              (_lp159113_ __tmp160598))
                            _path159117_))))))
          (let* ((_base-path159092_ (path-strip-extension _path159087_))
                 (_path-c159094_ (string-append _base-path159092_ '".c"))
                 (_path-o159096_ (string-append _base-path159092_ '".o"))
                 (_link-path159098_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path159090_ _base-path159092_)))
                 (_link-path-c159100_ (string-append _link-path159098_ '".c"))
                 (_link-path-o159102_ (string-append _link-path159098_ '".o"))
                 (_gsc-link-opts159104_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?159088_)))
                 (_gsc-cc-opts159106_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?159088_)))
                 (_gcc-ld-opts159108_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160605 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160599
                   (let ((__tmp160600
                          (let ((__tmp160601
                                 (let ((__tmp160602
                                        (let ((__tmp160603
                                               (let ((__tmp160604
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path159087_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160604
                                                         _gsc-link-opts159104_))))
                                          (declare (not safe))
                                          (cons _link-path-c159100_
                                                __tmp160603))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160602))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160601))))
                     (declare (not safe))
                     (cons '"-link" __tmp160600))))
              (declare (not safe))
              (gxc#invoke __tmp160605 __tmp160599 'stdout-redirection: '#t))
            (let ((__tmp160612 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160606
                   (let ((__tmp160607
                          (let ((__tmp160608
                                 (let ((__tmp160609
                                        (let ((__tmp160610
                                               (let ((__tmp160611
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c159100_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c159094_
                                                       __tmp160611))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160610
                                                  _gsc-cc-opts159106_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160609))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160608))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160607))))
              (declare (not safe))
              (gxc#invoke __tmp160612 __tmp160606 'stdout-redirection: '#t))
            (let ((__tmp160618 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160613
                   (let ((__tmp160614
                          (let ((__tmp160615
                                 (let ((__tmp160616
                                        (let ((__tmp160617
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o159102_
                                                       _gcc-ld-opts159108_))))
                                          (declare (not safe))
                                          (cons _path-o159096_ __tmp160617))))
                                   (declare (not safe))
                                   (cons _link-path159098_ __tmp160616))))
                            (declare (not safe))
                            (cons '"-o" __tmp160615))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160614))))
              (declare (not safe))
              (gxc#invoke __tmp160618 __tmp160613))
            (for-each
             delete-file
             (let ((__tmp160619
                    (let ((__tmp160620
                           (let ((__tmp160621
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o159102_ '()))))
                             (declare (not safe))
                             (cons _link-path-c159100_ __tmp160621))))
                      (declare (not safe))
                      (cons _path-o159096_ __tmp160620))))
               (declare (not safe))
               (cons _path-c159094_ __tmp160619)))))))
    (define gxc#compile-output-file
      (lambda (_ctx159058_ _n159059_ _ext159060_)
        (letrec ((_module-relative-path159062_
                  (lambda (_ctx159085_)
                    (path-strip-directory
                     (let ((__tmp160622
                            (##structure-ref
                             _ctx159085_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160622)))))
                 (_module-source-directory159063_
                  (lambda (_ctx159081_)
                    (path-directory
                     (let ((_mpath159083_
                            (##structure-ref
                             _ctx159081_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath159083_))
                           _mpath159083_
                           (last _mpath159083_))))))
                 (_section-string159064_
                  (lambda (_n159079_)
                    (if (let () (declare (not safe)) (number? _n159079_))
                        (number->string _n159079_)
                        (if (let () (declare (not safe)) (symbol? _n159079_))
                            (symbol->string _n159079_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n159079_))
                                _n159079_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n159079_)))))))
                 (_file-name159065_
                  (lambda (_path159077_)
                    (if _n159059_
                        (string-append
                         _path159077_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_section-string159064_ _n159059_))
                         _ext159060_)
                        (string-append _path159077_ _ext159060_))))
                 (_file-path159066_
                  (lambda ()
                    (let ((_$e159072_ (gxc#current-compile-output-dir)))
                      (if _$e159072_
                          ((lambda (_outdir159075_)
                             (path-expand
                              (let ((__tmp160624
                                     (let ((__tmp160625
                                            (##structure-ref
                                             _ctx159058_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160625))))
                                (declare (not safe))
                                (_file-name159065_ __tmp160624))
                              _outdir159075_))
                           _$e159072_)
                          (path-expand
                           (let ((__tmp160623
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path159062_
                                     _ctx159058_))))
                             (declare (not safe))
                             (_file-name159065_ __tmp160623))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory159063_
                              _ctx159058_))))))))
          (let ((_path159068_
                 (let () (declare (not safe)) (_file-path159066_))))
            (let ((__tmp160626
                   (lambda ()
                     (let ((__tmp160627 (path-directory _path159068_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160627)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160626))
            _path159068_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx159040_)
        (letrec ((_file-name159042_
                  (lambda (_id159056_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id159056_))
                     '".scm")))
                 (_file-path159043_
                  (lambda ()
                    (let* ((_file159049_
                            (let ((__tmp160628
                                   (##structure-ref
                                    _ctx159040_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name159042_ __tmp160628)))
                           (_$e159051_ (gxc#current-compile-output-dir)))
                      (if _$e159051_
                          ((lambda (_outdir159054_)
                             (path-expand
                              _file159049_
                              (path-expand '"static" _outdir159054_)))
                           _$e159051_)
                          (path-expand _file159049_ '"static"))))))
          (let ((_path159045_
                 (let () (declare (not safe)) (_file-path159043_))))
            (let ((__tmp160629
                   (lambda ()
                     (let ((__tmp160630 (path-directory _path159045_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160630)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160629))
            _path159045_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx159034_ _opts159035_)
        (let ((_$e159037_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts159035_))))
          (if _$e159037_
              (values _$e159037_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx159034_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr159027_)
        (if (let () (declare (not safe)) (string? _idstr159027_))
            (let* ((_str159029_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr159027_)))
                   (_strs159031_
                    (let ()
                      (declare (not safe))
                      (string-split _str159029_ '#\/))))
              (let () (declare (not safe)) (string-join _strs159031_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr159027_))
                (let ((__tmp160631 (symbol->string _idstr159027_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160631))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr159027_))))))
    (define gxc#invoke__%
      (lambda (_g160632_
               _stdout-redirection158988158992_
               _stderr-redirection158989158994_
               _program158996_
               _args158997_)
        (let* ((_stdout-redirection158999_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158988158992_ absent-value))
                    '#f
                    _stdout-redirection158988158992_))
               (_stderr-redirection159001_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158989158994_ absent-value))
                    '#f
                    _stderr-redirection158989158994_)))
          (let ((__tmp160633
                 (let ()
                   (declare (not safe))
                   (cons _program158996_ _args158997_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160633))
          (let* ((_proc159003_
                  (open-process
                   (let ((__tmp160634
                          (let ((__tmp160635
                                 (let ((__tmp160636
                                        (let ((__tmp160637
                                               (let ((__tmp160638
                                                      (let ((__tmp160639
                                                             (let ((__tmp160640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection159001_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160640))))
                (declare (not safe))
                (cons _stdout-redirection158999_ __tmp160639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160638))))
                                          (declare (not safe))
                                          (cons _args158997_ __tmp160637))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160636))))
                            (declare (not safe))
                            (cons _program158996_ __tmp160635))))
                     (declare (not safe))
                     (cons 'path: __tmp160634))))
                 (_output159008_
                  (if (or _stdout-redirection158999_
                          _stderr-redirection159001_)
                      (read-line _proc159003_ '#f)
                      '#f)))
            (let ((_status159011_ (process-status _proc159003_)))
              (close-port _proc159003_)
              (if (let () (declare (not safe)) (zero? _status159011_))
                  '#!void
                  (begin
                    (display _output159008_)
                    (let ((__tmp160641
                           (let ()
                             (declare (not safe))
                             (cons _program158996_ _args158997_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160641
                       _status159011_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158987159016_ . _args159018_)
        (apply gxc#invoke__%
               _keys158987159016_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158987159016_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158987159016_
                  'stderr-redirection:
                  absent-value))
               _args159018_)))
    (define gxc#invoke
      (lambda _args158990159024_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158990159024_)))
    (define gxc#join!
      (lambda (_thread158981_)
        (let ((__tmp160643
               (lambda (_exn158983_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158983_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158983_)))
                     (raise _exn158983_))))
              (__tmp160642 (lambda () (thread-join! _thread158981_))))
          (declare (not safe))
          (with-catch __tmp160643 __tmp160642))))))
