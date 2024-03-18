(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710781154)
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
      (lambda (_path160226_ _fun160227_)
        (with-output-to-file
         (let ((__tmp160320
                (let ()
                  (declare (not safe))
                  (cons _path160226_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp160320))
         _fun160227_)))
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
      (lambda (_gerbil-libdir160221_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir160221_)))
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
      (lambda (_dir160219_) (delete-file-or-directory _dir160219_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath160193_ _opts160194_)
        (if (let () (declare (not safe)) (string? _srcpath160193_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160193_)))
        (let ((_outdir160196_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160194_)))
              (_invoke-gsc?160197_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160194_)))
              (_gsc-options160198_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160194_)))
              (_keep-scm?160199_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160194_)))
              (_verbosity160200_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160194_)))
              (_optimize160201_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts160194_)))
              (_debug160202_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160194_)))
              (_gen-ssxi160203_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts160194_))))
          (if _outdir160196_
              (let ((__tmp160321
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160196_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160321))
              '#!void)
          (if _optimize160201_
              (let ((__tmp160322
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160322))
              '#!void)
          (let ((__tmp160326
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath160193_))
                   (let ((__tmp160327
                          (let ((__tmp160328
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160193_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160328))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp160327))))
                (__tmp160325
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160323
                 (let ((__tmp160324
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160193_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp160324))))
            (declare (not safe))
            (call-with-parameters
             __tmp160326
             gxc#current-compile-output-dir
             _outdir160196_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160197_
             gxc#current-compile-gsc-options
             _gsc-options160198_
             gxc#current-compile-keep-scm
             _keep-scm?160199_
             gxc#current-compile-verbose
             _verbosity160200_
             gxc#current-compile-optimize
             _optimize160201_
             gxc#current-compile-debug
             _debug160202_
             gxc#current-compile-generate-ssxi
             _gen-ssxi160203_
             gxc#current-compile-timestamp
             __tmp160325
             gxc#current-compile-context
             __tmp160323
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath160212_)
        (let ((_opts160214_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath160212_ _opts160214_))))
    (define gxc#compile-module
      (lambda _g160330_
        (let ((_g160329_ (let () (declare (not safe)) (##length _g160330_))))
          (cond ((let () (declare (not safe)) (##fx= _g160329_ 1))
                 (apply (lambda (_srcpath160212_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath160212_)))
                        _g160330_))
                ((let () (declare (not safe)) (##fx= _g160329_ 2))
                 (apply (lambda (_srcpath160216_ _opts160217_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath160216_
                             _opts160217_)))
                        _g160330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g160330_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath160169_ _opts160170_)
        (if (let () (declare (not safe)) (string? _srcpath160169_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160169_)))
        (let ((_outdir160172_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160170_)))
              (_invoke-gsc?160173_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160170_)))
              (_gsc-options160174_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160170_)))
              (_keep-scm?160175_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160170_)))
              (_verbosity160176_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160170_)))
              (_debug160177_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160170_))))
          (if _outdir160172_
              (let ((__tmp160331
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160172_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160331))
              '#!void)
          (let ((__tmp160335
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath160169_))
                   (let ((__tmp160336
                          (let ((__tmp160337
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160169_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160337))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160336
                      _opts160170_))))
                (__tmp160334
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160332
                 (let ((__tmp160333
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160169_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160333))))
            (declare (not safe))
            (call-with-parameters
             __tmp160335
             gxc#current-compile-output-dir
             _outdir160172_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160173_
             gxc#current-compile-gsc-options
             _gsc-options160174_
             gxc#current-compile-keep-scm
             _keep-scm?160175_
             gxc#current-compile-verbose
             _verbosity160176_
             gxc#current-compile-debug
             _debug160177_
             gxc#current-compile-timestamp
             __tmp160334
             gxc#current-compile-context
             __tmp160332
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath160185_)
        (let ((_opts160187_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath160185_ _opts160187_))))
    (define gxc#compile-exe
      (lambda _g160339_
        (let ((_g160338_ (let () (declare (not safe)) (##length _g160339_))))
          (cond ((let () (declare (not safe)) (##fx= _g160338_ 1))
                 (apply (lambda (_srcpath160185_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath160185_)))
                        _g160339_))
                ((let () (declare (not safe)) (##fx= _g160338_ 2))
                 (apply (lambda (_srcpath160189_ _opts160190_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath160189_ _opts160190_)))
                        _g160339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160339_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx160165_ _opts160166_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts160166_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx160165_
               _opts160166_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx160165_
               _opts160166_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx160048_ _opts160049_)
        (letrec ((_generate-stub160051_
                  (lambda (_builtin-modules160161_)
                    (let ((_mod-main160163_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx160048_ 'main))))
                      (write (let ((__tmp160340
                                    (let ((__tmp160341
                                           (let ((__tmp160342
                                                  (let ((__tmp160343
                                                         (let ((__tmp160345
                                                                (let ((__tmp160346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules160161_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160346)))
                       (__tmp160344
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160345 __tmp160344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160343))))
                                             (declare (not safe))
                                             (cons __tmp160342 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160341))))
                               (declare (not safe))
                               (cons 'define __tmp160340)))
                      (write (let ((__tmp160347
                                    (let ((__tmp160386
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160348
                                           (let ((__tmp160349
                                                  (let ((__tmp160350
                                                         (let ((__tmp160374
                                                                (let ((__tmp160375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160376
                                      (let ((__tmp160384
                                             (let ((__tmp160385
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp160385)))
                                            (__tmp160377
                                             (let ((__tmp160378
                                                    (let ((__tmp160379
                                                           (let ((__tmp160380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160381
                                 (let ((__tmp160382
                                        (let ((__tmp160383
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160383 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160382))))
                            (declare (not safe))
                            (cons __tmp160381 '()))))
                     (declare (not safe))
                     (cons _mod-main160163_ __tmp160380))))
              (declare (not safe))
              (cons 'apply __tmp160379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160378 '()))))
                                        (declare (not safe))
                                        (cons __tmp160384 __tmp160377))))
                                 (declare (not safe))
                                 (cons '() __tmp160376))))
                          (declare (not safe))
                          (cons 'lambda __tmp160375)))
                       (__tmp160351
                        (let ((__tmp160352
                               (let ((__tmp160353
                                      (let ((__tmp160354
                                             (let ((__tmp160365
                                                    (let ((__tmp160366
                                                           (let ((__tmp160367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160368
                                 (let ((__tmp160369
                                        (let ((__tmp160370
                                               (let ((__tmp160371
                                                      (let ((__tmp160372
                                                             (let ((__tmp160373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160373 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160371 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160370))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160369))))
                            (declare (not safe))
                            (cons __tmp160368 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160367))))
              (declare (not safe))
              (cons 'with-catch __tmp160366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160355
                                                    (let ((__tmp160356
                                                           (let ((__tmp160357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160358
                                 (let ((__tmp160359
                                        (let ((__tmp160360
                                               (let ((__tmp160361
                                                      (let ((__tmp160362
                                                             (let ((__tmp160363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp160364
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160364 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160363))))
                (declare (not safe))
                (cons __tmp160362 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160361))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160360))))
                                   (declare (not safe))
                                   (cons __tmp160359 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160358))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160357))))
              (declare (not safe))
              (cons __tmp160356 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160365
                                                     __tmp160355))))
                                        (declare (not safe))
                                        (cons '() __tmp160354))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160353))))
                          (declare (not safe))
                          (cons __tmp160352 '()))))
                   (declare (not safe))
                   (cons __tmp160374 __tmp160351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160350))))
                                             (declare (not safe))
                                             (cons __tmp160349 '()))))
                                      (declare (not safe))
                                      (cons __tmp160386 __tmp160348))))
                               (declare (not safe))
                               (cons 'define __tmp160347)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts160052_
                  (lambda (_libgerbil160159_)
                    (call-with-input-file
                     (string-append _libgerbil160159_ '".ldd")
                     read)))
                 (_replace-extension160053_
                  (lambda (_path160156_ _ext160157_)
                    (string-append
                     (path-strip-extension _path160156_)
                     _ext160157_)))
                 (_not-exclude-module?160054_
                  (lambda (_ctx160152_)
                    (let ((_id-str160154_
                           (symbol->string
                            (##structure-ref
                             _ctx160152_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160388
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str160154_))))
                            (declare (not safe))
                            (not __tmp160388))
                          (let ((__tmp160387
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str160154_))))
                            (declare (not safe))
                            (not __tmp160387))
                          '#f))))
                 (_not-file-empty?160055_
                  (lambda (_path160150_)
                    (let ((__tmp160389
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path160150_))))
                      (declare (not safe))
                      (not __tmp160389))))
                 (_compile-stub160056_
                  (lambda (_output-scm160063_ _output-bin160064_)
                    (let* ((_gerbil-home160066_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir160068_
                            (path-expand '"lib" _gerbil-home160066_))
                           (_gerbil-staticdir160070_
                            (path-expand '"static" _gerbil-libdir160068_))
                           (_gxlink160072_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir160068_))
                           (_tmp160074_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path160078_
                            (lambda (_f160076_)
                              (path-expand
                               (path-strip-directory _f160076_)
                               _tmp160074_)))
                           (_deps160080_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx160048_)))
                           (_deps160082_
                            (filter _not-exclude-module?160054_ _deps160080_))
                           (_src-deps-scm160084_
                            (map gxc#find-static-module-file _deps160082_))
                           (_src-deps-scm160086_
                            (filter _not-file-empty?160055_
                                    _src-deps-scm160084_))
                           (_src-deps-scm160088_
                            (map path-expand _src-deps-scm160086_))
                           (_deps-scm160090_
                            (map _tmp-path160078_ _src-deps-scm160088_))
                           (_deps-c160096_
                            (map (lambda (_g160091160093_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160053_
                                      _g160091160093_
                                      '".c")))
                                 _deps-scm160090_))
                           (_deps-o160102_
                            (map (lambda (_g160097160099_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160053_
                                      _g160097160099_
                                      '".o")))
                                 _deps-scm160090_))
                           (_src-bin-scm160104_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx160048_)))
                           (_src-bin-scm160106_
                            (path-expand _src-bin-scm160104_))
                           (_bin-scm160108_
                            (let ()
                              (declare (not safe))
                              (_tmp-path160078_ _src-bin-scm160106_)))
                           (_bin-c160110_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160053_
                               _bin-scm160108_
                               '".c")))
                           (_bin-o160112_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160053_
                               _bin-scm160108_
                               '".o")))
                           (_output-bin160114_
                            (path-expand _output-bin160064_))
                           (_output-scm160116_
                            (path-expand _output-scm160063_))
                           (_output-c160118_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160053_
                               _output-scm160116_
                               '".c")))
                           (_output-o160120_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160053_
                               _output-scm160116_
                               '".o")))
                           (_output_-c160122_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160053_
                               _output-scm160116_
                               '"_.c")))
                           (_output_-o160124_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160053_
                               _output-scm160116_
                               '"_.o")))
                           (_gsc-link-opts160126_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts160128_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts160130_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir160070_)))
                           (_output-ld-opts160132_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a160134_
                            (path-expand '"libgerbil.a" _gerbil-libdir160068_))
                           (_libgerbil.so160136_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir160068_))
                           (_libgerbil-ld-opts160138_
                            (if (file-exists? _libgerbil.so160136_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts160052_
                                   _libgerbil.so160136_))
                                (if (file-exists? _libgerbil.a160134_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts160052_
                                       _libgerbil.a160134_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a160134_
                                       _libgerbil.so160136_)))))
                           (_rpath160140_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir160068_)))
                           (_builtin-modules160144_
                            (map (lambda (_mod160142_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod160142_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx160048_ _deps160082_)))))
                      (let ((__tmp160390
                             (lambda ()
                               (let ((__tmp160391
                                      (path-directory _output-bin160114_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160391)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160390))
                      (let ((__tmp160392
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub160051_
                                  _builtin-modules160144_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm160116_
                         __tmp160392))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160393
                                   (lambda () (create-directory _tmp160074_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160393))
                            (for-each
                             copy-file
                             _src-deps-scm160088_
                             _deps-scm160090_)
                            (copy-file _src-bin-scm160106_ _bin-scm160108_)
                            (let ((__tmp160401
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160394
                                   (let ((__tmp160395
                                          (let ((__tmp160396
                                                 (let ((__tmp160397
                                                        (let ((__tmp160398
                                                               (let ((__tmp160399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160400
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm160116_ '()))))
                                (declare (not safe))
                                (cons _bin-scm160108_ __tmp160400))))
                         (declare (not safe))
                         (foldr1 cons __tmp160399 _deps-scm160090_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160398 _gsc-link-opts160126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink160072_
                                                         __tmp160397))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160396))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160395))))
                              (declare (not safe))
                              (gxc#invoke __tmp160401 __tmp160394))
                            (let ((__tmp160409
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160402
                                   (let ((__tmp160403
                                          (let ((__tmp160404
                                                 (let ((__tmp160405
                                                        (let ((__tmp160406
                                                               (let ((__tmp160407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160408
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c160122_ '()))))
                                (declare (not safe))
                                (cons _output-c160118_ __tmp160408))))
                         (declare (not safe))
                         (cons _bin-c160110_ __tmp160407))))
                  (declare (not safe))
                  (foldr1 cons __tmp160406 _deps-c160096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160405
                                                           _gsc-static-opts160130_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160404
                                                    _gsc-cc-opts160128_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160403))))
                              (declare (not safe))
                              (gxc#invoke __tmp160409 __tmp160402))
                            (let ((__tmp160422
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160410
                                   (let ((__tmp160411
                                          (let ((__tmp160412
                                                 (let ((__tmp160413
                                                        (let ((__tmp160414
                                                               (let ((__tmp160415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160416
                                     (let ((__tmp160417
                                            (let ((__tmp160418
                                                   (let ((__tmp160419
                                                          (let ((__tmp160420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160421
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts160138_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160421))))
                    (declare (not safe))
                    (cons _gerbil-libdir160068_ __tmp160420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160419))))
                                              (declare (not safe))
                                              (cons _rpath160140_
                                                    __tmp160418))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160417
                                               _output-ld-opts160132_))))
                                (declare (not safe))
                                (cons _output_-o160124_ __tmp160416))))
                         (declare (not safe))
                         (cons _output-o160120_ __tmp160415))))
                  (declare (not safe))
                  (cons _bin-o160112_ __tmp160414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160413
                                                           _deps-o160102_))))
                                            (declare (not safe))
                                            (cons _output-bin160114_
                                                  __tmp160412))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160411))))
                              (declare (not safe))
                              (gxc#invoke __tmp160422 __tmp160410))
                            (for-each
                             delete-file
                             (let ((__tmp160423
                                    (let ((__tmp160424
                                           (let ((__tmp160425
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o160124_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o160120_
                                                   __tmp160425))))
                                      (declare (not safe))
                                      (cons _output_-c160122_ __tmp160424))))
                               (declare (not safe))
                               (cons _output-c160118_ __tmp160423)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp160074_)))
                          '#!void)))))
          (let* ((_output-bin160058_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx160048_ _opts160049_)))
                 (_output-scm160060_
                  (string-append _output-bin160058_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub160056_ _output-scm160060_ _output-bin160058_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm160060_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159873_ _opts159874_)
        (letrec ((_reset-declare159876_
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
                 (_generate-stub159877_
                  (lambda (_deps160039_)
                    (let ((_mod-main160041_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159873_ 'main)))
                          (_reset-decl160042_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159876_)))
                          (_user-decl160043_
                           (let ()
                             (declare (not safe))
                             (_user-declare159878_))))
                      (for-each
                       (lambda (_dep160045_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl160042_)
                         (newline)
                         (if _user-decl160043_
                             (begin (write _user-decl160043_) (newline))
                             '#!void)
                         (write (let ((__tmp160426
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep160045_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160426)))
                         (newline))
                       _deps160039_)
                      (write (let ((__tmp160427
                                    (let ((__tmp160440
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160428
                                           (let ((__tmp160436
                                                  (let ((__tmp160437
                                                         (let ((__tmp160438
                                                                (let ((__tmp160439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160439))))
                   (declare (not safe))
                   (cons __tmp160438 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160437)))
                                                 (__tmp160429
                                                  (let ((__tmp160430
                                                         (let ((__tmp160431
                                                                (let ((__tmp160432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160433
                                      (let ((__tmp160434
                                             (let ((__tmp160435
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160435 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160434))))
                                 (declare (not safe))
                                 (cons __tmp160433 '()))))
                          (declare (not safe))
                          (cons _mod-main160041_ __tmp160432))))
                   (declare (not safe))
                   (cons 'apply __tmp160431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160430 '()))))
                                             (declare (not safe))
                                             (cons __tmp160436 __tmp160429))))
                                      (declare (not safe))
                                      (cons __tmp160440 __tmp160428))))
                               (declare (not safe))
                               (cons 'define __tmp160427)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159878_
                  (lambda ()
                    (let* ((_gsc-opts159944_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159874_)))
                           (_gsc-prelude159946_
                            (if _gsc-opts159944_
                                (member '"-prelude" _gsc-opts159944_)
                                '#f))
                           (_gsc-prelude159948_
                            (if _gsc-prelude159946_
                                (read (open-input-string
                                       (cadr _gsc-prelude159946_)))
                                '#f)))
                      (let _lp159951_ ((_rest159953_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159948_ '())))
                                       (_user-decls159954_ '()))
                        (let* ((_rest159955159963_ _rest159953_)
                               (_else159957159971_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159954_))
                                      '#f
                                      (let ((__tmp160441
                                             (reverse _user-decls159954_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160441)))))
                               (_K159959160027_
                                (lambda (_rest159974_ _expr159975_)
                                  (let* ((_expr159976159988_ _expr159975_)
                                         (_else159979159996_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159951_
                                               _rest159974_
                                               _user-decls159954_)))))
                                    (let ((_K159984160017_
                                           (lambda (_decls160015_)
                                             (let ((__tmp160442
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159954_
                                                              _decls160015_))))
                                               (declare (not safe))
                                               (_lp159951_
                                                _rest159974_
                                                __tmp160442))))
                                          (_K159981160002_
                                           (lambda (_exprs160000_)
                                             (let ((__tmp160443
                                                    (append _exprs160000_
                                                            _rest159974_)))
                                               (declare (not safe))
                                               (_lp159951_
                                                __tmp160443
                                                _user-decls159954_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159976159988_))
                                          (let ((_tl159986160022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159976159988_)))
                                                (_hd159985160020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159976159988_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159985160020_
                                                         'declare))
                                                (let ((_decls160025_
                                                       _tl159986160022_))
                                                  (declare (not safe))
                                                  (_K159984160017_
                                                   _decls160025_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159985160020_
                                                             'begin))
                                                    (let ((_exprs160010_
                                                           _tl159986160022_))
                                                      (declare (not safe))
                                                      (_K159981160002_
                                                       _exprs160010_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159979159996_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159979159996_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159955159963_))
                              (let ((_hd159960160030_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159955159963_)))
                                    (_tl159961160032_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159955159963_))))
                                (let* ((_expr160035_ _hd159960160030_)
                                       (_rest160037_ _tl159961160032_))
                                  (declare (not safe))
                                  (_K159959160027_ _rest160037_ _expr160035_)))
                              (let ()
                                (declare (not safe))
                                (_else159957159971_))))))))
                 (_compile-stub159879_
                  (lambda (_output-scm159886_ _output-bin159887_)
                    (let* ((_gerbil-home159889_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159891_
                            (path-expand '"lib" _gerbil-home159889_))
                           (_runtime159893_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159895_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159889_))
                           (_include-gambit-sharp159897_
                            (string-append
                             '"(include \""
                             _gambit-sharp159895_
                             '"\")"))
                           (_bin-scm159899_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159873_)))
                           (_deps159901_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159873_)))
                           (_deps159903_
                            (map gxc#find-static-module-file _deps159901_))
                           (_deps159908_
                            (filter (lambda (_$obj159905_)
                                      (let ((__tmp160444
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159905_))))
                                        (declare (not safe))
                                        (not __tmp160444)))
                                    _deps159903_))
                           (_deps159912_
                            (filter (lambda (_f159910_)
                                      (let ((__tmp160445
                                             (member _f159910_
                                                     _runtime159893_)))
                                        (declare (not safe))
                                        (not __tmp160445)))
                                    _deps159908_))
                           (_output-base159914_
                            (string-append
                             (path-strip-extension _output-scm159886_)))
                           (_output-c159916_
                            (string-append _output-base159914_ '".c"))
                           (_output-o159918_
                            (string-append _output-base159914_ '".o"))
                           (_output-c_159920_
                            (string-append _output-base159914_ '"_.c"))
                           (_output-o_159922_
                            (string-append _output-base159914_ '"_.o"))
                           (_gsc-link-opts159924_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159926_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159928_
                            (let ((__tmp160446
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159891_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160446)))
                           (_output-ld-opts159930_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159932_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160448
                                       (let ((__tmp160449
                                              (let ((__tmp160450
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159897_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160450))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160449))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160448))
                                (let ((__tmp160447
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159897_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160447))))
                           (_gsc-link-opts159934_
                            (append _gsc-link-opts159924_
                                    _gsc-gx-macros159932_))
                           (_rpath159936_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159891_)))
                           (_default-ld-options159938_
                            (let ((__tmp160451
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160451))))
                      (let ((__tmp160452
                             (lambda ()
                               (let ((__tmp160453
                                      (path-directory _output-bin159887_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160453)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160452))
                      (let ((__tmp160454
                             (lambda ()
                               (let ((__tmp160455
                                      (let ((__tmp160456
                                             (let ((__tmp160457
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159899_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160457
                                                       _deps159912_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160456
                                                _runtime159893_))))
                                 (declare (not safe))
                                 (_generate-stub159877_ __tmp160455)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159886_
                         __tmp160454))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160463
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160458
                                   (let ((__tmp160459
                                          (let ((__tmp160460
                                                 (let ((__tmp160461
                                                        (let ((__tmp160462
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159886_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160462 _gsc-link-opts159934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159920_
                                                         __tmp160461))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160460))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160459))))
                              (declare (not safe))
                              (gxc#invoke __tmp160463 __tmp160458))
                            (let ((__tmp160469
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160464
                                   (let ((__tmp160465
                                          (let ((__tmp160466
                                                 (let ((__tmp160467
                                                        (let ((__tmp160468
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159920_ '()))))
                  (declare (not safe))
                  (cons _output-c159916_ __tmp160468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160467
                                                           _gsc-static-opts159928_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160466
                                                    _gsc-cc-opts159926_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160465))))
                              (declare (not safe))
                              (gxc#invoke __tmp160469 __tmp160464))
                            (let ((__tmp160479
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160470
                                   (let ((__tmp160471
                                          (let ((__tmp160472
                                                 (let ((__tmp160473
                                                        (let ((__tmp160474
                                                               (let ((__tmp160475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160476
                                     (let ((__tmp160477
                                            (let ((__tmp160478
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159938_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159891_
                                                    __tmp160478))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160477))))
                                (declare (not safe))
                                (cons _rpath159936_ __tmp160476))))
                         (declare (not safe))
                         (foldr1 cons __tmp160475 _output-ld-opts159930_))))
                  (declare (not safe))
                  (cons _output-o_159922_ __tmp160474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159918_
                                                         __tmp160473))))
                                            (declare (not safe))
                                            (cons _output-bin159887_
                                                  __tmp160472))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160471))))
                              (declare (not safe))
                              (gxc#invoke __tmp160479 __tmp160470)))
                          '#!void)))))
          (let* ((_output-bin159881_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159873_ _opts159874_)))
                 (_output-scm159883_
                  (string-append _output-bin159881_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159879_ _output-scm159883_ _output-bin159881_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159883_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159823_ _id159824_)
        (let ((_$e159870_
               (let ((__tmp160481
                      (lambda (_e159825159827_)
                        (let* ((_g159829159839_ _e159825159827_)
                               (_else159831159847_ (lambda () '#f))
                               (_K159833159851_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159829159839_
                                 'gx#module-export::t))
                              (let* ((_e159834159854_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159829159839_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159835159857_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159829159839_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159836159860_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159829159839_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159836159860_ '0))
                                    (let ((_e159837159863_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159829159839_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159865159867_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159865159867_
                                                    _id159824_)))
                                           _e159837159863_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159833159851_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159831159847_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159831159847_))))
                              (let ()
                                (declare (not safe))
                                (_else159831159847_))))))
                     (__tmp160480
                      (##structure-ref
                       _ctx159823_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160481 __tmp160480))))
          (if _$e159870_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159870_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159815_ _id159816_)
        (let ((_$e159818_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159815_ _id159816_))))
          (if _$e159818_
              ((lambda (_bind159821_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159821_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159816_)))
                 (##structure-ref _bind159821_ '1 gx#binding::t '#f))
               _$e159818_)
              (let ((__tmp160482
                     (##structure-ref
                      _ctx159815_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160482
                 _id159816_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159702_)
        (letrec* ((_ht159704_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159705_
                   (lambda (_in159767_ _phi159768_)
                     (let ((_iphi159770_
                            (fx+ _phi159768_
                                 (##direct-structure-ref
                                  _in159767_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159771_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159767_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159773_ ((_rest159775_ _imports159771_)
                                        (_r159776_ '()))
                         (let* ((_rest159777159785_ _rest159775_)
                                (_else159779159793_ (lambda () _r159776_))
                                (_K159781159803_
                                 (lambda (_rest159796_ _in159797_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159797_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159770_))
                                           (let ((__tmp160489
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159797_
                                                          _r159776_))))
                                             (declare (not safe))
                                             (_lp159773_
                                              _rest159796_
                                              __tmp160489))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159773_
                                              _rest159796_
                                              _r159776_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159797_
                                              'gx#module-import::t))
                                           (let ((_iphi159799_
                                                  (fx+ _phi159768_
                                                       (##direct-structure-ref
                                                        _in159797_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159799_))
                                                 (let ((__tmp160487
                                                        (let ((__tmp160488
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159797_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160488 _r159776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159773_
                                                    _rest159796_
                                                    __tmp160487))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159773_
                                                    _rest159796_
                                                    _r159776_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159797_
                                                  'gx#import-set::t))
                                               (let ((_xphi159801_
                                                      (fx+ _iphi159770_
                                                           (##direct-structure-ref
                                                            _in159797_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159801_))
                                                     (let ((__tmp160485
                                                            (let ((__tmp160486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159797_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160486 _r159776_))))
               (declare (not safe))
               (_lp159773_ _rest159796_ __tmp160485))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159801_)
                                                         (let ((__tmp160483
                                                                (let ((__tmp160484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159705_
                                  _in159797_
                                  _iphi159770_))))
                          (declare (not safe))
                          (foldl1 cons _r159776_ __tmp160484))))
                   (declare (not safe))
                   (_lp159773_ _rest159796_ __tmp160483))
                 (let ()
                   (declare (not safe))
                   (_lp159773_ _rest159796_ _r159776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159773_
                                                  _rest159796_
                                                  _r159776_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159777159785_))
                               (let ((_hd159782159806_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159777159785_)))
                                     (_tl159783159808_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159777159785_))))
                                 (let* ((_in159811_ _hd159782159806_)
                                        (_rest159813_ _tl159783159808_))
                                   (declare (not safe))
                                   (_K159781159803_ _rest159813_ _in159811_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159779159793_))))))))
                  (_find-deps159706_
                   (lambda (_rest159713_ _deps159714_)
                     (let* ((_rest159715159723_ _rest159713_)
                            (_else159717159731_ (lambda () _deps159714_))
                            (_K159719159755_
                             (lambda (_rest159734_ _hd159735_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159735_
                                      'gx#module-context::t))
                                   (let ((_id159737_
                                          (##structure-ref
                                           _hd159735_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159738_
                                          (##structure-ref
                                           _hd159735_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159704_ _id159737_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159706_
                                            _rest159734_
                                            _deps159714_))
                                         (let ((_$e159740_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159735_))))
                                           (if _$e159740_
                                               ((lambda (_pre159743_)
                                                  (let ((_xdeps159745_
                                                         (let ((__tmp160502
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159743_ _imports159738_))))
                   (declare (not safe))
                   (_find-deps159706_ __tmp160502 _deps159714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159704_
                                                       _id159737_
                                                       _hd159735_))
                                                    (let ((__tmp160503
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159745_))))
              (declare (not safe))
              (_find-deps159706_ _rest159734_ __tmp160503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159740_)
                                               (let ((_xdeps159747_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159706_
                                                         _imports159738_
                                                         _deps159714_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159704_
                                                    _id159737_
                                                    _hd159735_))
                                                 (let ((__tmp160501
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159735_
                                                                _xdeps159747_))))
                                                   (declare (not safe))
                                                   (_find-deps159706_
                                                    _rest159734_
                                                    __tmp160501)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159735_
                                          'gx#prelude-context::t))
                                       (let ((_id159749_
                                              (##structure-ref
                                               _hd159735_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159704_
                                                _id159749_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159706_
                                                _rest159734_
                                                _deps159714_))
                                             (let ((_xdeps159751_
                                                    (let ((__tmp160499
                                                           (##structure-ref
                                                            _hd159735_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159706_
                                                       __tmp160499
                                                       _deps159714_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159704_
                                                      _id159749_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159706_
                                                      _rest159734_
                                                      _xdeps159751_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159704_
                                                        _id159749_
                                                        _hd159735_))
                                                     (let ((__tmp160500
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159751_))))
               (declare (not safe))
               (_find-deps159706_ _rest159734_ __tmp160500)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159735_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160498
                                                      (##direct-structure-ref
                                                       _hd159735_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160498))
                                               (let ((__tmp160496
                                                      (let ((__tmp160497
                                                             (##direct-structure-ref
                                                              _hd159735_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160497
                                                              _rest159734_))))
                                                 (declare (not safe))
                                                 (_find-deps159706_
                                                  __tmp160496
                                                  _deps159714_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159706_
                                                  _rest159734_
                                                  _deps159714_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159735_
                                                  'gx#module-export::t))
                                               (let ((__tmp160494
                                                      (let ((__tmp160495
                                                             (##direct-structure-ref
                                                              _hd159735_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160495
                                                              _rest159734_))))
                                                 (declare (not safe))
                                                 (_find-deps159706_
                                                  __tmp160494
                                                  _deps159714_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159735_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160493
                                                              (##direct-structure-ref
                                                               _hd159735_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160493))
                                                       (let ((__tmp160491
                                                              (let ((__tmp160492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159735_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160492 _rest159734_))))
                 (declare (not safe))
                 (_find-deps159706_ __tmp160491 _deps159714_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159735_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159753_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159705_ _hd159735_ '0)))
                          (__tmp160490
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159734_ _xdeps159753_))))
                     (declare (not safe))
                     (_find-deps159706_ __tmp160490 _deps159714_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159706_ _rest159734_ _deps159714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159735_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159715159723_))
                           (let ((_hd159720159758_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159715159723_)))
                                 (_tl159721159760_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159715159723_))))
                             (let* ((_hd159763_ _hd159720159758_)
                                    (_rest159765_ _tl159721159760_))
                               (declare (not safe))
                               (_K159719159755_ _rest159765_ _hd159763_)))
                           (let ()
                             (declare (not safe))
                             (_else159717159731_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160504
                                  (let ((_$e159708_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159702_))))
                                    (if _$e159708_
                                        ((lambda (_pre159711_)
                                           (let ((__tmp160505
                                                  (##structure-ref
                                                   _ctx159702_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159711_ __tmp160505)))
                                         _$e159708_)
                                        (##structure-ref
                                         _ctx159702_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159706_ __tmp160504 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159633_)
        (let* ((_context-id159635_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159633_
                       'gx#module-context::t))
                    (##structure-ref _ctx159633_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159633_)))
               (_scm159637_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159635_))
                 '".scm"))
               (_dirs159639_ (let () (declare (not safe)) (load-path)))
               (_dirs159645_
                (let ((_user-libpath159641_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159641_
                      (let ((_user-libpath159643_
                             (path-expand '"lib" _user-libpath159641_)))
                        (if (member _user-libpath159643_ _dirs159639_)
                            _dirs159639_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159643_ _dirs159639_))))
                      _dirs159639_)))
               (_dirs159654_
                (let ((_$e159647_ (gxc#current-compile-output-dir)))
                  (if _$e159647_
                      ((lambda (_g159649159651_)
                         (let ()
                           (declare (not safe))
                           (cons _g159649159651_ _dirs159645_)))
                       _$e159647_)
                      _dirs159645_)))
               (_dirs159660_
                (map (lambda (_g159655159657_)
                       (path-expand '"static" _g159655159657_))
                     _dirs159654_)))
          (let _lp159663_ ((_rest159665_ _dirs159660_))
            (let* ((_rest159666159674_ _rest159665_)
                   (_else159668159682_
                    (lambda ()
                      (let ((__tmp160506
                             (##structure-ref
                              _ctx159633_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160506
                         _scm159637_))))
                   (_K159670159690_
                    (lambda (_rest159685_ _dir159686_)
                      (let ((_path159688_
                             (path-expand _scm159637_ _dir159686_)))
                        (if (file-exists? _path159688_)
                            _path159688_
                            (let ()
                              (declare (not safe))
                              (_lp159663_ _rest159685_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159666159674_))
                  (let ((_hd159671159693_
                         (let ()
                           (declare (not safe))
                           (##car _rest159666159674_)))
                        (_tl159672159695_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159666159674_))))
                    (let* ((_dir159698_ _hd159671159693_)
                           (_rest159700_ _tl159672159695_))
                      (declare (not safe))
                      (_K159670159690_ _rest159700_ _dir159698_)))
                  (let () (declare (not safe)) (_else159668159682_))))))))
    (define gxc#file-empty?
      (lambda (_path159631_)
        (let ((__tmp160507 (file-info-size (file-info _path159631_ '#t))))
          (declare (not safe))
          (zero? __tmp160507))))
    (define gxc#compile-top-module
      (lambda (_ctx159620_)
        (let ((__tmp160511
               (lambda ()
                 (let ((__tmp160512
                        (##structure-ref
                         _ctx159620_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160512))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160513
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159620_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160513))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159620_))
                 (if (let ((__tmp160516
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159620_))))
                       (declare (not safe))
                       (null? __tmp160516))
                     (let* ((_thr1159625_
                             (let ((__tmp160514
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159620_)))))
                               (declare (not safe))
                               (spawn __tmp160514)))
                            (_thr2159628_
                             (let ((__tmp160515
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159620_)))))
                               (declare (not safe))
                               (spawn __tmp160515))))
                       (let () (declare (not safe)) (gxc#join! _thr1159625_))
                       (let () (declare (not safe)) (gxc#join! _thr2159628_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159620_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159620_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159620_))
                     '#!void)))
              (__tmp160510
               (let ((__obj160318
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj160318)
                 __obj160318))
              (__tmp160509 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160508 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160511
           gx#current-expander-context
           _ctx159620_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160510
           gxc#current-compile-runtime-sections
           __tmp160509
           gxc#current-compile-runtime-names
           __tmp160508))))
    (define gxc#collect-bindings
      (lambda (_ctx159618_)
        (let ((__tmp160517
               (##structure-ref _ctx159618_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160517))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159564_)
        (letrec ((_compile1159566_
                  (lambda (_ctx159607_)
                    (let* ((_code159609_
                            (##structure-ref
                             _ctx159607_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159613_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159609_))
                                (let ((_idstr159611_
                                       (let ((__tmp160518
                                              (##structure-ref
                                               _ctx159607_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160518))))
                                  (string-append _idstr159611_ '"~0"))
                                '#f)))
                      (if _rt159613_
                          (begin
                            (let ((__tmp160519
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160519 _ctx159607_ _rt159613_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159568_
                               _ctx159607_
                               _code159609_)))
                          (let ((_path159616_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159607_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159616_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159569_
                         _ctx159607_
                         _code159609_
                         _rt159613_)))))
                 (_context-timestamp159567_
                  (lambda (_ctx159605_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159605_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159568_
                  (lambda (_ctx159587_ _code159588_)
                    (let* ((_lifts159590_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159593_
                            (let ((__tmp160522
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159588_))))
                                  (__tmp160521
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160520
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160522
                               gx#current-expander-context
                               _ctx159587_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159590_
                               gxc#current-compile-marks
                               __tmp160521
                               gxc#current-compile-identifiers
                               __tmp160520)))
                           (_runtime-code159595_
                            (if (let ((__tmp160526 (unbox _lifts159590_)))
                                  (declare (not safe))
                                  (null? __tmp160526))
                                _runtime-code159593_
                                (let ((__tmp160523
                                       (let ((__tmp160525
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159593_
                                                      '())))
                                             (__tmp160524
                                              (reverse (unbox _lifts159590_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160525
                                                 __tmp160524))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160523))))
                           (_runtime-code159597_
                            (let ((__tmp160527
                                   (let ((__tmp160529
                                          (let ((__tmp160530
                                                 (let ((__tmp160533
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159567_
                                                           _ctx159587_)))
                                                       (__tmp160531
                                                        (let ((__tmp160532
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160532
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160533
                                                         __tmp160531))))
                                            (declare (not safe))
                                            (cons 'define __tmp160530)))
                                         (__tmp160528
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159595_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160529 __tmp160528))))
                              (declare (not safe))
                              (cons 'begin __tmp160527)))
                           (_scm0159599_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159587_
                               '0
                               '".scm"))))
                      (let ((_scms159602_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159587_))))
                        (let ((__tmp160534
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159599_
                                    _runtime-code159597_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160534
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159602_)
                            (delete-file _scms159602_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159599_
                           '" => "
                           _scms159602_))
                        (copy-file _scm0159599_ _scms159602_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159599_))))))
                 (_generate-loader-code159569_
                  (lambda (_ctx159576_ _code159577_ _rt159578_)
                    (let* ((_loader-code159581_
                            (let ((__tmp160535
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159577_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160535
                               gx#current-expander-context
                               _ctx159576_)))
                           (_loader-code159583_
                            (if _rt159578_
                                (let ((__tmp160536
                                       (let ((__tmp160537
                                              (let ((__tmp160538
                                                     (let ((__tmp160539
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160538 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159581_
                                               __tmp160537))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160536))
                                _loader-code159581_)))
                      (let ((__tmp160540
                             (lambda ()
                               (let ((__tmp160541
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159576_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160541
                                  _loader-code159583_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160540
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159571_
                 (let ((__tmp160542
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159564_))))
                   (declare (not safe))
                   (cons _ctx159564_ __tmp160542))))
            (for-each
             (lambda (_ctx159573_)
               (let ((__tmp160543
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159566_ _ctx159573_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160543
                  gxc#current-compile-decls
                  '())))
             _all-modules159571_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159461_)
        (letrec ((_compile-ssi159463_
                  (lambda (_code159534_)
                    (let* ((_path159536_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159461_
                               '#f
                               '".ssi")))
                           (_prelude159547_
                            (let* ((_super159538_
                                    (##structure-ref
                                     _ctx159461_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159540_
                                    (##structure-ref
                                     _super159538_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159540_
                                  ((lambda (_g159542159544_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159542159544_)))
                                   _$e159540_)
                                  ':<root>)))
                           (_ns159549_
                            (##structure-ref
                             _ctx159461_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159551_
                            (symbol->string
                             (##structure-ref
                              _ctx159461_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159558_
                            (let ((_$e159553_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159551_ '#\/))))
                              (if _$e159553_
                                  ((lambda (_x159556_)
                                     (string->symbol
                                      (substring _idstr159551_ '0 _x159556_)))
                                   _$e159553_)
                                  '#f)))
                           (_rt159560_
                            (let ((__tmp160544
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160544 _ctx159461_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159536_))
                      (let ((__tmp160545
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159547_))
                               (if _pkg159558_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159558_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159549_))
                               (newline)
                               (pretty-print _code159534_)
                               (if _rt159560_
                                   (pretty-print
                                    (let ((__tmp160546
                                           (let ((__tmp160550
                                                  (let ((__tmp160551
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160551)))
                                                 (__tmp160547
                                                  (let ((__tmp160548
                                                         (let ((__tmp160549
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159560_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160548 '()))))
                                             (declare (not safe))
                                             (cons __tmp160550 __tmp160547))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160546)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159536_
                         __tmp160545)))))
                 (_compile-phi159464_
                  (lambda (_part159474_)
                    (let* ((_part159475159488_ _part159474_)
                           (_E159477159492_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159475159488_))))
                           (_K159478159503_
                            (lambda (_code159495_
                                     _n159496_
                                     _phi159497_
                                     _phi-ctx159498_)
                              (let* ((_code159501_
                                      (let ((__tmp160552
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159495_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160552
                                         gx#current-expander-context
                                         _phi-ctx159498_
                                         gx#current-expander-phi
                                         _phi159497_)))
                                     (__tmp160553
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159461_
                                         _n159496_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160553
                                 _code159501_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159475159488_))
                          (let ((_hd159479159506_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159475159488_)))
                                (_tl159480159508_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159475159488_))))
                            (let ((_phi-ctx159511_ _hd159479159506_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159480159508_))
                                  (let ((_hd159481159513_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159480159508_)))
                                        (_tl159482159515_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159480159508_))))
                                    (let ((_phi159518_ _hd159481159513_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159482159515_))
                                          (let ((_hd159483159520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159482159515_)))
                                                (_tl159484159522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159482159515_))))
                                            (let ((_n159525_ _hd159483159520_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159484159522_))
                                                  (let ((_hd159485159527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159484159522_)))
                                                        (_tl159486159529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159484159522_))))
                                                    (let ((_code159532_
                                                           _hd159485159527_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159486159529_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159478159503_
                                                             _code159532_
                                                             _n159525_
                                                             _phi159518_
                                                             _phi-ctx159511_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159477159492_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159477159492_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159477159492_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159477159492_)))))
                          (let () (declare (not safe)) (_E159477159492_)))))))
          (let ((_g160554_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159461_))))
            (begin
              (let ((_g160555_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160554_)
                           (##vector-length _g160554_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160555_ 2)))
                    (error "Context expects 2 values" _g160555_)))
              (let ((_ssi-code159466_
                     (let () (declare (not safe)) (##vector-ref _g160554_ 0)))
                    (_phi-code159467_
                     (let () (declare (not safe)) (##vector-ref _g160554_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159463_ _ssi-code159466_))
                  (let ((_threads159472_
                         (map (lambda (_code159469_)
                                (let ((__tmp160556
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159464_
                                            _code159469_)))))
                                  (declare (not safe))
                                  (spawn __tmp160556)))
                              _phi-code159467_)))
                    (for-each gxc#join! _threads159472_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159444_)
        (let* ((_path159446_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159444_ '#f '".ssxi.ss")))
               (_code159448_
                (let ((__tmp160557
                       (##structure-ref
                        _ctx159444_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160557)))
               (_idstr159450_
                (symbol->string
                 (##structure-ref _ctx159444_ '1 gx#expander-context::t '#f)))
               (_pkg159457_
                (let ((_$e159452_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159450_ '#\/))))
                  (if _$e159452_
                      ((lambda (_x159455_)
                         (string->symbol
                          (substring _idstr159450_ '0 _x159455_)))
                       _$e159452_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159446_))
          (let ((__tmp160558
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159457_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159457_))
                       '#!void)
                   (newline)
                   (pretty-print _code159448_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159446_ __tmp160558)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159437_)
        (let* ((_state159439_
                (let ((__obj160319
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj160319 _ctx159437_)
                  __obj160319))
               (_ssi-code159441_
                (let ((__tmp160559
                       (##structure-ref
                        _ctx159437_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160559
                   'state:
                   _state159439_))))
          (values _ssi-code159441_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159439_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159430_)
        (let ((_lifts159432_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160562
                 (lambda ()
                   (let ((_code159435_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159430_))))
                     (if (let ((__tmp160566 (unbox _lifts159432_)))
                           (declare (not safe))
                           (null? __tmp160566))
                         _code159435_
                         (let ((__tmp160563
                                (let ((__tmp160565
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159435_ '())))
                                      (__tmp160564
                                       (reverse (unbox _lifts159432_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160565 __tmp160564))))
                           (declare (not safe))
                           (cons 'begin __tmp160563))))))
                (__tmp160561
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160560
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160562
             gxc#current-compile-lift
             _lifts159432_
             gxc#current-compile-marks
             __tmp160561
             gxc#current-compile-identifiers
             __tmp160560)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159426_)
        (let ((_modules159428_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160567
                 (##structure-ref _ctx159426_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160567 'modules: _modules159428_))
          (reverse (unbox _modules159428_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159409_ _code159410_ _phi?159411_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159409_))
        (let ((__tmp160568
               (lambda ()
                 (pretty-print
                  (let ((__tmp160569
                         (let ((__tmp160576
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160570
                                (let ((__tmp160575
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160571
                                       (let ((__tmp160574
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160572
                                              (let ((__tmp160573
                                                     (if _phi?159411_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160573))))
                                         (declare (not safe))
                                         (cons __tmp160574 __tmp160572))))
                                  (declare (not safe))
                                  (cons __tmp160575 __tmp160571))))
                           (declare (not safe))
                           (cons __tmp160576 __tmp160570))))
                    (declare (not safe))
                    (cons 'declare __tmp160569)))
                 (pretty-print _code159410_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159409_ __tmp160568))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159409_ _phi?159411_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159409_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159417_ _code159418_)
        (let ((_phi?159420_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159417_ _code159418_ _phi?159420_))))
    (define gxc#compile-scm-file
      (lambda _g160578_
        (let ((_g160577_ (let () (declare (not safe)) (##length _g160578_))))
          (cond ((let () (declare (not safe)) (##fx= _g160577_ 2))
                 (apply (lambda (_path159417_ _code159418_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159417_
                             _code159418_)))
                        _g160578_))
                ((let () (declare (not safe)) (##fx= _g160577_ 3))
                 (apply (lambda (_path159422_ _code159423_ _phi?159424_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159422_
                             _code159423_
                             _phi?159424_)))
                        _g160578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160578_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?159310_)
        (let _lp159312_ ((_rest159314_ (gxc#current-compile-gsc-options))
                         (_opts159315_ '()))
          (let* ((_rest159316159336_ _rest159314_)
                 (_else159320159344_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159310_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160579
                               (let ((__tmp160580 (reverse _opts159315_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160580))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160579))
                        (reverse _opts159315_)))))
            (let ((_K159330159387_
                   (lambda (_rest159385_)
                     (let ()
                       (declare (not safe))
                       (_lp159312_ _rest159385_ _opts159315_))))
                  (_K159325159369_
                   (lambda (_rest159367_)
                     (let ()
                       (declare (not safe))
                       (_lp159312_ _rest159367_ _opts159315_))))
                  (_K159322159351_
                   (lambda (_rest159348_ _opt159349_)
                     (let ((__tmp160581
                            (let ()
                              (declare (not safe))
                              (cons _opt159349_ _opts159315_))))
                       (declare (not safe))
                       (_lp159312_ _rest159348_ __tmp160581)))))
              (if (let () (declare (not safe)) (##pair? _rest159316159336_))
                  (let ((_tl159332159392_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159316159336_)))
                        (_hd159331159390_
                         (let ()
                           (declare (not safe))
                           (##car _rest159316159336_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159331159390_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159332159392_))
                            (let* ((_tl159334159395_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159332159392_)))
                                   (_rest159398_ _tl159334159395_))
                              (declare (not safe))
                              (_K159330159387_ _rest159398_))
                            (let ((_opt159359_ _hd159331159390_)
                                  (_rest159361_ _tl159332159392_))
                              (let ()
                                (declare (not safe))
                                (_K159322159351_ _rest159361_ _opt159359_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159331159390_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159332159392_))
                                (let* ((_tl159329159377_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159332159392_)))
                                       (_rest159380_ _tl159329159377_))
                                  (declare (not safe))
                                  (_K159325159369_ _rest159380_))
                                (let ((_opt159359_ _hd159331159390_)
                                      (_rest159361_ _tl159332159392_))
                                  (let ()
                                    (declare (not safe))
                                    (_K159322159351_
                                     _rest159361_
                                     _opt159359_))))
                            (let ((_opt159359_ _hd159331159390_)
                                  (_rest159361_ _tl159332159392_))
                              (let ()
                                (declare (not safe))
                                (_K159322159351_ _rest159361_ _opt159359_))))))
                  (let () (declare (not safe)) (_else159320159344_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159404_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159404_))))
    (define gxc#gsc-link-options
      (lambda _g160583_
        (let ((_g160582_ (let () (declare (not safe)) (##length _g160583_))))
          (cond ((let () (declare (not safe)) (##fx= _g160582_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160583_))
                ((let () (declare (not safe)) (##fx= _g160582_ 1))
                 (apply (lambda (_phi?159406_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159406_)))
                        _g160583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160583_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?159211_)
        (let _lp159213_ ((_rest159215_ (gxc#current-compile-gsc-options))
                         (_opts159216_ '()))
          (let* ((_rest159217159237_ _rest159215_)
                 (_else159221159245_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159211_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160584
                               (let ((__tmp160585 (reverse _opts159216_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160585))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160584))
                        (reverse _opts159216_)))))
            (let ((_K159231159284_
                   (lambda (_rest159281_ _opt159282_)
                     (let ((__tmp160586
                            (let ((__tmp160587
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts159216_))))
                              (declare (not safe))
                              (cons _opt159282_ __tmp160587))))
                       (declare (not safe))
                       (_lp159213_ _rest159281_ __tmp160586))))
                  (_K159226159265_
                   (lambda (_rest159263_)
                     (let ()
                       (declare (not safe))
                       (_lp159213_ _rest159263_ _opts159216_))))
                  (_K159223159251_
                   (lambda (_rest159249_)
                     (let ()
                       (declare (not safe))
                       (_lp159213_ _rest159249_ _opts159216_)))))
              (if (let () (declare (not safe)) (##pair? _rest159217159237_))
                  (let ((_tl159233159289_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159217159237_)))
                        (_hd159232159287_
                         (let ()
                           (declare (not safe))
                           (##car _rest159217159237_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159232159287_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159233159289_))
                            (let ((_tl159235159294_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl159233159289_)))
                                  (_hd159234159292_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl159233159289_))))
                              (let ((_opt159297_ _hd159234159292_)
                                    (_rest159299_ _tl159235159294_))
                                (let ()
                                  (declare (not safe))
                                  (_K159231159284_ _rest159299_ _opt159297_))))
                            (let ((_rest159257_ _tl159233159289_))
                              (declare (not safe))
                              (_K159223159251_ _rest159257_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159232159287_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159233159289_))
                                (let* ((_tl159230159273_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159233159289_)))
                                       (_rest159276_ _tl159230159273_))
                                  (declare (not safe))
                                  (_K159226159265_ _rest159276_))
                                (let ((_rest159257_ _tl159233159289_))
                                  (declare (not safe))
                                  (_K159223159251_ _rest159257_)))
                            (let ((_rest159257_ _tl159233159289_))
                              (declare (not safe))
                              (_K159223159251_ _rest159257_)))))
                  (let () (declare (not safe)) (_else159221159245_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?159305_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?159305_))))
    (define gxc#gsc-cc-options
      (lambda _g160589_
        (let ((_g160588_ (let () (declare (not safe)) (##length _g160589_))))
          (cond ((let () (declare (not safe)) (##fx= _g160588_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160589_))
                ((let () (declare (not safe)) (##fx= _g160588_ 1))
                 (apply (lambda (_phi?159307_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?159307_)))
                        _g160589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160589_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir159206_)
        (let* ((_user-staticdir159208_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160590
                (let ((__tmp160591
                       (string-append
                        '"-I "
                        _staticdir159206_
                        '" -I "
                        _user-staticdir159208_)))
                  (declare (not safe))
                  (cons __tmp160591 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160590))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp159118_ ((_rest159120_ (gxc#current-compile-gsc-options))
                         (_opts159121_ '()))
          (let* ((_rest159122159142_ _rest159120_)
                 (_else159126159150_ (lambda () _opts159121_)))
            (let ((_K159136159193_
                   (lambda (_rest159191_)
                     (let ()
                       (declare (not safe))
                       (_lp159118_ _rest159191_ _opts159121_))))
                  (_K159131159171_
                   (lambda (_rest159168_ _opt159169_)
                     (let ((__tmp160592
                            (append _opts159121_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt159169_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp159118_ _rest159168_ __tmp160592))))
                  (_K159128159156_
                   (lambda (_rest159154_)
                     (let ()
                       (declare (not safe))
                       (_lp159118_ _rest159154_ _opts159121_)))))
              (if (let () (declare (not safe)) (##pair? _rest159122159142_))
                  (let ((_tl159138159198_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159122159142_)))
                        (_hd159137159196_
                         (let ()
                           (declare (not safe))
                           (##car _rest159122159142_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159137159196_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159138159198_))
                            (let* ((_tl159140159201_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159138159198_)))
                                   (_rest159204_ _tl159140159201_))
                              (declare (not safe))
                              (_K159136159193_ _rest159204_))
                            (let ((_rest159162_ _tl159138159198_))
                              (declare (not safe))
                              (_K159128159156_ _rest159162_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159137159196_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159138159198_))
                                (let ((_tl159135159181_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl159138159198_)))
                                      (_hd159134159179_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl159138159198_))))
                                  (let ((_opt159184_ _hd159134159179_)
                                        (_rest159186_ _tl159135159181_))
                                    (let ()
                                      (declare (not safe))
                                      (_K159131159171_
                                       _rest159186_
                                       _opt159184_))))
                                (let ((_rest159162_ _tl159138159198_))
                                  (declare (not safe))
                                  (_K159128159156_ _rest159162_)))
                            (let ((_rest159162_ _tl159138159198_))
                              (declare (not safe))
                              (_K159128159156_ _rest159162_)))))
                  (let () (declare (not safe)) (_else159126159150_))))))))
    (define gxc#not-string-empty?
      (lambda (_str159115_)
        (let ((__tmp160593
               (let () (declare (not safe)) (string-empty? _str159115_))))
          (declare (not safe))
          (not __tmp160593))))
    (define gxc#gsc-compile-file
      (lambda (_path159083_ _phi?159084_)
        (letrec ((_gsc-link-path159086_
                  (lambda (_base-path159107_)
                    (let _lp159109_ ((_n159111_ '1))
                      (let ((_path159113_
                             (string-append
                              _base-path159107_
                              '".o"
                              (number->string _n159111_))))
                        (if (file-exists? _path159113_)
                            (let ((__tmp160594
                                   (let ()
                                     (declare (not safe))
                                     (+ _n159111_ '1))))
                              (declare (not safe))
                              (_lp159109_ __tmp160594))
                            _path159113_))))))
          (let* ((_base-path159088_ (path-strip-extension _path159083_))
                 (_path-c159090_ (string-append _base-path159088_ '".c"))
                 (_path-o159092_ (string-append _base-path159088_ '".o"))
                 (_link-path159094_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path159086_ _base-path159088_)))
                 (_link-path-c159096_ (string-append _link-path159094_ '".c"))
                 (_link-path-o159098_ (string-append _link-path159094_ '".o"))
                 (_gsc-link-opts159100_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?159084_)))
                 (_gsc-cc-opts159102_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?159084_)))
                 (_gcc-ld-opts159104_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160601 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160595
                   (let ((__tmp160596
                          (let ((__tmp160597
                                 (let ((__tmp160598
                                        (let ((__tmp160599
                                               (let ((__tmp160600
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path159083_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160600
                                                         _gsc-link-opts159100_))))
                                          (declare (not safe))
                                          (cons _link-path-c159096_
                                                __tmp160599))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160598))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160597))))
                     (declare (not safe))
                     (cons '"-link" __tmp160596))))
              (declare (not safe))
              (gxc#invoke __tmp160601 __tmp160595 'stdout-redirection: '#t))
            (let ((__tmp160608 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160602
                   (let ((__tmp160603
                          (let ((__tmp160604
                                 (let ((__tmp160605
                                        (let ((__tmp160606
                                               (let ((__tmp160607
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c159096_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c159090_
                                                       __tmp160607))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160606
                                                  _gsc-cc-opts159102_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160605))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160604))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160603))))
              (declare (not safe))
              (gxc#invoke __tmp160608 __tmp160602 'stdout-redirection: '#t))
            (let ((__tmp160614 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160609
                   (let ((__tmp160610
                          (let ((__tmp160611
                                 (let ((__tmp160612
                                        (let ((__tmp160613
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o159098_
                                                       _gcc-ld-opts159104_))))
                                          (declare (not safe))
                                          (cons _path-o159092_ __tmp160613))))
                                   (declare (not safe))
                                   (cons _link-path159094_ __tmp160612))))
                            (declare (not safe))
                            (cons '"-o" __tmp160611))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160610))))
              (declare (not safe))
              (gxc#invoke __tmp160614 __tmp160609))
            (for-each
             delete-file
             (let ((__tmp160615
                    (let ((__tmp160616
                           (let ((__tmp160617
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o159098_ '()))))
                             (declare (not safe))
                             (cons _link-path-c159096_ __tmp160617))))
                      (declare (not safe))
                      (cons _path-o159092_ __tmp160616))))
               (declare (not safe))
               (cons _path-c159090_ __tmp160615)))))))
    (define gxc#compile-output-file
      (lambda (_ctx159054_ _n159055_ _ext159056_)
        (letrec ((_module-relative-path159058_
                  (lambda (_ctx159081_)
                    (path-strip-directory
                     (let ((__tmp160618
                            (##structure-ref
                             _ctx159081_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160618)))))
                 (_module-source-directory159059_
                  (lambda (_ctx159077_)
                    (path-directory
                     (let ((_mpath159079_
                            (##structure-ref
                             _ctx159077_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath159079_))
                           _mpath159079_
                           (last _mpath159079_))))))
                 (_section-string159060_
                  (lambda (_n159075_)
                    (if (let () (declare (not safe)) (number? _n159075_))
                        (number->string _n159075_)
                        (if (let () (declare (not safe)) (symbol? _n159075_))
                            (symbol->string _n159075_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n159075_))
                                _n159075_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n159075_)))))))
                 (_file-name159061_
                  (lambda (_path159073_)
                    (if _n159055_
                        (string-append
                         _path159073_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_section-string159060_ _n159055_))
                         _ext159056_)
                        (string-append _path159073_ _ext159056_))))
                 (_file-path159062_
                  (lambda ()
                    (let ((_$e159068_ (gxc#current-compile-output-dir)))
                      (if _$e159068_
                          ((lambda (_outdir159071_)
                             (path-expand
                              (let ((__tmp160620
                                     (let ((__tmp160621
                                            (##structure-ref
                                             _ctx159054_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160621))))
                                (declare (not safe))
                                (_file-name159061_ __tmp160620))
                              _outdir159071_))
                           _$e159068_)
                          (path-expand
                           (let ((__tmp160619
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path159058_
                                     _ctx159054_))))
                             (declare (not safe))
                             (_file-name159061_ __tmp160619))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory159059_
                              _ctx159054_))))))))
          (let ((_path159064_
                 (let () (declare (not safe)) (_file-path159062_))))
            (let ((__tmp160622
                   (lambda ()
                     (let ((__tmp160623 (path-directory _path159064_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160623)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160622))
            _path159064_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx159036_)
        (letrec ((_file-name159038_
                  (lambda (_id159052_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id159052_))
                     '".scm")))
                 (_file-path159039_
                  (lambda ()
                    (let* ((_file159045_
                            (let ((__tmp160624
                                   (##structure-ref
                                    _ctx159036_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name159038_ __tmp160624)))
                           (_$e159047_ (gxc#current-compile-output-dir)))
                      (if _$e159047_
                          ((lambda (_outdir159050_)
                             (path-expand
                              _file159045_
                              (path-expand '"static" _outdir159050_)))
                           _$e159047_)
                          (path-expand _file159045_ '"static"))))))
          (let ((_path159041_
                 (let () (declare (not safe)) (_file-path159039_))))
            (let ((__tmp160625
                   (lambda ()
                     (let ((__tmp160626 (path-directory _path159041_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160626)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160625))
            _path159041_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx159030_ _opts159031_)
        (let ((_$e159033_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts159031_))))
          (if _$e159033_
              (values _$e159033_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx159030_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr159023_)
        (if (let () (declare (not safe)) (string? _idstr159023_))
            (let* ((_str159025_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr159023_)))
                   (_strs159027_
                    (let ()
                      (declare (not safe))
                      (string-split _str159025_ '#\/))))
              (let () (declare (not safe)) (string-join _strs159027_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr159023_))
                (let ((__tmp160627 (symbol->string _idstr159023_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160627))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr159023_))))))
    (define gxc#invoke__%
      (lambda (_g160628_
               _stdout-redirection158984158988_
               _stderr-redirection158985158990_
               _program158992_
               _args158993_)
        (let* ((_stdout-redirection158995_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158984158988_ absent-value))
                    '#f
                    _stdout-redirection158984158988_))
               (_stderr-redirection158997_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158985158990_ absent-value))
                    '#f
                    _stderr-redirection158985158990_)))
          (let ((__tmp160629
                 (let ()
                   (declare (not safe))
                   (cons _program158992_ _args158993_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160629))
          (let* ((_proc158999_
                  (open-process
                   (let ((__tmp160630
                          (let ((__tmp160631
                                 (let ((__tmp160632
                                        (let ((__tmp160633
                                               (let ((__tmp160634
                                                      (let ((__tmp160635
                                                             (let ((__tmp160636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection158997_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160636))))
                (declare (not safe))
                (cons _stdout-redirection158995_ __tmp160635))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160634))))
                                          (declare (not safe))
                                          (cons _args158993_ __tmp160633))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160632))))
                            (declare (not safe))
                            (cons _program158992_ __tmp160631))))
                     (declare (not safe))
                     (cons 'path: __tmp160630))))
                 (_output159004_
                  (if (or _stdout-redirection158995_
                          _stderr-redirection158997_)
                      (read-line _proc158999_ '#f)
                      '#f)))
            (let ((_status159007_ (process-status _proc158999_)))
              (close-port _proc158999_)
              (if (let () (declare (not safe)) (zero? _status159007_))
                  '#!void
                  (begin
                    (display _output159004_)
                    (let ((__tmp160637
                           (let ()
                             (declare (not safe))
                             (cons _program158992_ _args158993_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160637
                       _status159007_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158983159012_ . _args159014_)
        (apply gxc#invoke__%
               _keys158983159012_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158983159012_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158983159012_
                  'stderr-redirection:
                  absent-value))
               _args159014_)))
    (define gxc#invoke
      (lambda _args158986159020_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158986159020_)))
    (define gxc#join!
      (lambda (_thread158977_)
        (let ((__tmp160639
               (lambda (_exn158979_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158979_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158979_)))
                     (raise _exn158979_))))
              (__tmp160638 (lambda () (thread-join! _thread158977_))))
          (declare (not safe))
          (with-catch __tmp160639 __tmp160638))))))
