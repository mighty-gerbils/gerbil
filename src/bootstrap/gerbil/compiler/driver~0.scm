(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1711108660)
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
      (lambda (_path160223_ _fun160224_)
        (with-output-to-file
         (let ((__tmp160317
                (let ()
                  (declare (not safe))
                  (cons _path160223_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp160317))
         _fun160224_)))
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
      (lambda (_gerbil-libdir160218_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir160218_)))
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
      (lambda (_dir160216_) (delete-file-or-directory _dir160216_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath160190_ _opts160191_)
        (if (let () (declare (not safe)) (string? _srcpath160190_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160190_)))
        (let ((_outdir160193_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160191_)))
              (_invoke-gsc?160194_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160191_)))
              (_gsc-options160195_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160191_)))
              (_keep-scm?160196_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160191_)))
              (_verbosity160197_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160191_)))
              (_optimize160198_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts160191_)))
              (_debug160199_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160191_)))
              (_gen-ssxi160200_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts160191_))))
          (if _outdir160193_
              (let ((__tmp160318
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160193_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160318))
              '#!void)
          (if _optimize160198_
              (let ((__tmp160319
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160319))
              '#!void)
          (let ((__tmp160323
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath160190_))
                   (let ((__tmp160324
                          (let ((__tmp160325
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160190_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160325))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp160324))))
                (__tmp160322
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160320
                 (let ((__tmp160321
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160190_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp160321))))
            (declare (not safe))
            (call-with-parameters
             __tmp160323
             gxc#current-compile-output-dir
             _outdir160193_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160194_
             gxc#current-compile-gsc-options
             _gsc-options160195_
             gxc#current-compile-keep-scm
             _keep-scm?160196_
             gxc#current-compile-verbose
             _verbosity160197_
             gxc#current-compile-optimize
             _optimize160198_
             gxc#current-compile-debug
             _debug160199_
             gxc#current-compile-generate-ssxi
             _gen-ssxi160200_
             gxc#current-compile-timestamp
             __tmp160322
             gxc#current-compile-context
             __tmp160320
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath160209_)
        (let ((_opts160211_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath160209_ _opts160211_))))
    (define gxc#compile-module
      (lambda _g160327_
        (let ((_g160326_ (let () (declare (not safe)) (##length _g160327_))))
          (cond ((let () (declare (not safe)) (##fx= _g160326_ 1))
                 (apply (lambda (_srcpath160209_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath160209_)))
                        _g160327_))
                ((let () (declare (not safe)) (##fx= _g160326_ 2))
                 (apply (lambda (_srcpath160213_ _opts160214_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath160213_
                             _opts160214_)))
                        _g160327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g160327_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath160166_ _opts160167_)
        (if (let () (declare (not safe)) (string? _srcpath160166_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160166_)))
        (let ((_outdir160169_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160167_)))
              (_invoke-gsc?160170_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160167_)))
              (_gsc-options160171_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160167_)))
              (_keep-scm?160172_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160167_)))
              (_verbosity160173_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160167_)))
              (_debug160174_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160167_))))
          (if _outdir160169_
              (let ((__tmp160328
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160169_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160328))
              '#!void)
          (let ((__tmp160332
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath160166_))
                   (let ((__tmp160333
                          (let ((__tmp160334
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160166_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160334))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160333
                      _opts160167_))))
                (__tmp160331
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160329
                 (let ((__tmp160330
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160166_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160330))))
            (declare (not safe))
            (call-with-parameters
             __tmp160332
             gxc#current-compile-output-dir
             _outdir160169_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160170_
             gxc#current-compile-gsc-options
             _gsc-options160171_
             gxc#current-compile-keep-scm
             _keep-scm?160172_
             gxc#current-compile-verbose
             _verbosity160173_
             gxc#current-compile-debug
             _debug160174_
             gxc#current-compile-timestamp
             __tmp160331
             gxc#current-compile-context
             __tmp160329
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath160182_)
        (let ((_opts160184_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath160182_ _opts160184_))))
    (define gxc#compile-exe
      (lambda _g160336_
        (let ((_g160335_ (let () (declare (not safe)) (##length _g160336_))))
          (cond ((let () (declare (not safe)) (##fx= _g160335_ 1))
                 (apply (lambda (_srcpath160182_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath160182_)))
                        _g160336_))
                ((let () (declare (not safe)) (##fx= _g160335_ 2))
                 (apply (lambda (_srcpath160186_ _opts160187_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath160186_ _opts160187_)))
                        _g160336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160336_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx160162_ _opts160163_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts160163_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx160162_
               _opts160163_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx160162_
               _opts160163_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx160043_ _opts160044_)
        (letrec ((_generate-stub160046_
                  (lambda (_builtin-modules160158_)
                    (let ((_mod-main160160_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx160043_ 'main))))
                      (write (let ((__tmp160337
                                    (let ((__tmp160338
                                           (let ((__tmp160339
                                                  (let ((__tmp160340
                                                         (let ((__tmp160342
                                                                (let ((__tmp160343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules160158_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160343)))
                       (__tmp160341
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160342 __tmp160341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160340))))
                                             (declare (not safe))
                                             (cons __tmp160339 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160338))))
                               (declare (not safe))
                               (cons 'define __tmp160337)))
                      (write (let ((__tmp160344
                                    (let ((__tmp160383
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160345
                                           (let ((__tmp160346
                                                  (let ((__tmp160347
                                                         (let ((__tmp160371
                                                                (let ((__tmp160372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160373
                                      (let ((__tmp160381
                                             (let ((__tmp160382
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp160382)))
                                            (__tmp160374
                                             (let ((__tmp160375
                                                    (let ((__tmp160376
                                                           (let ((__tmp160377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160378
                                 (let ((__tmp160379
                                        (let ((__tmp160380
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160380 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160379))))
                            (declare (not safe))
                            (cons __tmp160378 '()))))
                     (declare (not safe))
                     (cons _mod-main160160_ __tmp160377))))
              (declare (not safe))
              (cons 'apply __tmp160376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160375 '()))))
                                        (declare (not safe))
                                        (cons __tmp160381 __tmp160374))))
                                 (declare (not safe))
                                 (cons '() __tmp160373))))
                          (declare (not safe))
                          (cons 'lambda __tmp160372)))
                       (__tmp160348
                        (let ((__tmp160349
                               (let ((__tmp160350
                                      (let ((__tmp160351
                                             (let ((__tmp160362
                                                    (let ((__tmp160363
                                                           (let ((__tmp160364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160365
                                 (let ((__tmp160366
                                        (let ((__tmp160367
                                               (let ((__tmp160368
                                                      (let ((__tmp160369
                                                             (let ((__tmp160370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160370 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160368 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160367))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160366))))
                            (declare (not safe))
                            (cons __tmp160365 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160364))))
              (declare (not safe))
              (cons 'with-catch __tmp160363)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160352
                                                    (let ((__tmp160353
                                                           (let ((__tmp160354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160355
                                 (let ((__tmp160356
                                        (let ((__tmp160357
                                               (let ((__tmp160358
                                                      (let ((__tmp160359
                                                             (let ((__tmp160360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp160361
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160361 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160360))))
                (declare (not safe))
                (cons __tmp160359 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160358))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160357))))
                                   (declare (not safe))
                                   (cons __tmp160356 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160355))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160354))))
              (declare (not safe))
              (cons __tmp160353 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160362
                                                     __tmp160352))))
                                        (declare (not safe))
                                        (cons '() __tmp160351))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160350))))
                          (declare (not safe))
                          (cons __tmp160349 '()))))
                   (declare (not safe))
                   (cons __tmp160371 __tmp160348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160347))))
                                             (declare (not safe))
                                             (cons __tmp160346 '()))))
                                      (declare (not safe))
                                      (cons __tmp160383 __tmp160345))))
                               (declare (not safe))
                               (cons 'define __tmp160344)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts160047_
                  (lambda (_libgerbil160156_)
                    (call-with-input-file
                     (string-append _libgerbil160156_ '".ldd")
                     read)))
                 (_replace-extension160048_
                  (lambda (_path160153_ _ext160154_)
                    (string-append
                     (path-strip-extension _path160153_)
                     _ext160154_)))
                 (_not-exclude-module?160049_
                  (lambda (_ctx160149_)
                    (let ((_id-str160151_
                           (symbol->string
                            (##structure-ref
                             _ctx160149_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160385
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str160151_))))
                            (declare (not safe))
                            (not __tmp160385))
                          (let ((__tmp160384
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str160151_))))
                            (declare (not safe))
                            (not __tmp160384))
                          '#f))))
                 (_not-file-empty?160050_
                  (lambda (_path160147_)
                    (let ((__tmp160386
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path160147_))))
                      (declare (not safe))
                      (not __tmp160386))))
                 (_compile-stub160051_
                  (lambda (_output-scm160058_ _output-bin160059_)
                    (let* ((_gerbil-home160061_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir160063_
                            (path-expand '"lib" _gerbil-home160061_))
                           (_gerbil-staticdir160065_
                            (path-expand '"static" _gerbil-libdir160063_))
                           (_gxlink160067_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir160063_))
                           (_tmp160069_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path160073_
                            (lambda (_f160071_)
                              (path-expand
                               (path-strip-directory _f160071_)
                               _tmp160069_)))
                           (_deps160075_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx160043_)))
                           (_deps160077_
                            (filter _not-exclude-module?160049_ _deps160075_))
                           (_src-deps-scm160079_
                            (map gxc#find-static-module-file _deps160077_))
                           (_src-deps-scm160081_
                            (filter _not-file-empty?160050_
                                    _src-deps-scm160079_))
                           (_src-deps-scm160083_
                            (map path-expand _src-deps-scm160081_))
                           (_deps-scm160085_
                            (map _tmp-path160073_ _src-deps-scm160083_))
                           (_deps-c160091_
                            (map (lambda (_g160086160088_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160048_
                                      _g160086160088_
                                      '".c")))
                                 _deps-scm160085_))
                           (_deps-o160097_
                            (map (lambda (_g160092160094_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160048_
                                      _g160092160094_
                                      '".o")))
                                 _deps-scm160085_))
                           (_src-bin-scm160099_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx160043_)))
                           (_src-bin-scm160101_
                            (path-expand _src-bin-scm160099_))
                           (_bin-scm160103_
                            (let ()
                              (declare (not safe))
                              (_tmp-path160073_ _src-bin-scm160101_)))
                           (_bin-c160105_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160048_
                               _bin-scm160103_
                               '".c")))
                           (_bin-o160107_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160048_
                               _bin-scm160103_
                               '".o")))
                           (_output-bin160109_
                            (path-expand _output-bin160059_))
                           (_output-scm160111_
                            (path-expand _output-scm160058_))
                           (_output-c160113_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160048_
                               _output-scm160111_
                               '".c")))
                           (_output-o160115_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160048_
                               _output-scm160111_
                               '".o")))
                           (_output_-c160117_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160048_
                               _output-scm160111_
                               '"_.c")))
                           (_output_-o160119_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160048_
                               _output-scm160111_
                               '"_.o")))
                           (_gsc-link-opts160121_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts160123_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts160125_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir160065_)))
                           (_output-ld-opts160127_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a160129_
                            (path-expand '"libgerbil.a" _gerbil-libdir160063_))
                           (_libgerbil.so160131_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir160063_))
                           (_libgerbil.dylib160133_
                            (path-expand
                             '"libgerbil.dylib"
                             _gerbil-libdir160063_))
                           (_libgerbil-ld-opts160135_
                            (if (file-exists? _libgerbil.so160131_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts160047_
                                   _libgerbil.so160131_))
                                (if (file-exists? _libgerbil.dylib160133_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts160047_
                                       _libgerbil.dylib160133_))
                                    (if (file-exists? _libgerbil.a160129_)
                                        (let ()
                                          (declare (not safe))
                                          (_get-libgerbil-ld-opts160047_
                                           _libgerbil.a160129_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _libgerbil.a160129_
                                           _libgerbil.so160131_
                                           _libgerbil.dylib160133_))))))
                           (_rpath160137_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir160063_)))
                           (_builtin-modules160141_
                            (map (lambda (_mod160139_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod160139_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx160043_ _deps160077_)))))
                      (let ((__tmp160387
                             (lambda ()
                               (let ((__tmp160388
                                      (path-directory _output-bin160109_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160388)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160387))
                      (let ((__tmp160389
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub160046_
                                  _builtin-modules160141_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm160111_
                         __tmp160389))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160390
                                   (lambda () (create-directory _tmp160069_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160390))
                            (for-each
                             copy-file
                             _src-deps-scm160083_
                             _deps-scm160085_)
                            (copy-file _src-bin-scm160101_ _bin-scm160103_)
                            (let ((__tmp160398
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160391
                                   (let ((__tmp160392
                                          (let ((__tmp160393
                                                 (let ((__tmp160394
                                                        (let ((__tmp160395
                                                               (let ((__tmp160396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160397
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm160111_ '()))))
                                (declare (not safe))
                                (cons _bin-scm160103_ __tmp160397))))
                         (declare (not safe))
                         (foldr1 cons __tmp160396 _deps-scm160085_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160395 _gsc-link-opts160121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink160067_
                                                         __tmp160394))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160393))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160392))))
                              (declare (not safe))
                              (gxc#invoke __tmp160398 __tmp160391))
                            (let ((__tmp160406
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160399
                                   (let ((__tmp160400
                                          (let ((__tmp160401
                                                 (let ((__tmp160402
                                                        (let ((__tmp160403
                                                               (let ((__tmp160404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160405
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c160117_ '()))))
                                (declare (not safe))
                                (cons _output-c160113_ __tmp160405))))
                         (declare (not safe))
                         (cons _bin-c160105_ __tmp160404))))
                  (declare (not safe))
                  (foldr1 cons __tmp160403 _deps-c160091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160402
                                                           _gsc-static-opts160125_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160401
                                                    _gsc-cc-opts160123_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160400))))
                              (declare (not safe))
                              (gxc#invoke __tmp160406 __tmp160399))
                            (let ((__tmp160419
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160407
                                   (let ((__tmp160408
                                          (let ((__tmp160409
                                                 (let ((__tmp160410
                                                        (let ((__tmp160411
                                                               (let ((__tmp160412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160413
                                     (let ((__tmp160414
                                            (let ((__tmp160415
                                                   (let ((__tmp160416
                                                          (let ((__tmp160417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160418
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts160135_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160418))))
                    (declare (not safe))
                    (cons _gerbil-libdir160063_ __tmp160417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160416))))
                                              (declare (not safe))
                                              (cons _rpath160137_
                                                    __tmp160415))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160414
                                               _output-ld-opts160127_))))
                                (declare (not safe))
                                (cons _output_-o160119_ __tmp160413))))
                         (declare (not safe))
                         (cons _output-o160115_ __tmp160412))))
                  (declare (not safe))
                  (cons _bin-o160107_ __tmp160411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160410
                                                           _deps-o160097_))))
                                            (declare (not safe))
                                            (cons _output-bin160109_
                                                  __tmp160409))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160408))))
                              (declare (not safe))
                              (gxc#invoke __tmp160419 __tmp160407))
                            (for-each
                             delete-file
                             (let ((__tmp160420
                                    (let ((__tmp160421
                                           (let ((__tmp160422
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o160119_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o160115_
                                                   __tmp160422))))
                                      (declare (not safe))
                                      (cons _output_-c160117_ __tmp160421))))
                               (declare (not safe))
                               (cons _output-c160113_ __tmp160420)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp160069_)))
                          '#!void)))))
          (let* ((_output-bin160053_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx160043_ _opts160044_)))
                 (_output-scm160055_
                  (string-append _output-bin160053_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub160051_ _output-scm160055_ _output-bin160053_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm160055_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159868_ _opts159869_)
        (letrec ((_reset-declare159871_
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
                 (_generate-stub159872_
                  (lambda (_deps160034_)
                    (let ((_mod-main160036_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159868_ 'main)))
                          (_reset-decl160037_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159871_)))
                          (_user-decl160038_
                           (let ()
                             (declare (not safe))
                             (_user-declare159873_))))
                      (for-each
                       (lambda (_dep160040_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl160037_)
                         (newline)
                         (if _user-decl160038_
                             (begin (write _user-decl160038_) (newline))
                             '#!void)
                         (write (let ((__tmp160423
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep160040_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160423)))
                         (newline))
                       _deps160034_)
                      (write (let ((__tmp160424
                                    (let ((__tmp160437
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160425
                                           (let ((__tmp160433
                                                  (let ((__tmp160434
                                                         (let ((__tmp160435
                                                                (let ((__tmp160436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160436))))
                   (declare (not safe))
                   (cons __tmp160435 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160434)))
                                                 (__tmp160426
                                                  (let ((__tmp160427
                                                         (let ((__tmp160428
                                                                (let ((__tmp160429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160430
                                      (let ((__tmp160431
                                             (let ((__tmp160432
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160432 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160431))))
                                 (declare (not safe))
                                 (cons __tmp160430 '()))))
                          (declare (not safe))
                          (cons _mod-main160036_ __tmp160429))))
                   (declare (not safe))
                   (cons 'apply __tmp160428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160427 '()))))
                                             (declare (not safe))
                                             (cons __tmp160433 __tmp160426))))
                                      (declare (not safe))
                                      (cons __tmp160437 __tmp160425))))
                               (declare (not safe))
                               (cons 'define __tmp160424)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159873_
                  (lambda ()
                    (let* ((_gsc-opts159939_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159869_)))
                           (_gsc-prelude159941_
                            (if _gsc-opts159939_
                                (member '"-prelude" _gsc-opts159939_)
                                '#f))
                           (_gsc-prelude159943_
                            (if _gsc-prelude159941_
                                (read (open-input-string
                                       (cadr _gsc-prelude159941_)))
                                '#f)))
                      (let _lp159946_ ((_rest159948_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159943_ '())))
                                       (_user-decls159949_ '()))
                        (let* ((_rest159950159958_ _rest159948_)
                               (_else159952159966_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159949_))
                                      '#f
                                      (let ((__tmp160438
                                             (reverse _user-decls159949_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160438)))))
                               (_K159954160022_
                                (lambda (_rest159969_ _expr159970_)
                                  (let* ((_expr159971159983_ _expr159970_)
                                         (_else159974159991_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159946_
                                               _rest159969_
                                               _user-decls159949_)))))
                                    (let ((_K159979160012_
                                           (lambda (_decls160010_)
                                             (let ((__tmp160439
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159949_
                                                              _decls160010_))))
                                               (declare (not safe))
                                               (_lp159946_
                                                _rest159969_
                                                __tmp160439))))
                                          (_K159976159997_
                                           (lambda (_exprs159995_)
                                             (let ((__tmp160440
                                                    (append _exprs159995_
                                                            _rest159969_)))
                                               (declare (not safe))
                                               (_lp159946_
                                                __tmp160440
                                                _user-decls159949_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159971159983_))
                                          (let ((_tl159981160017_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159971159983_)))
                                                (_hd159980160015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159971159983_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159980160015_
                                                         'declare))
                                                (let ((_decls160020_
                                                       _tl159981160017_))
                                                  (declare (not safe))
                                                  (_K159979160012_
                                                   _decls160020_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159980160015_
                                                             'begin))
                                                    (let ((_exprs160005_
                                                           _tl159981160017_))
                                                      (declare (not safe))
                                                      (_K159976159997_
                                                       _exprs160005_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159974159991_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159974159991_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159950159958_))
                              (let ((_hd159955160025_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159950159958_)))
                                    (_tl159956160027_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159950159958_))))
                                (let* ((_expr160030_ _hd159955160025_)
                                       (_rest160032_ _tl159956160027_))
                                  (declare (not safe))
                                  (_K159954160022_ _rest160032_ _expr160030_)))
                              (let ()
                                (declare (not safe))
                                (_else159952159966_))))))))
                 (_compile-stub159874_
                  (lambda (_output-scm159881_ _output-bin159882_)
                    (let* ((_gerbil-home159884_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159886_
                            (path-expand '"lib" _gerbil-home159884_))
                           (_runtime159888_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159890_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159884_))
                           (_include-gambit-sharp159892_
                            (string-append
                             '"(include \""
                             _gambit-sharp159890_
                             '"\")"))
                           (_bin-scm159894_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159868_)))
                           (_deps159896_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159868_)))
                           (_deps159898_
                            (map gxc#find-static-module-file _deps159896_))
                           (_deps159903_
                            (filter (lambda (_$obj159900_)
                                      (let ((__tmp160441
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159900_))))
                                        (declare (not safe))
                                        (not __tmp160441)))
                                    _deps159898_))
                           (_deps159907_
                            (filter (lambda (_f159905_)
                                      (let ((__tmp160442
                                             (member _f159905_
                                                     _runtime159888_)))
                                        (declare (not safe))
                                        (not __tmp160442)))
                                    _deps159903_))
                           (_output-base159909_
                            (string-append
                             (path-strip-extension _output-scm159881_)))
                           (_output-c159911_
                            (string-append _output-base159909_ '".c"))
                           (_output-o159913_
                            (string-append _output-base159909_ '".o"))
                           (_output-c_159915_
                            (string-append _output-base159909_ '"_.c"))
                           (_output-o_159917_
                            (string-append _output-base159909_ '"_.o"))
                           (_gsc-link-opts159919_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159921_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159923_
                            (let ((__tmp160443
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159886_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160443)))
                           (_output-ld-opts159925_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159927_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160445
                                       (let ((__tmp160446
                                              (let ((__tmp160447
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159892_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160447))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160446))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160445))
                                (let ((__tmp160444
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159892_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160444))))
                           (_gsc-link-opts159929_
                            (append _gsc-link-opts159919_
                                    _gsc-gx-macros159927_))
                           (_rpath159931_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159886_)))
                           (_default-ld-options159933_
                            (let ((__tmp160448
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160448))))
                      (let ((__tmp160449
                             (lambda ()
                               (let ((__tmp160450
                                      (path-directory _output-bin159882_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160450)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160449))
                      (let ((__tmp160451
                             (lambda ()
                               (let ((__tmp160452
                                      (let ((__tmp160453
                                             (let ((__tmp160454
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159894_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160454
                                                       _deps159907_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160453
                                                _runtime159888_))))
                                 (declare (not safe))
                                 (_generate-stub159872_ __tmp160452)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159881_
                         __tmp160451))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160460
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160455
                                   (let ((__tmp160456
                                          (let ((__tmp160457
                                                 (let ((__tmp160458
                                                        (let ((__tmp160459
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159881_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160459 _gsc-link-opts159929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159915_
                                                         __tmp160458))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160457))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160456))))
                              (declare (not safe))
                              (gxc#invoke __tmp160460 __tmp160455))
                            (let ((__tmp160466
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160461
                                   (let ((__tmp160462
                                          (let ((__tmp160463
                                                 (let ((__tmp160464
                                                        (let ((__tmp160465
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159915_ '()))))
                  (declare (not safe))
                  (cons _output-c159911_ __tmp160465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160464
                                                           _gsc-static-opts159923_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160463
                                                    _gsc-cc-opts159921_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160462))))
                              (declare (not safe))
                              (gxc#invoke __tmp160466 __tmp160461))
                            (let ((__tmp160476
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160467
                                   (let ((__tmp160468
                                          (let ((__tmp160469
                                                 (let ((__tmp160470
                                                        (let ((__tmp160471
                                                               (let ((__tmp160472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160473
                                     (let ((__tmp160474
                                            (let ((__tmp160475
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159933_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159886_
                                                    __tmp160475))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160474))))
                                (declare (not safe))
                                (cons _rpath159931_ __tmp160473))))
                         (declare (not safe))
                         (foldr1 cons __tmp160472 _output-ld-opts159925_))))
                  (declare (not safe))
                  (cons _output-o_159917_ __tmp160471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159913_
                                                         __tmp160470))))
                                            (declare (not safe))
                                            (cons _output-bin159882_
                                                  __tmp160469))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160468))))
                              (declare (not safe))
                              (gxc#invoke __tmp160476 __tmp160467)))
                          '#!void)))))
          (let* ((_output-bin159876_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159868_ _opts159869_)))
                 (_output-scm159878_
                  (string-append _output-bin159876_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159874_ _output-scm159878_ _output-bin159876_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159878_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159818_ _id159819_)
        (let ((_$e159865_
               (let ((__tmp160478
                      (lambda (_e159820159822_)
                        (let* ((_g159824159834_ _e159820159822_)
                               (_else159826159842_ (lambda () '#f))
                               (_K159828159846_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159824159834_
                                 'gx#module-export::t))
                              (let* ((_e159829159849_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159824159834_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159830159852_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159824159834_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159831159855_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159824159834_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159831159855_ '0))
                                    (let ((_e159832159858_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159824159834_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159860159862_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159860159862_
                                                    _id159819_)))
                                           _e159832159858_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159828159846_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159826159842_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159826159842_))))
                              (let ()
                                (declare (not safe))
                                (_else159826159842_))))))
                     (__tmp160477
                      (##structure-ref
                       _ctx159818_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160478 __tmp160477))))
          (if _$e159865_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159865_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159810_ _id159811_)
        (let ((_$e159813_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159810_ _id159811_))))
          (if _$e159813_
              ((lambda (_bind159816_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159816_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159811_)))
                 (##structure-ref _bind159816_ '1 gx#binding::t '#f))
               _$e159813_)
              (let ((__tmp160479
                     (##structure-ref
                      _ctx159810_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160479
                 _id159811_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159697_)
        (letrec* ((_ht159699_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159700_
                   (lambda (_in159762_ _phi159763_)
                     (let ((_iphi159765_
                            (fx+ _phi159763_
                                 (##direct-structure-ref
                                  _in159762_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159766_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159762_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159768_ ((_rest159770_ _imports159766_)
                                        (_r159771_ '()))
                         (let* ((_rest159772159780_ _rest159770_)
                                (_else159774159788_ (lambda () _r159771_))
                                (_K159776159798_
                                 (lambda (_rest159791_ _in159792_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159792_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159765_))
                                           (let ((__tmp160486
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159792_
                                                          _r159771_))))
                                             (declare (not safe))
                                             (_lp159768_
                                              _rest159791_
                                              __tmp160486))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159768_
                                              _rest159791_
                                              _r159771_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159792_
                                              'gx#module-import::t))
                                           (let ((_iphi159794_
                                                  (fx+ _phi159763_
                                                       (##direct-structure-ref
                                                        _in159792_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159794_))
                                                 (let ((__tmp160484
                                                        (let ((__tmp160485
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159792_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160485 _r159771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159768_
                                                    _rest159791_
                                                    __tmp160484))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159768_
                                                    _rest159791_
                                                    _r159771_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159792_
                                                  'gx#import-set::t))
                                               (let ((_xphi159796_
                                                      (fx+ _iphi159765_
                                                           (##direct-structure-ref
                                                            _in159792_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159796_))
                                                     (let ((__tmp160482
                                                            (let ((__tmp160483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159792_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160483 _r159771_))))
               (declare (not safe))
               (_lp159768_ _rest159791_ __tmp160482))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159796_)
                                                         (let ((__tmp160480
                                                                (let ((__tmp160481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159700_
                                  _in159792_
                                  _iphi159765_))))
                          (declare (not safe))
                          (foldl1 cons _r159771_ __tmp160481))))
                   (declare (not safe))
                   (_lp159768_ _rest159791_ __tmp160480))
                 (let ()
                   (declare (not safe))
                   (_lp159768_ _rest159791_ _r159771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159768_
                                                  _rest159791_
                                                  _r159771_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159772159780_))
                               (let ((_hd159777159801_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159772159780_)))
                                     (_tl159778159803_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159772159780_))))
                                 (let* ((_in159806_ _hd159777159801_)
                                        (_rest159808_ _tl159778159803_))
                                   (declare (not safe))
                                   (_K159776159798_ _rest159808_ _in159806_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159774159788_))))))))
                  (_find-deps159701_
                   (lambda (_rest159708_ _deps159709_)
                     (let* ((_rest159710159718_ _rest159708_)
                            (_else159712159726_ (lambda () _deps159709_))
                            (_K159714159750_
                             (lambda (_rest159729_ _hd159730_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159730_
                                      'gx#module-context::t))
                                   (let ((_id159732_
                                          (##structure-ref
                                           _hd159730_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159733_
                                          (##structure-ref
                                           _hd159730_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159699_ _id159732_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159701_
                                            _rest159729_
                                            _deps159709_))
                                         (let ((_$e159735_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159730_))))
                                           (if _$e159735_
                                               ((lambda (_pre159738_)
                                                  (let ((_xdeps159740_
                                                         (let ((__tmp160499
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159738_ _imports159733_))))
                   (declare (not safe))
                   (_find-deps159701_ __tmp160499 _deps159709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159699_
                                                       _id159732_
                                                       _hd159730_))
                                                    (let ((__tmp160500
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159740_))))
              (declare (not safe))
              (_find-deps159701_ _rest159729_ __tmp160500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159735_)
                                               (let ((_xdeps159742_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159701_
                                                         _imports159733_
                                                         _deps159709_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159699_
                                                    _id159732_
                                                    _hd159730_))
                                                 (let ((__tmp160498
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159730_
                                                                _xdeps159742_))))
                                                   (declare (not safe))
                                                   (_find-deps159701_
                                                    _rest159729_
                                                    __tmp160498)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159730_
                                          'gx#prelude-context::t))
                                       (let ((_id159744_
                                              (##structure-ref
                                               _hd159730_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159699_
                                                _id159744_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159701_
                                                _rest159729_
                                                _deps159709_))
                                             (let ((_xdeps159746_
                                                    (let ((__tmp160496
                                                           (##structure-ref
                                                            _hd159730_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159701_
                                                       __tmp160496
                                                       _deps159709_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159699_
                                                      _id159744_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159701_
                                                      _rest159729_
                                                      _xdeps159746_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159699_
                                                        _id159744_
                                                        _hd159730_))
                                                     (let ((__tmp160497
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159746_))))
               (declare (not safe))
               (_find-deps159701_ _rest159729_ __tmp160497)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159730_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160495
                                                      (##direct-structure-ref
                                                       _hd159730_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160495))
                                               (let ((__tmp160493
                                                      (let ((__tmp160494
                                                             (##direct-structure-ref
                                                              _hd159730_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160494
                                                              _rest159729_))))
                                                 (declare (not safe))
                                                 (_find-deps159701_
                                                  __tmp160493
                                                  _deps159709_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159701_
                                                  _rest159729_
                                                  _deps159709_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159730_
                                                  'gx#module-export::t))
                                               (let ((__tmp160491
                                                      (let ((__tmp160492
                                                             (##direct-structure-ref
                                                              _hd159730_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160492
                                                              _rest159729_))))
                                                 (declare (not safe))
                                                 (_find-deps159701_
                                                  __tmp160491
                                                  _deps159709_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159730_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160490
                                                              (##direct-structure-ref
                                                               _hd159730_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160490))
                                                       (let ((__tmp160488
                                                              (let ((__tmp160489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159730_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160489 _rest159729_))))
                 (declare (not safe))
                 (_find-deps159701_ __tmp160488 _deps159709_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159730_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159748_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159700_ _hd159730_ '0)))
                          (__tmp160487
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159729_ _xdeps159748_))))
                     (declare (not safe))
                     (_find-deps159701_ __tmp160487 _deps159709_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159701_ _rest159729_ _deps159709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159730_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159710159718_))
                           (let ((_hd159715159753_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159710159718_)))
                                 (_tl159716159755_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159710159718_))))
                             (let* ((_hd159758_ _hd159715159753_)
                                    (_rest159760_ _tl159716159755_))
                               (declare (not safe))
                               (_K159714159750_ _rest159760_ _hd159758_)))
                           (let ()
                             (declare (not safe))
                             (_else159712159726_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160501
                                  (let ((_$e159703_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159697_))))
                                    (if _$e159703_
                                        ((lambda (_pre159706_)
                                           (let ((__tmp160502
                                                  (##structure-ref
                                                   _ctx159697_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159706_ __tmp160502)))
                                         _$e159703_)
                                        (##structure-ref
                                         _ctx159697_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159701_ __tmp160501 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159628_)
        (let* ((_context-id159630_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159628_
                       'gx#module-context::t))
                    (##structure-ref _ctx159628_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159628_)))
               (_scm159632_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159630_))
                 '".scm"))
               (_dirs159634_ (let () (declare (not safe)) (load-path)))
               (_dirs159640_
                (let ((_user-libpath159636_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159636_
                      (let ((_user-libpath159638_
                             (path-expand '"lib" _user-libpath159636_)))
                        (if (member _user-libpath159638_ _dirs159634_)
                            _dirs159634_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159638_ _dirs159634_))))
                      _dirs159634_)))
               (_dirs159649_
                (let ((_$e159642_ (gxc#current-compile-output-dir)))
                  (if _$e159642_
                      ((lambda (_g159644159646_)
                         (let ()
                           (declare (not safe))
                           (cons _g159644159646_ _dirs159640_)))
                       _$e159642_)
                      _dirs159640_)))
               (_dirs159655_
                (map (lambda (_g159650159652_)
                       (path-expand '"static" _g159650159652_))
                     _dirs159649_)))
          (let _lp159658_ ((_rest159660_ _dirs159655_))
            (let* ((_rest159661159669_ _rest159660_)
                   (_else159663159677_
                    (lambda ()
                      (let ((__tmp160503
                             (##structure-ref
                              _ctx159628_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160503
                         _scm159632_))))
                   (_K159665159685_
                    (lambda (_rest159680_ _dir159681_)
                      (let ((_path159683_
                             (path-expand _scm159632_ _dir159681_)))
                        (if (file-exists? _path159683_)
                            _path159683_
                            (let ()
                              (declare (not safe))
                              (_lp159658_ _rest159680_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159661159669_))
                  (let ((_hd159666159688_
                         (let ()
                           (declare (not safe))
                           (##car _rest159661159669_)))
                        (_tl159667159690_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159661159669_))))
                    (let* ((_dir159693_ _hd159666159688_)
                           (_rest159695_ _tl159667159690_))
                      (declare (not safe))
                      (_K159665159685_ _rest159695_ _dir159693_)))
                  (let () (declare (not safe)) (_else159663159677_))))))))
    (define gxc#file-empty?
      (lambda (_path159626_)
        (let ((__tmp160504 (file-info-size (file-info _path159626_ '#t))))
          (declare (not safe))
          (zero? __tmp160504))))
    (define gxc#compile-top-module
      (lambda (_ctx159615_)
        (let ((__tmp160508
               (lambda ()
                 (let ((__tmp160509
                        (##structure-ref
                         _ctx159615_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160509))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160510
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159615_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160510))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159615_))
                 (if (let ((__tmp160513
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159615_))))
                       (declare (not safe))
                       (null? __tmp160513))
                     (let* ((_thr1159620_
                             (let ((__tmp160511
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159615_)))))
                               (declare (not safe))
                               (spawn __tmp160511)))
                            (_thr2159623_
                             (let ((__tmp160512
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159615_)))))
                               (declare (not safe))
                               (spawn __tmp160512))))
                       (let () (declare (not safe)) (gxc#join! _thr1159620_))
                       (let () (declare (not safe)) (gxc#join! _thr2159623_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159615_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159615_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159615_))
                     '#!void)))
              (__tmp160507
               (let ((__obj160315
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj160315)
                 __obj160315))
              (__tmp160506 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160505 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160508
           gx#current-expander-context
           _ctx159615_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160507
           gxc#current-compile-runtime-sections
           __tmp160506
           gxc#current-compile-runtime-names
           __tmp160505))))
    (define gxc#collect-bindings
      (lambda (_ctx159613_)
        (let ((__tmp160514
               (##structure-ref _ctx159613_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160514))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159559_)
        (letrec ((_compile1159561_
                  (lambda (_ctx159602_)
                    (let* ((_code159604_
                            (##structure-ref
                             _ctx159602_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159608_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159604_))
                                (let ((_idstr159606_
                                       (let ((__tmp160515
                                              (##structure-ref
                                               _ctx159602_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160515))))
                                  (string-append _idstr159606_ '"~0"))
                                '#f)))
                      (if _rt159608_
                          (begin
                            (let ((__tmp160516
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160516 _ctx159602_ _rt159608_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159563_
                               _ctx159602_
                               _code159604_)))
                          (let ((_path159611_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159602_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159611_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159564_
                         _ctx159602_
                         _code159604_
                         _rt159608_)))))
                 (_context-timestamp159562_
                  (lambda (_ctx159600_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159600_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159563_
                  (lambda (_ctx159582_ _code159583_)
                    (let* ((_lifts159585_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159588_
                            (let ((__tmp160519
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159583_))))
                                  (__tmp160518
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160517
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160519
                               gx#current-expander-context
                               _ctx159582_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159585_
                               gxc#current-compile-marks
                               __tmp160518
                               gxc#current-compile-identifiers
                               __tmp160517)))
                           (_runtime-code159590_
                            (if (let ((__tmp160523 (unbox _lifts159585_)))
                                  (declare (not safe))
                                  (null? __tmp160523))
                                _runtime-code159588_
                                (let ((__tmp160520
                                       (let ((__tmp160522
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159588_
                                                      '())))
                                             (__tmp160521
                                              (reverse (unbox _lifts159585_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160522
                                                 __tmp160521))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160520))))
                           (_runtime-code159592_
                            (let ((__tmp160524
                                   (let ((__tmp160526
                                          (let ((__tmp160527
                                                 (let ((__tmp160530
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159562_
                                                           _ctx159582_)))
                                                       (__tmp160528
                                                        (let ((__tmp160529
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160529
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160530
                                                         __tmp160528))))
                                            (declare (not safe))
                                            (cons 'define __tmp160527)))
                                         (__tmp160525
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159590_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160526 __tmp160525))))
                              (declare (not safe))
                              (cons 'begin __tmp160524)))
                           (_scm0159594_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159582_
                               '0
                               '".scm"))))
                      (let ((_scms159597_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159582_))))
                        (let ((__tmp160531
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159594_
                                    _runtime-code159592_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160531
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159597_)
                            (delete-file _scms159597_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159594_
                           '" => "
                           _scms159597_))
                        (copy-file _scm0159594_ _scms159597_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159594_))))))
                 (_generate-loader-code159564_
                  (lambda (_ctx159571_ _code159572_ _rt159573_)
                    (let* ((_loader-code159576_
                            (let ((__tmp160532
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159572_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160532
                               gx#current-expander-context
                               _ctx159571_)))
                           (_loader-code159578_
                            (if _rt159573_
                                (let ((__tmp160533
                                       (let ((__tmp160534
                                              (let ((__tmp160535
                                                     (let ((__tmp160536
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160535 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159576_
                                               __tmp160534))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160533))
                                _loader-code159576_)))
                      (let ((__tmp160537
                             (lambda ()
                               (let ((__tmp160538
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159571_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160538
                                  _loader-code159578_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160537
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159566_
                 (let ((__tmp160539
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159559_))))
                   (declare (not safe))
                   (cons _ctx159559_ __tmp160539))))
            (for-each
             (lambda (_ctx159568_)
               (let ((__tmp160540
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159561_ _ctx159568_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160540
                  gxc#current-compile-decls
                  '())))
             _all-modules159566_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159456_)
        (letrec ((_compile-ssi159458_
                  (lambda (_code159529_)
                    (let* ((_path159531_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159456_
                               '#f
                               '".ssi")))
                           (_prelude159542_
                            (let* ((_super159533_
                                    (##structure-ref
                                     _ctx159456_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159535_
                                    (##structure-ref
                                     _super159533_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159535_
                                  ((lambda (_g159537159539_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159537159539_)))
                                   _$e159535_)
                                  ':<root>)))
                           (_ns159544_
                            (##structure-ref
                             _ctx159456_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159546_
                            (symbol->string
                             (##structure-ref
                              _ctx159456_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159553_
                            (let ((_$e159548_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159546_ '#\/))))
                              (if _$e159548_
                                  ((lambda (_x159551_)
                                     (string->symbol
                                      (substring _idstr159546_ '0 _x159551_)))
                                   _$e159548_)
                                  '#f)))
                           (_rt159555_
                            (let ((__tmp160541
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160541 _ctx159456_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159531_))
                      (let ((__tmp160542
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159542_))
                               (if _pkg159553_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159553_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159544_))
                               (newline)
                               (pretty-print _code159529_)
                               (if _rt159555_
                                   (pretty-print
                                    (let ((__tmp160543
                                           (let ((__tmp160547
                                                  (let ((__tmp160548
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160548)))
                                                 (__tmp160544
                                                  (let ((__tmp160545
                                                         (let ((__tmp160546
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159555_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160545 '()))))
                                             (declare (not safe))
                                             (cons __tmp160547 __tmp160544))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160543)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159531_
                         __tmp160542)))))
                 (_compile-phi159459_
                  (lambda (_part159469_)
                    (let* ((_part159470159483_ _part159469_)
                           (_E159472159487_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159470159483_))))
                           (_K159473159498_
                            (lambda (_code159490_
                                     _n159491_
                                     _phi159492_
                                     _phi-ctx159493_)
                              (let* ((_code159496_
                                      (let ((__tmp160549
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159490_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160549
                                         gx#current-expander-context
                                         _phi-ctx159493_
                                         gx#current-expander-phi
                                         _phi159492_)))
                                     (__tmp160550
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159456_
                                         _n159491_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160550
                                 _code159496_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159470159483_))
                          (let ((_hd159474159501_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159470159483_)))
                                (_tl159475159503_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159470159483_))))
                            (let ((_phi-ctx159506_ _hd159474159501_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159475159503_))
                                  (let ((_hd159476159508_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159475159503_)))
                                        (_tl159477159510_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159475159503_))))
                                    (let ((_phi159513_ _hd159476159508_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159477159510_))
                                          (let ((_hd159478159515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159477159510_)))
                                                (_tl159479159517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159477159510_))))
                                            (let ((_n159520_ _hd159478159515_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159479159517_))
                                                  (let ((_hd159480159522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159479159517_)))
                                                        (_tl159481159524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159479159517_))))
                                                    (let ((_code159527_
                                                           _hd159480159522_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159481159524_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159473159498_
                                                             _code159527_
                                                             _n159520_
                                                             _phi159513_
                                                             _phi-ctx159506_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159472159487_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159472159487_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159472159487_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159472159487_)))))
                          (let () (declare (not safe)) (_E159472159487_)))))))
          (let ((_g160551_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159456_))))
            (begin
              (let ((_g160552_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160551_)
                           (##vector-length _g160551_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160552_ 2)))
                    (error "Context expects 2 values" _g160552_)))
              (let ((_ssi-code159461_
                     (let () (declare (not safe)) (##vector-ref _g160551_ 0)))
                    (_phi-code159462_
                     (let () (declare (not safe)) (##vector-ref _g160551_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159458_ _ssi-code159461_))
                  (let ((_threads159467_
                         (map (lambda (_code159464_)
                                (let ((__tmp160553
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159459_
                                            _code159464_)))))
                                  (declare (not safe))
                                  (spawn __tmp160553)))
                              _phi-code159462_)))
                    (for-each gxc#join! _threads159467_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159439_)
        (let* ((_path159441_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159439_ '#f '".ssxi.ss")))
               (_code159443_
                (let ((__tmp160554
                       (##structure-ref
                        _ctx159439_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160554)))
               (_idstr159445_
                (symbol->string
                 (##structure-ref _ctx159439_ '1 gx#expander-context::t '#f)))
               (_pkg159452_
                (let ((_$e159447_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159445_ '#\/))))
                  (if _$e159447_
                      ((lambda (_x159450_)
                         (string->symbol
                          (substring _idstr159445_ '0 _x159450_)))
                       _$e159447_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159441_))
          (let ((__tmp160555
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159452_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159452_))
                       '#!void)
                   (newline)
                   (pretty-print _code159443_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159441_ __tmp160555)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159432_)
        (let* ((_state159434_
                (let ((__obj160316
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj160316 _ctx159432_)
                  __obj160316))
               (_ssi-code159436_
                (let ((__tmp160556
                       (##structure-ref
                        _ctx159432_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160556
                   'state:
                   _state159434_))))
          (values _ssi-code159436_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159434_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159425_)
        (let ((_lifts159427_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160559
                 (lambda ()
                   (let ((_code159430_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159425_))))
                     (if (let ((__tmp160563 (unbox _lifts159427_)))
                           (declare (not safe))
                           (null? __tmp160563))
                         _code159430_
                         (let ((__tmp160560
                                (let ((__tmp160562
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159430_ '())))
                                      (__tmp160561
                                       (reverse (unbox _lifts159427_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160562 __tmp160561))))
                           (declare (not safe))
                           (cons 'begin __tmp160560))))))
                (__tmp160558
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160557
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160559
             gxc#current-compile-lift
             _lifts159427_
             gxc#current-compile-marks
             __tmp160558
             gxc#current-compile-identifiers
             __tmp160557)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159421_)
        (let ((_modules159423_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160564
                 (##structure-ref _ctx159421_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160564 'modules: _modules159423_))
          (reverse (unbox _modules159423_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159404_ _code159405_ _phi?159406_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159404_))
        (let ((__tmp160565
               (lambda ()
                 (pretty-print
                  (let ((__tmp160566
                         (let ((__tmp160573
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160567
                                (let ((__tmp160572
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160568
                                       (let ((__tmp160571
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160569
                                              (let ((__tmp160570
                                                     (if _phi?159406_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160570))))
                                         (declare (not safe))
                                         (cons __tmp160571 __tmp160569))))
                                  (declare (not safe))
                                  (cons __tmp160572 __tmp160568))))
                           (declare (not safe))
                           (cons __tmp160573 __tmp160567))))
                    (declare (not safe))
                    (cons 'declare __tmp160566)))
                 (pretty-print _code159405_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159404_ __tmp160565))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159404_ _phi?159406_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159404_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159412_ _code159413_)
        (let ((_phi?159415_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159412_ _code159413_ _phi?159415_))))
    (define gxc#compile-scm-file
      (lambda _g160575_
        (let ((_g160574_ (let () (declare (not safe)) (##length _g160575_))))
          (cond ((let () (declare (not safe)) (##fx= _g160574_ 2))
                 (apply (lambda (_path159412_ _code159413_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159412_
                             _code159413_)))
                        _g160575_))
                ((let () (declare (not safe)) (##fx= _g160574_ 3))
                 (apply (lambda (_path159417_ _code159418_ _phi?159419_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159417_
                             _code159418_
                             _phi?159419_)))
                        _g160575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160575_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?159305_)
        (let _lp159307_ ((_rest159309_ (gxc#current-compile-gsc-options))
                         (_opts159310_ '()))
          (let* ((_rest159311159331_ _rest159309_)
                 (_else159315159339_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159305_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160576
                               (let ((__tmp160577 (reverse _opts159310_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160577))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160576))
                        (reverse _opts159310_)))))
            (let ((_K159325159382_
                   (lambda (_rest159380_)
                     (let ()
                       (declare (not safe))
                       (_lp159307_ _rest159380_ _opts159310_))))
                  (_K159320159364_
                   (lambda (_rest159362_)
                     (let ()
                       (declare (not safe))
                       (_lp159307_ _rest159362_ _opts159310_))))
                  (_K159317159346_
                   (lambda (_rest159343_ _opt159344_)
                     (let ((__tmp160578
                            (let ()
                              (declare (not safe))
                              (cons _opt159344_ _opts159310_))))
                       (declare (not safe))
                       (_lp159307_ _rest159343_ __tmp160578)))))
              (if (let () (declare (not safe)) (##pair? _rest159311159331_))
                  (let ((_tl159327159387_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159311159331_)))
                        (_hd159326159385_
                         (let ()
                           (declare (not safe))
                           (##car _rest159311159331_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159326159385_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159327159387_))
                            (let* ((_tl159329159390_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159327159387_)))
                                   (_rest159393_ _tl159329159390_))
                              (declare (not safe))
                              (_K159325159382_ _rest159393_))
                            (let ((_opt159354_ _hd159326159385_)
                                  (_rest159356_ _tl159327159387_))
                              (let ()
                                (declare (not safe))
                                (_K159317159346_ _rest159356_ _opt159354_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159326159385_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159327159387_))
                                (let* ((_tl159324159372_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159327159387_)))
                                       (_rest159375_ _tl159324159372_))
                                  (declare (not safe))
                                  (_K159320159364_ _rest159375_))
                                (let ((_opt159354_ _hd159326159385_)
                                      (_rest159356_ _tl159327159387_))
                                  (let ()
                                    (declare (not safe))
                                    (_K159317159346_
                                     _rest159356_
                                     _opt159354_))))
                            (let ((_opt159354_ _hd159326159385_)
                                  (_rest159356_ _tl159327159387_))
                              (let ()
                                (declare (not safe))
                                (_K159317159346_ _rest159356_ _opt159354_))))))
                  (let () (declare (not safe)) (_else159315159339_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159399_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159399_))))
    (define gxc#gsc-link-options
      (lambda _g160580_
        (let ((_g160579_ (let () (declare (not safe)) (##length _g160580_))))
          (cond ((let () (declare (not safe)) (##fx= _g160579_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160580_))
                ((let () (declare (not safe)) (##fx= _g160579_ 1))
                 (apply (lambda (_phi?159401_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159401_)))
                        _g160580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160580_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?159206_)
        (let _lp159208_ ((_rest159210_ (gxc#current-compile-gsc-options))
                         (_opts159211_ '()))
          (let* ((_rest159212159232_ _rest159210_)
                 (_else159216159240_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159206_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160581
                               (let ((__tmp160582 (reverse _opts159211_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160582))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160581))
                        (reverse _opts159211_)))))
            (let ((_K159226159279_
                   (lambda (_rest159276_ _opt159277_)
                     (let ((__tmp160583
                            (let ((__tmp160584
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts159211_))))
                              (declare (not safe))
                              (cons _opt159277_ __tmp160584))))
                       (declare (not safe))
                       (_lp159208_ _rest159276_ __tmp160583))))
                  (_K159221159260_
                   (lambda (_rest159258_)
                     (let ()
                       (declare (not safe))
                       (_lp159208_ _rest159258_ _opts159211_))))
                  (_K159218159246_
                   (lambda (_rest159244_)
                     (let ()
                       (declare (not safe))
                       (_lp159208_ _rest159244_ _opts159211_)))))
              (if (let () (declare (not safe)) (##pair? _rest159212159232_))
                  (let ((_tl159228159284_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159212159232_)))
                        (_hd159227159282_
                         (let ()
                           (declare (not safe))
                           (##car _rest159212159232_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159227159282_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159228159284_))
                            (let ((_tl159230159289_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl159228159284_)))
                                  (_hd159229159287_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl159228159284_))))
                              (let ((_opt159292_ _hd159229159287_)
                                    (_rest159294_ _tl159230159289_))
                                (let ()
                                  (declare (not safe))
                                  (_K159226159279_ _rest159294_ _opt159292_))))
                            (let ((_rest159252_ _tl159228159284_))
                              (declare (not safe))
                              (_K159218159246_ _rest159252_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159227159282_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159228159284_))
                                (let* ((_tl159225159268_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159228159284_)))
                                       (_rest159271_ _tl159225159268_))
                                  (declare (not safe))
                                  (_K159221159260_ _rest159271_))
                                (let ((_rest159252_ _tl159228159284_))
                                  (declare (not safe))
                                  (_K159218159246_ _rest159252_)))
                            (let ((_rest159252_ _tl159228159284_))
                              (declare (not safe))
                              (_K159218159246_ _rest159252_)))))
                  (let () (declare (not safe)) (_else159216159240_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?159300_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?159300_))))
    (define gxc#gsc-cc-options
      (lambda _g160586_
        (let ((_g160585_ (let () (declare (not safe)) (##length _g160586_))))
          (cond ((let () (declare (not safe)) (##fx= _g160585_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160586_))
                ((let () (declare (not safe)) (##fx= _g160585_ 1))
                 (apply (lambda (_phi?159302_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?159302_)))
                        _g160586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160586_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir159201_)
        (let* ((_user-staticdir159203_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160587
                (let ((__tmp160588
                       (string-append
                        '"-I "
                        _staticdir159201_
                        '" -I "
                        _user-staticdir159203_)))
                  (declare (not safe))
                  (cons __tmp160588 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160587))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp159113_ ((_rest159115_ (gxc#current-compile-gsc-options))
                         (_opts159116_ '()))
          (let* ((_rest159117159137_ _rest159115_)
                 (_else159121159145_ (lambda () _opts159116_)))
            (let ((_K159131159188_
                   (lambda (_rest159186_)
                     (let ()
                       (declare (not safe))
                       (_lp159113_ _rest159186_ _opts159116_))))
                  (_K159126159166_
                   (lambda (_rest159163_ _opt159164_)
                     (let ((__tmp160589
                            (append _opts159116_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt159164_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp159113_ _rest159163_ __tmp160589))))
                  (_K159123159151_
                   (lambda (_rest159149_)
                     (let ()
                       (declare (not safe))
                       (_lp159113_ _rest159149_ _opts159116_)))))
              (if (let () (declare (not safe)) (##pair? _rest159117159137_))
                  (let ((_tl159133159193_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159117159137_)))
                        (_hd159132159191_
                         (let ()
                           (declare (not safe))
                           (##car _rest159117159137_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159132159191_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159133159193_))
                            (let* ((_tl159135159196_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159133159193_)))
                                   (_rest159199_ _tl159135159196_))
                              (declare (not safe))
                              (_K159131159188_ _rest159199_))
                            (let ((_rest159157_ _tl159133159193_))
                              (declare (not safe))
                              (_K159123159151_ _rest159157_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159132159191_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159133159193_))
                                (let ((_tl159130159176_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl159133159193_)))
                                      (_hd159129159174_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl159133159193_))))
                                  (let ((_opt159179_ _hd159129159174_)
                                        (_rest159181_ _tl159130159176_))
                                    (let ()
                                      (declare (not safe))
                                      (_K159126159166_
                                       _rest159181_
                                       _opt159179_))))
                                (let ((_rest159157_ _tl159133159193_))
                                  (declare (not safe))
                                  (_K159123159151_ _rest159157_)))
                            (let ((_rest159157_ _tl159133159193_))
                              (declare (not safe))
                              (_K159123159151_ _rest159157_)))))
                  (let () (declare (not safe)) (_else159121159145_))))))))
    (define gxc#not-string-empty?
      (lambda (_str159110_)
        (let ((__tmp160590
               (let () (declare (not safe)) (string-empty? _str159110_))))
          (declare (not safe))
          (not __tmp160590))))
    (define gxc#gsc-compile-file
      (lambda (_path159078_ _phi?159079_)
        (letrec ((_gsc-link-path159081_
                  (lambda (_base-path159102_)
                    (let _lp159104_ ((_n159106_ '1))
                      (let ((_path159108_
                             (string-append
                              _base-path159102_
                              '".o"
                              (number->string _n159106_))))
                        (if (file-exists? _path159108_)
                            (let ((__tmp160591
                                   (let ()
                                     (declare (not safe))
                                     (+ _n159106_ '1))))
                              (declare (not safe))
                              (_lp159104_ __tmp160591))
                            _path159108_))))))
          (let* ((_base-path159083_ (path-strip-extension _path159078_))
                 (_path-c159085_ (string-append _base-path159083_ '".c"))
                 (_path-o159087_ (string-append _base-path159083_ '".o"))
                 (_link-path159089_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path159081_ _base-path159083_)))
                 (_link-path-c159091_ (string-append _link-path159089_ '".c"))
                 (_link-path-o159093_ (string-append _link-path159089_ '".o"))
                 (_gsc-link-opts159095_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?159079_)))
                 (_gsc-cc-opts159097_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?159079_)))
                 (_gcc-ld-opts159099_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160598 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160592
                   (let ((__tmp160593
                          (let ((__tmp160594
                                 (let ((__tmp160595
                                        (let ((__tmp160596
                                               (let ((__tmp160597
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path159078_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160597
                                                         _gsc-link-opts159095_))))
                                          (declare (not safe))
                                          (cons _link-path-c159091_
                                                __tmp160596))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160595))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160594))))
                     (declare (not safe))
                     (cons '"-link" __tmp160593))))
              (declare (not safe))
              (gxc#invoke __tmp160598 __tmp160592 'stdout-redirection: '#t))
            (let ((__tmp160605 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160599
                   (let ((__tmp160600
                          (let ((__tmp160601
                                 (let ((__tmp160602
                                        (let ((__tmp160603
                                               (let ((__tmp160604
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c159091_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c159085_
                                                       __tmp160604))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160603
                                                  _gsc-cc-opts159097_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160602))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160601))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160600))))
              (declare (not safe))
              (gxc#invoke __tmp160605 __tmp160599 'stdout-redirection: '#t))
            (let ((__tmp160611 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160606
                   (let ((__tmp160607
                          (let ((__tmp160608
                                 (let ((__tmp160609
                                        (let ((__tmp160610
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o159093_
                                                       _gcc-ld-opts159099_))))
                                          (declare (not safe))
                                          (cons _path-o159087_ __tmp160610))))
                                   (declare (not safe))
                                   (cons _link-path159089_ __tmp160609))))
                            (declare (not safe))
                            (cons '"-o" __tmp160608))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160607))))
              (declare (not safe))
              (gxc#invoke __tmp160611 __tmp160606))
            (for-each
             delete-file
             (let ((__tmp160612
                    (let ((__tmp160613
                           (let ((__tmp160614
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o159093_ '()))))
                             (declare (not safe))
                             (cons _link-path-c159091_ __tmp160614))))
                      (declare (not safe))
                      (cons _path-o159087_ __tmp160613))))
               (declare (not safe))
               (cons _path-c159085_ __tmp160612)))))))
    (define gxc#compile-output-file
      (lambda (_ctx159049_ _n159050_ _ext159051_)
        (letrec ((_module-relative-path159053_
                  (lambda (_ctx159076_)
                    (path-strip-directory
                     (let ((__tmp160615
                            (##structure-ref
                             _ctx159076_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160615)))))
                 (_module-source-directory159054_
                  (lambda (_ctx159072_)
                    (path-directory
                     (let ((_mpath159074_
                            (##structure-ref
                             _ctx159072_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath159074_))
                           _mpath159074_
                           (last _mpath159074_))))))
                 (_section-string159055_
                  (lambda (_n159070_)
                    (if (let () (declare (not safe)) (number? _n159070_))
                        (number->string _n159070_)
                        (if (let () (declare (not safe)) (symbol? _n159070_))
                            (symbol->string _n159070_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n159070_))
                                _n159070_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n159070_)))))))
                 (_file-name159056_
                  (lambda (_path159068_)
                    (if _n159050_
                        (string-append
                         _path159068_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_section-string159055_ _n159050_))
                         _ext159051_)
                        (string-append _path159068_ _ext159051_))))
                 (_file-path159057_
                  (lambda ()
                    (let ((_$e159063_ (gxc#current-compile-output-dir)))
                      (if _$e159063_
                          ((lambda (_outdir159066_)
                             (path-expand
                              (let ((__tmp160617
                                     (let ((__tmp160618
                                            (##structure-ref
                                             _ctx159049_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160618))))
                                (declare (not safe))
                                (_file-name159056_ __tmp160617))
                              _outdir159066_))
                           _$e159063_)
                          (path-expand
                           (let ((__tmp160616
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path159053_
                                     _ctx159049_))))
                             (declare (not safe))
                             (_file-name159056_ __tmp160616))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory159054_
                              _ctx159049_))))))))
          (let ((_path159059_
                 (let () (declare (not safe)) (_file-path159057_))))
            (let ((__tmp160619
                   (lambda ()
                     (let ((__tmp160620 (path-directory _path159059_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160620)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160619))
            _path159059_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx159031_)
        (letrec ((_file-name159033_
                  (lambda (_id159047_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id159047_))
                     '".scm")))
                 (_file-path159034_
                  (lambda ()
                    (let* ((_file159040_
                            (let ((__tmp160621
                                   (##structure-ref
                                    _ctx159031_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name159033_ __tmp160621)))
                           (_$e159042_ (gxc#current-compile-output-dir)))
                      (if _$e159042_
                          ((lambda (_outdir159045_)
                             (path-expand
                              _file159040_
                              (path-expand '"static" _outdir159045_)))
                           _$e159042_)
                          (path-expand _file159040_ '"static"))))))
          (let ((_path159036_
                 (let () (declare (not safe)) (_file-path159034_))))
            (let ((__tmp160622
                   (lambda ()
                     (let ((__tmp160623 (path-directory _path159036_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160623)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160622))
            _path159036_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx159025_ _opts159026_)
        (let ((_$e159028_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts159026_))))
          (if _$e159028_
              (values _$e159028_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx159025_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr159018_)
        (if (let () (declare (not safe)) (string? _idstr159018_))
            (let* ((_str159020_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr159018_)))
                   (_strs159022_
                    (let ()
                      (declare (not safe))
                      (string-split _str159020_ '#\/))))
              (let () (declare (not safe)) (string-join _strs159022_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr159018_))
                (let ((__tmp160624 (symbol->string _idstr159018_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160624))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr159018_))))))
    (define gxc#invoke__%
      (lambda (_g160625_
               _stdout-redirection158979158983_
               _stderr-redirection158980158985_
               _program158987_
               _args158988_)
        (let* ((_stdout-redirection158990_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158979158983_ absent-value))
                    '#f
                    _stdout-redirection158979158983_))
               (_stderr-redirection158992_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158980158985_ absent-value))
                    '#f
                    _stderr-redirection158980158985_)))
          (let ((__tmp160626
                 (let ()
                   (declare (not safe))
                   (cons _program158987_ _args158988_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160626))
          (let* ((_proc158994_
                  (open-process
                   (let ((__tmp160627
                          (let ((__tmp160628
                                 (let ((__tmp160629
                                        (let ((__tmp160630
                                               (let ((__tmp160631
                                                      (let ((__tmp160632
                                                             (let ((__tmp160633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection158992_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160633))))
                (declare (not safe))
                (cons _stdout-redirection158990_ __tmp160632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160631))))
                                          (declare (not safe))
                                          (cons _args158988_ __tmp160630))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160629))))
                            (declare (not safe))
                            (cons _program158987_ __tmp160628))))
                     (declare (not safe))
                     (cons 'path: __tmp160627))))
                 (_output158999_
                  (if (or _stdout-redirection158990_
                          _stderr-redirection158992_)
                      (read-line _proc158994_ '#f)
                      '#f)))
            (let ((_status159002_ (process-status _proc158994_)))
              (close-port _proc158994_)
              (if (let () (declare (not safe)) (zero? _status159002_))
                  '#!void
                  (begin
                    (display _output158999_)
                    (let ((__tmp160634
                           (let ()
                             (declare (not safe))
                             (cons _program158987_ _args158988_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160634
                       _status159002_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158978159007_ . _args159009_)
        (apply gxc#invoke__%
               _keys158978159007_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158978159007_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158978159007_
                  'stderr-redirection:
                  absent-value))
               _args159009_)))
    (define gxc#invoke
      (lambda _args158981159015_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158981159015_)))
    (define gxc#join!
      (lambda (_thread158972_)
        (let ((__tmp160636
               (lambda (_exn158974_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158974_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158974_)))
                     (raise _exn158974_))))
              (__tmp160635 (lambda () (thread-join! _thread158972_))))
          (declare (not safe))
          (with-catch __tmp160636 __tmp160635))))))
