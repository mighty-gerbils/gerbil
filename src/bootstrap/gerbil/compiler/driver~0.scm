(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710770274)
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
      (lambda (_path160179_ _fun160180_)
        (with-output-to-file
         (let ((__tmp160273
                (let ()
                  (declare (not safe))
                  (cons _path160179_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp160273))
         _fun160180_)))
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
      (lambda (_gerbil-libdir160174_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir160174_)))
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
      (lambda (_dir160172_) (delete-file-or-directory _dir160172_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath160146_ _opts160147_)
        (if (let () (declare (not safe)) (string? _srcpath160146_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160146_)))
        (let ((_outdir160149_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160147_)))
              (_invoke-gsc?160150_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160147_)))
              (_gsc-options160151_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160147_)))
              (_keep-scm?160152_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160147_)))
              (_verbosity160153_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160147_)))
              (_optimize160154_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts160147_)))
              (_debug160155_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160147_)))
              (_gen-ssxi160156_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts160147_))))
          (if _outdir160149_
              (let ((__tmp160274
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160149_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160274))
              '#!void)
          (if _optimize160154_
              (let ((__tmp160275
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160275))
              '#!void)
          (let ((__tmp160279
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath160146_))
                   (let ((__tmp160280
                          (let ((__tmp160281
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160146_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160281))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp160280))))
                (__tmp160278
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160276
                 (let ((__tmp160277
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160146_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp160277))))
            (declare (not safe))
            (call-with-parameters
             __tmp160279
             gxc#current-compile-output-dir
             _outdir160149_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160150_
             gxc#current-compile-gsc-options
             _gsc-options160151_
             gxc#current-compile-keep-scm
             _keep-scm?160152_
             gxc#current-compile-verbose
             _verbosity160153_
             gxc#current-compile-optimize
             _optimize160154_
             gxc#current-compile-debug
             _debug160155_
             gxc#current-compile-generate-ssxi
             _gen-ssxi160156_
             gxc#current-compile-timestamp
             __tmp160278
             gxc#current-compile-context
             __tmp160276
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath160165_)
        (let ((_opts160167_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath160165_ _opts160167_))))
    (define gxc#compile-module
      (lambda _g160283_
        (let ((_g160282_ (let () (declare (not safe)) (##length _g160283_))))
          (cond ((let () (declare (not safe)) (##fx= _g160282_ 1))
                 (apply (lambda (_srcpath160165_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath160165_)))
                        _g160283_))
                ((let () (declare (not safe)) (##fx= _g160282_ 2))
                 (apply (lambda (_srcpath160169_ _opts160170_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath160169_
                             _opts160170_)))
                        _g160283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g160283_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath160122_ _opts160123_)
        (if (let () (declare (not safe)) (string? _srcpath160122_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160122_)))
        (let ((_outdir160125_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160123_)))
              (_invoke-gsc?160126_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160123_)))
              (_gsc-options160127_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160123_)))
              (_keep-scm?160128_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160123_)))
              (_verbosity160129_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160123_)))
              (_debug160130_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160123_))))
          (if _outdir160125_
              (let ((__tmp160284
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160125_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160284))
              '#!void)
          (let ((__tmp160288
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath160122_))
                   (let ((__tmp160289
                          (let ((__tmp160290
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160122_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160290))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160289
                      _opts160123_))))
                (__tmp160287
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160285
                 (let ((__tmp160286
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160122_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160286))))
            (declare (not safe))
            (call-with-parameters
             __tmp160288
             gxc#current-compile-output-dir
             _outdir160125_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160126_
             gxc#current-compile-gsc-options
             _gsc-options160127_
             gxc#current-compile-keep-scm
             _keep-scm?160128_
             gxc#current-compile-verbose
             _verbosity160129_
             gxc#current-compile-debug
             _debug160130_
             gxc#current-compile-timestamp
             __tmp160287
             gxc#current-compile-context
             __tmp160285
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath160138_)
        (let ((_opts160140_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath160138_ _opts160140_))))
    (define gxc#compile-exe
      (lambda _g160292_
        (let ((_g160291_ (let () (declare (not safe)) (##length _g160292_))))
          (cond ((let () (declare (not safe)) (##fx= _g160291_ 1))
                 (apply (lambda (_srcpath160138_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath160138_)))
                        _g160292_))
                ((let () (declare (not safe)) (##fx= _g160291_ 2))
                 (apply (lambda (_srcpath160142_ _opts160143_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath160142_ _opts160143_)))
                        _g160292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160292_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx160118_ _opts160119_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts160119_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx160118_
               _opts160119_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx160118_
               _opts160119_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx160001_ _opts160002_)
        (letrec ((_generate-stub160004_
                  (lambda (_builtin-modules160114_)
                    (let ((_mod-main160116_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx160001_ 'main))))
                      (write (let ((__tmp160293
                                    (let ((__tmp160294
                                           (let ((__tmp160295
                                                  (let ((__tmp160296
                                                         (let ((__tmp160298
                                                                (let ((__tmp160299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules160114_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160299)))
                       (__tmp160297
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160298 __tmp160297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160296))))
                                             (declare (not safe))
                                             (cons __tmp160295 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160294))))
                               (declare (not safe))
                               (cons 'define __tmp160293)))
                      (write (let ((__tmp160300
                                    (let ((__tmp160339
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160301
                                           (let ((__tmp160302
                                                  (let ((__tmp160303
                                                         (let ((__tmp160327
                                                                (let ((__tmp160328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160329
                                      (let ((__tmp160337
                                             (let ((__tmp160338
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp160338)))
                                            (__tmp160330
                                             (let ((__tmp160331
                                                    (let ((__tmp160332
                                                           (let ((__tmp160333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160334
                                 (let ((__tmp160335
                                        (let ((__tmp160336
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160336 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160335))))
                            (declare (not safe))
                            (cons __tmp160334 '()))))
                     (declare (not safe))
                     (cons _mod-main160116_ __tmp160333))))
              (declare (not safe))
              (cons 'apply __tmp160332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160331 '()))))
                                        (declare (not safe))
                                        (cons __tmp160337 __tmp160330))))
                                 (declare (not safe))
                                 (cons '() __tmp160329))))
                          (declare (not safe))
                          (cons 'lambda __tmp160328)))
                       (__tmp160304
                        (let ((__tmp160305
                               (let ((__tmp160306
                                      (let ((__tmp160307
                                             (let ((__tmp160318
                                                    (let ((__tmp160319
                                                           (let ((__tmp160320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160321
                                 (let ((__tmp160322
                                        (let ((__tmp160323
                                               (let ((__tmp160324
                                                      (let ((__tmp160325
                                                             (let ((__tmp160326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160326 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160324 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160323))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160322))))
                            (declare (not safe))
                            (cons __tmp160321 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160320))))
              (declare (not safe))
              (cons 'with-catch __tmp160319)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160308
                                                    (let ((__tmp160309
                                                           (let ((__tmp160310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160311
                                 (let ((__tmp160312
                                        (let ((__tmp160313
                                               (let ((__tmp160314
                                                      (let ((__tmp160315
                                                             (let ((__tmp160316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp160317
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160317 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160316))))
                (declare (not safe))
                (cons __tmp160315 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160314))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160313))))
                                   (declare (not safe))
                                   (cons __tmp160312 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160311))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160310))))
              (declare (not safe))
              (cons __tmp160309 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160318
                                                     __tmp160308))))
                                        (declare (not safe))
                                        (cons '() __tmp160307))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160306))))
                          (declare (not safe))
                          (cons __tmp160305 '()))))
                   (declare (not safe))
                   (cons __tmp160327 __tmp160304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160303))))
                                             (declare (not safe))
                                             (cons __tmp160302 '()))))
                                      (declare (not safe))
                                      (cons __tmp160339 __tmp160301))))
                               (declare (not safe))
                               (cons 'define __tmp160300)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts160005_
                  (lambda (_libgerbil160112_)
                    (call-with-input-file
                     (string-append _libgerbil160112_ '".ldd")
                     read)))
                 (_replace-extension160006_
                  (lambda (_path160109_ _ext160110_)
                    (string-append
                     (path-strip-extension _path160109_)
                     _ext160110_)))
                 (_not-exclude-module?160007_
                  (lambda (_ctx160105_)
                    (let ((_id-str160107_
                           (symbol->string
                            (##structure-ref
                             _ctx160105_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160341
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str160107_))))
                            (declare (not safe))
                            (not __tmp160341))
                          (let ((__tmp160340
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str160107_))))
                            (declare (not safe))
                            (not __tmp160340))
                          '#f))))
                 (_not-file-empty?160008_
                  (lambda (_path160103_)
                    (let ((__tmp160342
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path160103_))))
                      (declare (not safe))
                      (not __tmp160342))))
                 (_compile-stub160009_
                  (lambda (_output-scm160016_ _output-bin160017_)
                    (let* ((_gerbil-home160019_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir160021_
                            (path-expand '"lib" _gerbil-home160019_))
                           (_gerbil-staticdir160023_
                            (path-expand '"static" _gerbil-libdir160021_))
                           (_gxlink160025_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir160021_))
                           (_tmp160027_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path160031_
                            (lambda (_f160029_)
                              (path-expand
                               (path-strip-directory _f160029_)
                               _tmp160027_)))
                           (_deps160033_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx160001_)))
                           (_deps160035_
                            (filter _not-exclude-module?160007_ _deps160033_))
                           (_src-deps-scm160037_
                            (map gxc#find-static-module-file _deps160035_))
                           (_src-deps-scm160039_
                            (filter _not-file-empty?160008_
                                    _src-deps-scm160037_))
                           (_src-deps-scm160041_
                            (map path-expand _src-deps-scm160039_))
                           (_deps-scm160043_
                            (map _tmp-path160031_ _src-deps-scm160041_))
                           (_deps-c160049_
                            (map (lambda (_g160044160046_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160006_
                                      _g160044160046_
                                      '".c")))
                                 _deps-scm160043_))
                           (_deps-o160055_
                            (map (lambda (_g160050160052_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160006_
                                      _g160050160052_
                                      '".o")))
                                 _deps-scm160043_))
                           (_src-bin-scm160057_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx160001_)))
                           (_src-bin-scm160059_
                            (path-expand _src-bin-scm160057_))
                           (_bin-scm160061_
                            (let ()
                              (declare (not safe))
                              (_tmp-path160031_ _src-bin-scm160059_)))
                           (_bin-c160063_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160006_
                               _bin-scm160061_
                               '".c")))
                           (_bin-o160065_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160006_
                               _bin-scm160061_
                               '".o")))
                           (_output-bin160067_
                            (path-expand _output-bin160017_))
                           (_output-scm160069_
                            (path-expand _output-scm160016_))
                           (_output-c160071_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160006_
                               _output-scm160069_
                               '".c")))
                           (_output-o160073_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160006_
                               _output-scm160069_
                               '".o")))
                           (_output_-c160075_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160006_
                               _output-scm160069_
                               '"_.c")))
                           (_output_-o160077_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160006_
                               _output-scm160069_
                               '"_.o")))
                           (_gsc-link-opts160079_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts160081_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts160083_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir160023_)))
                           (_output-ld-opts160085_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a160087_
                            (path-expand '"libgerbil.a" _gerbil-libdir160021_))
                           (_libgerbil.so160089_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir160021_))
                           (_libgerbil-ld-opts160091_
                            (if (file-exists? _libgerbil.so160089_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts160005_
                                   _libgerbil.so160089_))
                                (if (file-exists? _libgerbil.a160087_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts160005_
                                       _libgerbil.a160087_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a160087_
                                       _libgerbil.so160089_)))))
                           (_rpath160093_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir160021_)))
                           (_builtin-modules160097_
                            (map (lambda (_mod160095_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod160095_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx160001_ _deps160035_)))))
                      (let ((__tmp160343
                             (lambda ()
                               (let ((__tmp160344
                                      (path-directory _output-bin160067_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160344)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160343))
                      (let ((__tmp160345
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub160004_
                                  _builtin-modules160097_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm160069_
                         __tmp160345))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160346
                                   (lambda () (create-directory _tmp160027_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160346))
                            (for-each
                             copy-file
                             _src-deps-scm160041_
                             _deps-scm160043_)
                            (copy-file _src-bin-scm160059_ _bin-scm160061_)
                            (let ((__tmp160354
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160347
                                   (let ((__tmp160348
                                          (let ((__tmp160349
                                                 (let ((__tmp160350
                                                        (let ((__tmp160351
                                                               (let ((__tmp160352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160353
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm160069_ '()))))
                                (declare (not safe))
                                (cons _bin-scm160061_ __tmp160353))))
                         (declare (not safe))
                         (foldr1 cons __tmp160352 _deps-scm160043_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160351 _gsc-link-opts160079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink160025_
                                                         __tmp160350))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160349))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160348))))
                              (declare (not safe))
                              (gxc#invoke __tmp160354 __tmp160347))
                            (let ((__tmp160362
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160355
                                   (let ((__tmp160356
                                          (let ((__tmp160357
                                                 (let ((__tmp160358
                                                        (let ((__tmp160359
                                                               (let ((__tmp160360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160361
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c160075_ '()))))
                                (declare (not safe))
                                (cons _output-c160071_ __tmp160361))))
                         (declare (not safe))
                         (cons _bin-c160063_ __tmp160360))))
                  (declare (not safe))
                  (foldr1 cons __tmp160359 _deps-c160049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160358
                                                           _gsc-static-opts160083_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160357
                                                    _gsc-cc-opts160081_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160356))))
                              (declare (not safe))
                              (gxc#invoke __tmp160362 __tmp160355))
                            (let ((__tmp160375
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160363
                                   (let ((__tmp160364
                                          (let ((__tmp160365
                                                 (let ((__tmp160366
                                                        (let ((__tmp160367
                                                               (let ((__tmp160368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160369
                                     (let ((__tmp160370
                                            (let ((__tmp160371
                                                   (let ((__tmp160372
                                                          (let ((__tmp160373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160374
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts160091_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160374))))
                    (declare (not safe))
                    (cons _gerbil-libdir160021_ __tmp160373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160372))))
                                              (declare (not safe))
                                              (cons _rpath160093_
                                                    __tmp160371))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160370
                                               _output-ld-opts160085_))))
                                (declare (not safe))
                                (cons _output_-o160077_ __tmp160369))))
                         (declare (not safe))
                         (cons _output-o160073_ __tmp160368))))
                  (declare (not safe))
                  (cons _bin-o160065_ __tmp160367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160366
                                                           _deps-o160055_))))
                                            (declare (not safe))
                                            (cons _output-bin160067_
                                                  __tmp160365))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160364))))
                              (declare (not safe))
                              (gxc#invoke __tmp160375 __tmp160363))
                            (for-each
                             delete-file
                             (let ((__tmp160376
                                    (let ((__tmp160377
                                           (let ((__tmp160378
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o160077_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o160073_
                                                   __tmp160378))))
                                      (declare (not safe))
                                      (cons _output_-c160075_ __tmp160377))))
                               (declare (not safe))
                               (cons _output-c160071_ __tmp160376)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp160027_)))
                          '#!void)))))
          (let* ((_output-bin160011_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx160001_ _opts160002_)))
                 (_output-scm160013_
                  (string-append _output-bin160011_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub160009_ _output-scm160013_ _output-bin160011_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm160013_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159826_ _opts159827_)
        (letrec ((_reset-declare159829_
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
                 (_generate-stub159830_
                  (lambda (_deps159992_)
                    (let ((_mod-main159994_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159826_ 'main)))
                          (_reset-decl159995_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159829_)))
                          (_user-decl159996_
                           (let ()
                             (declare (not safe))
                             (_user-declare159831_))))
                      (for-each
                       (lambda (_dep159998_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl159995_)
                         (newline)
                         (if _user-decl159996_
                             (begin (write _user-decl159996_) (newline))
                             '#!void)
                         (write (let ((__tmp160379
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep159998_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160379)))
                         (newline))
                       _deps159992_)
                      (write (let ((__tmp160380
                                    (let ((__tmp160393
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160381
                                           (let ((__tmp160389
                                                  (let ((__tmp160390
                                                         (let ((__tmp160391
                                                                (let ((__tmp160392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160392))))
                   (declare (not safe))
                   (cons __tmp160391 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160390)))
                                                 (__tmp160382
                                                  (let ((__tmp160383
                                                         (let ((__tmp160384
                                                                (let ((__tmp160385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160386
                                      (let ((__tmp160387
                                             (let ((__tmp160388
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160388 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160387))))
                                 (declare (not safe))
                                 (cons __tmp160386 '()))))
                          (declare (not safe))
                          (cons _mod-main159994_ __tmp160385))))
                   (declare (not safe))
                   (cons 'apply __tmp160384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160383 '()))))
                                             (declare (not safe))
                                             (cons __tmp160389 __tmp160382))))
                                      (declare (not safe))
                                      (cons __tmp160393 __tmp160381))))
                               (declare (not safe))
                               (cons 'define __tmp160380)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159831_
                  (lambda ()
                    (let* ((_gsc-opts159897_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159827_)))
                           (_gsc-prelude159899_
                            (if _gsc-opts159897_
                                (member '"-prelude" _gsc-opts159897_)
                                '#f))
                           (_gsc-prelude159901_
                            (if _gsc-prelude159899_
                                (read (open-input-string
                                       (cadr _gsc-prelude159899_)))
                                '#f)))
                      (let _lp159904_ ((_rest159906_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159901_ '())))
                                       (_user-decls159907_ '()))
                        (let* ((_rest159908159916_ _rest159906_)
                               (_else159910159924_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159907_))
                                      '#f
                                      (let ((__tmp160394
                                             (reverse _user-decls159907_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160394)))))
                               (_K159912159980_
                                (lambda (_rest159927_ _expr159928_)
                                  (let* ((_expr159929159941_ _expr159928_)
                                         (_else159932159949_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159904_
                                               _rest159927_
                                               _user-decls159907_)))))
                                    (let ((_K159937159970_
                                           (lambda (_decls159968_)
                                             (let ((__tmp160395
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159907_
                                                              _decls159968_))))
                                               (declare (not safe))
                                               (_lp159904_
                                                _rest159927_
                                                __tmp160395))))
                                          (_K159934159955_
                                           (lambda (_exprs159953_)
                                             (let ((__tmp160396
                                                    (append _exprs159953_
                                                            _rest159927_)))
                                               (declare (not safe))
                                               (_lp159904_
                                                __tmp160396
                                                _user-decls159907_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159929159941_))
                                          (let ((_tl159939159975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159929159941_)))
                                                (_hd159938159973_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159929159941_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159938159973_
                                                         'declare))
                                                (let ((_decls159978_
                                                       _tl159939159975_))
                                                  (declare (not safe))
                                                  (_K159937159970_
                                                   _decls159978_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159938159973_
                                                             'begin))
                                                    (let ((_exprs159963_
                                                           _tl159939159975_))
                                                      (declare (not safe))
                                                      (_K159934159955_
                                                       _exprs159963_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159932159949_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159932159949_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159908159916_))
                              (let ((_hd159913159983_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159908159916_)))
                                    (_tl159914159985_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159908159916_))))
                                (let* ((_expr159988_ _hd159913159983_)
                                       (_rest159990_ _tl159914159985_))
                                  (declare (not safe))
                                  (_K159912159980_ _rest159990_ _expr159988_)))
                              (let ()
                                (declare (not safe))
                                (_else159910159924_))))))))
                 (_compile-stub159832_
                  (lambda (_output-scm159839_ _output-bin159840_)
                    (let* ((_gerbil-home159842_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159844_
                            (path-expand '"lib" _gerbil-home159842_))
                           (_runtime159846_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159848_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159842_))
                           (_include-gambit-sharp159850_
                            (string-append
                             '"(include \""
                             _gambit-sharp159848_
                             '"\")"))
                           (_bin-scm159852_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159826_)))
                           (_deps159854_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159826_)))
                           (_deps159856_
                            (map gxc#find-static-module-file _deps159854_))
                           (_deps159861_
                            (filter (lambda (_$obj159858_)
                                      (let ((__tmp160397
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159858_))))
                                        (declare (not safe))
                                        (not __tmp160397)))
                                    _deps159856_))
                           (_deps159865_
                            (filter (lambda (_f159863_)
                                      (let ((__tmp160398
                                             (member _f159863_
                                                     _runtime159846_)))
                                        (declare (not safe))
                                        (not __tmp160398)))
                                    _deps159861_))
                           (_output-base159867_
                            (string-append
                             (path-strip-extension _output-scm159839_)))
                           (_output-c159869_
                            (string-append _output-base159867_ '".c"))
                           (_output-o159871_
                            (string-append _output-base159867_ '".o"))
                           (_output-c_159873_
                            (string-append _output-base159867_ '"_.c"))
                           (_output-o_159875_
                            (string-append _output-base159867_ '"_.o"))
                           (_gsc-link-opts159877_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159879_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159881_
                            (let ((__tmp160399
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159844_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160399)))
                           (_output-ld-opts159883_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159885_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160401
                                       (let ((__tmp160402
                                              (let ((__tmp160403
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159850_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160403))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160402))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160401))
                                (let ((__tmp160400
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159850_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160400))))
                           (_gsc-link-opts159887_
                            (append _gsc-link-opts159877_
                                    _gsc-gx-macros159885_))
                           (_rpath159889_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159844_)))
                           (_default-ld-options159891_
                            (let ((__tmp160404
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160404))))
                      (let ((__tmp160405
                             (lambda ()
                               (let ((__tmp160406
                                      (path-directory _output-bin159840_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160406)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160405))
                      (let ((__tmp160407
                             (lambda ()
                               (let ((__tmp160408
                                      (let ((__tmp160409
                                             (let ((__tmp160410
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159852_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160410
                                                       _deps159865_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160409
                                                _runtime159846_))))
                                 (declare (not safe))
                                 (_generate-stub159830_ __tmp160408)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159839_
                         __tmp160407))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160416
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160411
                                   (let ((__tmp160412
                                          (let ((__tmp160413
                                                 (let ((__tmp160414
                                                        (let ((__tmp160415
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159839_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160415 _gsc-link-opts159887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159873_
                                                         __tmp160414))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160413))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160412))))
                              (declare (not safe))
                              (gxc#invoke __tmp160416 __tmp160411))
                            (let ((__tmp160422
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160417
                                   (let ((__tmp160418
                                          (let ((__tmp160419
                                                 (let ((__tmp160420
                                                        (let ((__tmp160421
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159873_ '()))))
                  (declare (not safe))
                  (cons _output-c159869_ __tmp160421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160420
                                                           _gsc-static-opts159881_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160419
                                                    _gsc-cc-opts159879_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160418))))
                              (declare (not safe))
                              (gxc#invoke __tmp160422 __tmp160417))
                            (let ((__tmp160432
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160423
                                   (let ((__tmp160424
                                          (let ((__tmp160425
                                                 (let ((__tmp160426
                                                        (let ((__tmp160427
                                                               (let ((__tmp160428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160429
                                     (let ((__tmp160430
                                            (let ((__tmp160431
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159891_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159844_
                                                    __tmp160431))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160430))))
                                (declare (not safe))
                                (cons _rpath159889_ __tmp160429))))
                         (declare (not safe))
                         (foldr1 cons __tmp160428 _output-ld-opts159883_))))
                  (declare (not safe))
                  (cons _output-o_159875_ __tmp160427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159871_
                                                         __tmp160426))))
                                            (declare (not safe))
                                            (cons _output-bin159840_
                                                  __tmp160425))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160424))))
                              (declare (not safe))
                              (gxc#invoke __tmp160432 __tmp160423)))
                          '#!void)))))
          (let* ((_output-bin159834_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159826_ _opts159827_)))
                 (_output-scm159836_
                  (string-append _output-bin159834_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159832_ _output-scm159836_ _output-bin159834_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159836_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159776_ _id159777_)
        (let ((_$e159823_
               (let ((__tmp160434
                      (lambda (_e159778159780_)
                        (let* ((_g159782159792_ _e159778159780_)
                               (_else159784159800_ (lambda () '#f))
                               (_K159786159804_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159782159792_
                                 'gx#module-export::t))
                              (let* ((_e159787159807_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159782159792_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159788159810_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159782159792_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159789159813_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159782159792_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159789159813_ '0))
                                    (let ((_e159790159816_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159782159792_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159818159820_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159818159820_
                                                    _id159777_)))
                                           _e159790159816_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159786159804_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159784159800_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159784159800_))))
                              (let ()
                                (declare (not safe))
                                (_else159784159800_))))))
                     (__tmp160433
                      (##structure-ref
                       _ctx159776_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160434 __tmp160433))))
          (if _$e159823_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159823_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159768_ _id159769_)
        (let ((_$e159771_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159768_ _id159769_))))
          (if _$e159771_
              ((lambda (_bind159774_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159774_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159769_)))
                 (##structure-ref _bind159774_ '1 gx#binding::t '#f))
               _$e159771_)
              (let ((__tmp160435
                     (##structure-ref
                      _ctx159768_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160435
                 _id159769_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159655_)
        (letrec* ((_ht159657_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159658_
                   (lambda (_in159720_ _phi159721_)
                     (let ((_iphi159723_
                            (fx+ _phi159721_
                                 (##direct-structure-ref
                                  _in159720_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159724_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159720_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159726_ ((_rest159728_ _imports159724_)
                                        (_r159729_ '()))
                         (let* ((_rest159730159738_ _rest159728_)
                                (_else159732159746_ (lambda () _r159729_))
                                (_K159734159756_
                                 (lambda (_rest159749_ _in159750_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159750_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159723_))
                                           (let ((__tmp160442
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159750_
                                                          _r159729_))))
                                             (declare (not safe))
                                             (_lp159726_
                                              _rest159749_
                                              __tmp160442))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159726_
                                              _rest159749_
                                              _r159729_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159750_
                                              'gx#module-import::t))
                                           (let ((_iphi159752_
                                                  (fx+ _phi159721_
                                                       (##direct-structure-ref
                                                        _in159750_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159752_))
                                                 (let ((__tmp160440
                                                        (let ((__tmp160441
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159750_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160441 _r159729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159726_
                                                    _rest159749_
                                                    __tmp160440))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159726_
                                                    _rest159749_
                                                    _r159729_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159750_
                                                  'gx#import-set::t))
                                               (let ((_xphi159754_
                                                      (fx+ _iphi159723_
                                                           (##direct-structure-ref
                                                            _in159750_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159754_))
                                                     (let ((__tmp160438
                                                            (let ((__tmp160439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159750_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160439 _r159729_))))
               (declare (not safe))
               (_lp159726_ _rest159749_ __tmp160438))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159754_)
                                                         (let ((__tmp160436
                                                                (let ((__tmp160437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159658_
                                  _in159750_
                                  _iphi159723_))))
                          (declare (not safe))
                          (foldl1 cons _r159729_ __tmp160437))))
                   (declare (not safe))
                   (_lp159726_ _rest159749_ __tmp160436))
                 (let ()
                   (declare (not safe))
                   (_lp159726_ _rest159749_ _r159729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159726_
                                                  _rest159749_
                                                  _r159729_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159730159738_))
                               (let ((_hd159735159759_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159730159738_)))
                                     (_tl159736159761_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159730159738_))))
                                 (let* ((_in159764_ _hd159735159759_)
                                        (_rest159766_ _tl159736159761_))
                                   (declare (not safe))
                                   (_K159734159756_ _rest159766_ _in159764_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159732159746_))))))))
                  (_find-deps159659_
                   (lambda (_rest159666_ _deps159667_)
                     (let* ((_rest159668159676_ _rest159666_)
                            (_else159670159684_ (lambda () _deps159667_))
                            (_K159672159708_
                             (lambda (_rest159687_ _hd159688_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159688_
                                      'gx#module-context::t))
                                   (let ((_id159690_
                                          (##structure-ref
                                           _hd159688_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159691_
                                          (##structure-ref
                                           _hd159688_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159657_ _id159690_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159659_
                                            _rest159687_
                                            _deps159667_))
                                         (let ((_$e159693_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159688_))))
                                           (if _$e159693_
                                               ((lambda (_pre159696_)
                                                  (let ((_xdeps159698_
                                                         (let ((__tmp160455
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159696_ _imports159691_))))
                   (declare (not safe))
                   (_find-deps159659_ __tmp160455 _deps159667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159657_
                                                       _id159690_
                                                       _hd159688_))
                                                    (let ((__tmp160456
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159698_))))
              (declare (not safe))
              (_find-deps159659_ _rest159687_ __tmp160456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159693_)
                                               (let ((_xdeps159700_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159659_
                                                         _imports159691_
                                                         _deps159667_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159657_
                                                    _id159690_
                                                    _hd159688_))
                                                 (let ((__tmp160454
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159688_
                                                                _xdeps159700_))))
                                                   (declare (not safe))
                                                   (_find-deps159659_
                                                    _rest159687_
                                                    __tmp160454)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159688_
                                          'gx#prelude-context::t))
                                       (let ((_id159702_
                                              (##structure-ref
                                               _hd159688_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159657_
                                                _id159702_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159659_
                                                _rest159687_
                                                _deps159667_))
                                             (let ((_xdeps159704_
                                                    (let ((__tmp160452
                                                           (##structure-ref
                                                            _hd159688_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159659_
                                                       __tmp160452
                                                       _deps159667_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159657_
                                                      _id159702_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159659_
                                                      _rest159687_
                                                      _xdeps159704_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159657_
                                                        _id159702_
                                                        _hd159688_))
                                                     (let ((__tmp160453
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159704_))))
               (declare (not safe))
               (_find-deps159659_ _rest159687_ __tmp160453)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159688_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160451
                                                      (##direct-structure-ref
                                                       _hd159688_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160451))
                                               (let ((__tmp160449
                                                      (let ((__tmp160450
                                                             (##direct-structure-ref
                                                              _hd159688_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160450
                                                              _rest159687_))))
                                                 (declare (not safe))
                                                 (_find-deps159659_
                                                  __tmp160449
                                                  _deps159667_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159659_
                                                  _rest159687_
                                                  _deps159667_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159688_
                                                  'gx#module-export::t))
                                               (let ((__tmp160447
                                                      (let ((__tmp160448
                                                             (##direct-structure-ref
                                                              _hd159688_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160448
                                                              _rest159687_))))
                                                 (declare (not safe))
                                                 (_find-deps159659_
                                                  __tmp160447
                                                  _deps159667_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159688_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160446
                                                              (##direct-structure-ref
                                                               _hd159688_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160446))
                                                       (let ((__tmp160444
                                                              (let ((__tmp160445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159688_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160445 _rest159687_))))
                 (declare (not safe))
                 (_find-deps159659_ __tmp160444 _deps159667_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159688_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159706_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159658_ _hd159688_ '0)))
                          (__tmp160443
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159687_ _xdeps159706_))))
                     (declare (not safe))
                     (_find-deps159659_ __tmp160443 _deps159667_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159659_ _rest159687_ _deps159667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159688_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159668159676_))
                           (let ((_hd159673159711_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159668159676_)))
                                 (_tl159674159713_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159668159676_))))
                             (let* ((_hd159716_ _hd159673159711_)
                                    (_rest159718_ _tl159674159713_))
                               (declare (not safe))
                               (_K159672159708_ _rest159718_ _hd159716_)))
                           (let ()
                             (declare (not safe))
                             (_else159670159684_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160457
                                  (let ((_$e159661_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159655_))))
                                    (if _$e159661_
                                        ((lambda (_pre159664_)
                                           (let ((__tmp160458
                                                  (##structure-ref
                                                   _ctx159655_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159664_ __tmp160458)))
                                         _$e159661_)
                                        (##structure-ref
                                         _ctx159655_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159659_ __tmp160457 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159586_)
        (let* ((_context-id159588_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159586_
                       'gx#module-context::t))
                    (##structure-ref _ctx159586_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159586_)))
               (_scm159590_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159588_))
                 '".scm"))
               (_dirs159592_ (let () (declare (not safe)) (load-path)))
               (_dirs159598_
                (let ((_user-libpath159594_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159594_
                      (let ((_user-libpath159596_
                             (path-expand '"lib" _user-libpath159594_)))
                        (if (member _user-libpath159596_ _dirs159592_)
                            _dirs159592_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159596_ _dirs159592_))))
                      _dirs159592_)))
               (_dirs159607_
                (let ((_$e159600_ (gxc#current-compile-output-dir)))
                  (if _$e159600_
                      ((lambda (_g159602159604_)
                         (let ()
                           (declare (not safe))
                           (cons _g159602159604_ _dirs159598_)))
                       _$e159600_)
                      _dirs159598_)))
               (_dirs159613_
                (map (lambda (_g159608159610_)
                       (path-expand '"static" _g159608159610_))
                     _dirs159607_)))
          (let _lp159616_ ((_rest159618_ _dirs159613_))
            (let* ((_rest159619159627_ _rest159618_)
                   (_else159621159635_
                    (lambda ()
                      (let ((__tmp160459
                             (##structure-ref
                              _ctx159586_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160459
                         _scm159590_))))
                   (_K159623159643_
                    (lambda (_rest159638_ _dir159639_)
                      (let ((_path159641_
                             (path-expand _scm159590_ _dir159639_)))
                        (if (file-exists? _path159641_)
                            _path159641_
                            (let ()
                              (declare (not safe))
                              (_lp159616_ _rest159638_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159619159627_))
                  (let ((_hd159624159646_
                         (let ()
                           (declare (not safe))
                           (##car _rest159619159627_)))
                        (_tl159625159648_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159619159627_))))
                    (let* ((_dir159651_ _hd159624159646_)
                           (_rest159653_ _tl159625159648_))
                      (declare (not safe))
                      (_K159623159643_ _rest159653_ _dir159651_)))
                  (let () (declare (not safe)) (_else159621159635_))))))))
    (define gxc#file-empty?
      (lambda (_path159584_)
        (let ((__tmp160460 (file-info-size (file-info _path159584_ '#t))))
          (declare (not safe))
          (zero? __tmp160460))))
    (define gxc#compile-top-module
      (lambda (_ctx159573_)
        (let ((__tmp160464
               (lambda ()
                 (let ((__tmp160465
                        (##structure-ref
                         _ctx159573_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160465))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160466
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159573_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160466))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159573_))
                 (if (let ((__tmp160469
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159573_))))
                       (declare (not safe))
                       (null? __tmp160469))
                     (let* ((_thr1159578_
                             (let ((__tmp160467
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159573_)))))
                               (declare (not safe))
                               (spawn __tmp160467)))
                            (_thr2159581_
                             (let ((__tmp160468
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159573_)))))
                               (declare (not safe))
                               (spawn __tmp160468))))
                       (let () (declare (not safe)) (gxc#join! _thr1159578_))
                       (let () (declare (not safe)) (gxc#join! _thr2159581_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159573_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159573_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159573_))
                     '#!void)))
              (__tmp160463
               (let ((__obj160271
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj160271)
                 __obj160271))
              (__tmp160462 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160461 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160464
           gx#current-expander-context
           _ctx159573_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160463
           gxc#current-compile-runtime-sections
           __tmp160462
           gxc#current-compile-runtime-names
           __tmp160461))))
    (define gxc#collect-bindings
      (lambda (_ctx159571_)
        (let ((__tmp160470
               (##structure-ref _ctx159571_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160470))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159517_)
        (letrec ((_compile1159519_
                  (lambda (_ctx159560_)
                    (let* ((_code159562_
                            (##structure-ref
                             _ctx159560_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159566_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159562_))
                                (let ((_idstr159564_
                                       (let ((__tmp160471
                                              (##structure-ref
                                               _ctx159560_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160471))))
                                  (string-append _idstr159564_ '"~0"))
                                '#f)))
                      (if _rt159566_
                          (begin
                            (let ((__tmp160472
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160472 _ctx159560_ _rt159566_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159521_
                               _ctx159560_
                               _code159562_)))
                          (let ((_path159569_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159560_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159569_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159522_
                         _ctx159560_
                         _code159562_
                         _rt159566_)))))
                 (_context-timestamp159520_
                  (lambda (_ctx159558_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159558_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159521_
                  (lambda (_ctx159540_ _code159541_)
                    (let* ((_lifts159543_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159546_
                            (let ((__tmp160475
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159541_))))
                                  (__tmp160474
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160473
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160475
                               gx#current-expander-context
                               _ctx159540_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159543_
                               gxc#current-compile-marks
                               __tmp160474
                               gxc#current-compile-identifiers
                               __tmp160473)))
                           (_runtime-code159548_
                            (if (let ((__tmp160479 (unbox _lifts159543_)))
                                  (declare (not safe))
                                  (null? __tmp160479))
                                _runtime-code159546_
                                (let ((__tmp160476
                                       (let ((__tmp160478
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159546_
                                                      '())))
                                             (__tmp160477
                                              (reverse (unbox _lifts159543_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160478
                                                 __tmp160477))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160476))))
                           (_runtime-code159550_
                            (let ((__tmp160480
                                   (let ((__tmp160482
                                          (let ((__tmp160483
                                                 (let ((__tmp160486
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159520_
                                                           _ctx159540_)))
                                                       (__tmp160484
                                                        (let ((__tmp160485
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160485
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160486
                                                         __tmp160484))))
                                            (declare (not safe))
                                            (cons 'define __tmp160483)))
                                         (__tmp160481
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159548_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160482 __tmp160481))))
                              (declare (not safe))
                              (cons 'begin __tmp160480)))
                           (_scm0159552_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159540_
                               '0
                               '".scm"))))
                      (let ((_scms159555_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159540_))))
                        (let ((__tmp160487
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159552_
                                    _runtime-code159550_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160487
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159555_)
                            (delete-file _scms159555_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159552_
                           '" => "
                           _scms159555_))
                        (copy-file _scm0159552_ _scms159555_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159552_))))))
                 (_generate-loader-code159522_
                  (lambda (_ctx159529_ _code159530_ _rt159531_)
                    (let* ((_loader-code159534_
                            (let ((__tmp160488
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159530_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160488
                               gx#current-expander-context
                               _ctx159529_)))
                           (_loader-code159536_
                            (if _rt159531_
                                (let ((__tmp160489
                                       (let ((__tmp160490
                                              (let ((__tmp160491
                                                     (let ((__tmp160492
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160491 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159534_
                                               __tmp160490))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160489))
                                _loader-code159534_)))
                      (let ((__tmp160493
                             (lambda ()
                               (let ((__tmp160494
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159529_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160494
                                  _loader-code159536_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160493
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159524_
                 (let ((__tmp160495
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159517_))))
                   (declare (not safe))
                   (cons _ctx159517_ __tmp160495))))
            (for-each
             (lambda (_ctx159526_)
               (let ((__tmp160496
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159519_ _ctx159526_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160496
                  gxc#current-compile-decls
                  '())))
             _all-modules159524_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159414_)
        (letrec ((_compile-ssi159416_
                  (lambda (_code159487_)
                    (let* ((_path159489_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159414_
                               '#f
                               '".ssi")))
                           (_prelude159500_
                            (let* ((_super159491_
                                    (##structure-ref
                                     _ctx159414_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159493_
                                    (##structure-ref
                                     _super159491_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159493_
                                  ((lambda (_g159495159497_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159495159497_)))
                                   _$e159493_)
                                  ':<root>)))
                           (_ns159502_
                            (##structure-ref
                             _ctx159414_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159504_
                            (symbol->string
                             (##structure-ref
                              _ctx159414_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159511_
                            (let ((_$e159506_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159504_ '#\/))))
                              (if _$e159506_
                                  ((lambda (_x159509_)
                                     (string->symbol
                                      (substring _idstr159504_ '0 _x159509_)))
                                   _$e159506_)
                                  '#f)))
                           (_rt159513_
                            (let ((__tmp160497
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160497 _ctx159414_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159489_))
                      (let ((__tmp160498
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159500_))
                               (if _pkg159511_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159511_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159502_))
                               (newline)
                               (pretty-print _code159487_)
                               (if _rt159513_
                                   (pretty-print
                                    (let ((__tmp160499
                                           (let ((__tmp160503
                                                  (let ((__tmp160504
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160504)))
                                                 (__tmp160500
                                                  (let ((__tmp160501
                                                         (let ((__tmp160502
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159513_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160501 '()))))
                                             (declare (not safe))
                                             (cons __tmp160503 __tmp160500))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160499)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159489_
                         __tmp160498)))))
                 (_compile-phi159417_
                  (lambda (_part159427_)
                    (let* ((_part159428159441_ _part159427_)
                           (_E159430159445_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159428159441_))))
                           (_K159431159456_
                            (lambda (_code159448_
                                     _n159449_
                                     _phi159450_
                                     _phi-ctx159451_)
                              (let* ((_code159454_
                                      (let ((__tmp160505
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159448_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160505
                                         gx#current-expander-context
                                         _phi-ctx159451_
                                         gx#current-expander-phi
                                         _phi159450_)))
                                     (__tmp160506
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159414_
                                         _n159449_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160506
                                 _code159454_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159428159441_))
                          (let ((_hd159432159459_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159428159441_)))
                                (_tl159433159461_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159428159441_))))
                            (let ((_phi-ctx159464_ _hd159432159459_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159433159461_))
                                  (let ((_hd159434159466_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159433159461_)))
                                        (_tl159435159468_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159433159461_))))
                                    (let ((_phi159471_ _hd159434159466_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159435159468_))
                                          (let ((_hd159436159473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159435159468_)))
                                                (_tl159437159475_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159435159468_))))
                                            (let ((_n159478_ _hd159436159473_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159437159475_))
                                                  (let ((_hd159438159480_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159437159475_)))
                                                        (_tl159439159482_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159437159475_))))
                                                    (let ((_code159485_
                                                           _hd159438159480_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159439159482_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159431159456_
                                                             _code159485_
                                                             _n159478_
                                                             _phi159471_
                                                             _phi-ctx159464_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159430159445_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159430159445_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159430159445_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159430159445_)))))
                          (let () (declare (not safe)) (_E159430159445_)))))))
          (let ((_g160507_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159414_))))
            (begin
              (let ((_g160508_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160507_)
                           (##vector-length _g160507_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160508_ 2)))
                    (error "Context expects 2 values" _g160508_)))
              (let ((_ssi-code159419_
                     (let () (declare (not safe)) (##vector-ref _g160507_ 0)))
                    (_phi-code159420_
                     (let () (declare (not safe)) (##vector-ref _g160507_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159416_ _ssi-code159419_))
                  (let ((_threads159425_
                         (map (lambda (_code159422_)
                                (let ((__tmp160509
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159417_
                                            _code159422_)))))
                                  (declare (not safe))
                                  (spawn __tmp160509)))
                              _phi-code159420_)))
                    (for-each gxc#join! _threads159425_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159397_)
        (let* ((_path159399_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159397_ '#f '".ssxi.ss")))
               (_code159401_
                (let ((__tmp160510
                       (##structure-ref
                        _ctx159397_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160510)))
               (_idstr159403_
                (symbol->string
                 (##structure-ref _ctx159397_ '1 gx#expander-context::t '#f)))
               (_pkg159410_
                (let ((_$e159405_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159403_ '#\/))))
                  (if _$e159405_
                      ((lambda (_x159408_)
                         (string->symbol
                          (substring _idstr159403_ '0 _x159408_)))
                       _$e159405_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159399_))
          (let ((__tmp160511
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159410_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159410_))
                       '#!void)
                   (newline)
                   (pretty-print _code159401_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159399_ __tmp160511)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159390_)
        (let* ((_state159392_
                (let ((__obj160272
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj160272 _ctx159390_)
                  __obj160272))
               (_ssi-code159394_
                (let ((__tmp160512
                       (##structure-ref
                        _ctx159390_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160512
                   'state:
                   _state159392_))))
          (values _ssi-code159394_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159392_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159383_)
        (let ((_lifts159385_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160515
                 (lambda ()
                   (let ((_code159388_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159383_))))
                     (if (let ((__tmp160519 (unbox _lifts159385_)))
                           (declare (not safe))
                           (null? __tmp160519))
                         _code159388_
                         (let ((__tmp160516
                                (let ((__tmp160518
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159388_ '())))
                                      (__tmp160517
                                       (reverse (unbox _lifts159385_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160518 __tmp160517))))
                           (declare (not safe))
                           (cons 'begin __tmp160516))))))
                (__tmp160514
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160513
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160515
             gxc#current-compile-lift
             _lifts159385_
             gxc#current-compile-marks
             __tmp160514
             gxc#current-compile-identifiers
             __tmp160513)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159379_)
        (let ((_modules159381_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160520
                 (##structure-ref _ctx159379_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160520 'modules: _modules159381_))
          (reverse (unbox _modules159381_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159362_ _code159363_ _phi?159364_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159362_))
        (let ((__tmp160521
               (lambda ()
                 (pretty-print
                  (let ((__tmp160522
                         (let ((__tmp160529
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160523
                                (let ((__tmp160528
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160524
                                       (let ((__tmp160527
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160525
                                              (let ((__tmp160526
                                                     (if _phi?159364_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160526))))
                                         (declare (not safe))
                                         (cons __tmp160527 __tmp160525))))
                                  (declare (not safe))
                                  (cons __tmp160528 __tmp160524))))
                           (declare (not safe))
                           (cons __tmp160529 __tmp160523))))
                    (declare (not safe))
                    (cons 'declare __tmp160522)))
                 (pretty-print _code159363_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159362_ __tmp160521))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159362_ _phi?159364_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159362_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159370_ _code159371_)
        (let ((_phi?159373_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159370_ _code159371_ _phi?159373_))))
    (define gxc#compile-scm-file
      (lambda _g160531_
        (let ((_g160530_ (let () (declare (not safe)) (##length _g160531_))))
          (cond ((let () (declare (not safe)) (##fx= _g160530_ 2))
                 (apply (lambda (_path159370_ _code159371_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159370_
                             _code159371_)))
                        _g160531_))
                ((let () (declare (not safe)) (##fx= _g160530_ 3))
                 (apply (lambda (_path159375_ _code159376_ _phi?159377_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159375_
                             _code159376_
                             _phi?159377_)))
                        _g160531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160531_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?159263_)
        (let _lp159265_ ((_rest159267_ (gxc#current-compile-gsc-options))
                         (_opts159268_ '()))
          (let* ((_rest159269159289_ _rest159267_)
                 (_else159273159297_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159263_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160532
                               (let ((__tmp160533 (reverse _opts159268_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160533))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160532))
                        (reverse _opts159268_)))))
            (let ((_K159283159340_
                   (lambda (_rest159338_)
                     (let ()
                       (declare (not safe))
                       (_lp159265_ _rest159338_ _opts159268_))))
                  (_K159278159322_
                   (lambda (_rest159320_)
                     (let ()
                       (declare (not safe))
                       (_lp159265_ _rest159320_ _opts159268_))))
                  (_K159275159304_
                   (lambda (_rest159301_ _opt159302_)
                     (let ((__tmp160534
                            (let ()
                              (declare (not safe))
                              (cons _opt159302_ _opts159268_))))
                       (declare (not safe))
                       (_lp159265_ _rest159301_ __tmp160534)))))
              (if (let () (declare (not safe)) (##pair? _rest159269159289_))
                  (let ((_tl159285159345_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159269159289_)))
                        (_hd159284159343_
                         (let ()
                           (declare (not safe))
                           (##car _rest159269159289_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159284159343_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159285159345_))
                            (let* ((_tl159287159348_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159285159345_)))
                                   (_rest159351_ _tl159287159348_))
                              (declare (not safe))
                              (_K159283159340_ _rest159351_))
                            (let ((_opt159312_ _hd159284159343_)
                                  (_rest159314_ _tl159285159345_))
                              (let ()
                                (declare (not safe))
                                (_K159275159304_ _rest159314_ _opt159312_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159284159343_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159285159345_))
                                (let* ((_tl159282159330_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159285159345_)))
                                       (_rest159333_ _tl159282159330_))
                                  (declare (not safe))
                                  (_K159278159322_ _rest159333_))
                                (let ((_opt159312_ _hd159284159343_)
                                      (_rest159314_ _tl159285159345_))
                                  (let ()
                                    (declare (not safe))
                                    (_K159275159304_
                                     _rest159314_
                                     _opt159312_))))
                            (let ((_opt159312_ _hd159284159343_)
                                  (_rest159314_ _tl159285159345_))
                              (let ()
                                (declare (not safe))
                                (_K159275159304_ _rest159314_ _opt159312_))))))
                  (let () (declare (not safe)) (_else159273159297_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159357_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159357_))))
    (define gxc#gsc-link-options
      (lambda _g160536_
        (let ((_g160535_ (let () (declare (not safe)) (##length _g160536_))))
          (cond ((let () (declare (not safe)) (##fx= _g160535_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160536_))
                ((let () (declare (not safe)) (##fx= _g160535_ 1))
                 (apply (lambda (_phi?159359_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159359_)))
                        _g160536_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160536_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?159164_)
        (let _lp159166_ ((_rest159168_ (gxc#current-compile-gsc-options))
                         (_opts159169_ '()))
          (let* ((_rest159170159190_ _rest159168_)
                 (_else159174159198_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159164_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160537
                               (let ((__tmp160538 (reverse _opts159169_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160538))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160537))
                        (reverse _opts159169_)))))
            (let ((_K159184159237_
                   (lambda (_rest159234_ _opt159235_)
                     (let ((__tmp160539
                            (let ((__tmp160540
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts159169_))))
                              (declare (not safe))
                              (cons _opt159235_ __tmp160540))))
                       (declare (not safe))
                       (_lp159166_ _rest159234_ __tmp160539))))
                  (_K159179159218_
                   (lambda (_rest159216_)
                     (let ()
                       (declare (not safe))
                       (_lp159166_ _rest159216_ _opts159169_))))
                  (_K159176159204_
                   (lambda (_rest159202_)
                     (let ()
                       (declare (not safe))
                       (_lp159166_ _rest159202_ _opts159169_)))))
              (if (let () (declare (not safe)) (##pair? _rest159170159190_))
                  (let ((_tl159186159242_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159170159190_)))
                        (_hd159185159240_
                         (let ()
                           (declare (not safe))
                           (##car _rest159170159190_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159185159240_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159186159242_))
                            (let ((_tl159188159247_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl159186159242_)))
                                  (_hd159187159245_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl159186159242_))))
                              (let ((_opt159250_ _hd159187159245_)
                                    (_rest159252_ _tl159188159247_))
                                (let ()
                                  (declare (not safe))
                                  (_K159184159237_ _rest159252_ _opt159250_))))
                            (let ((_rest159210_ _tl159186159242_))
                              (declare (not safe))
                              (_K159176159204_ _rest159210_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159185159240_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159186159242_))
                                (let* ((_tl159183159226_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159186159242_)))
                                       (_rest159229_ _tl159183159226_))
                                  (declare (not safe))
                                  (_K159179159218_ _rest159229_))
                                (let ((_rest159210_ _tl159186159242_))
                                  (declare (not safe))
                                  (_K159176159204_ _rest159210_)))
                            (let ((_rest159210_ _tl159186159242_))
                              (declare (not safe))
                              (_K159176159204_ _rest159210_)))))
                  (let () (declare (not safe)) (_else159174159198_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?159258_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?159258_))))
    (define gxc#gsc-cc-options
      (lambda _g160542_
        (let ((_g160541_ (let () (declare (not safe)) (##length _g160542_))))
          (cond ((let () (declare (not safe)) (##fx= _g160541_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160542_))
                ((let () (declare (not safe)) (##fx= _g160541_ 1))
                 (apply (lambda (_phi?159260_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?159260_)))
                        _g160542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160542_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir159159_)
        (let* ((_user-staticdir159161_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160543
                (let ((__tmp160544
                       (string-append
                        '"-I "
                        _staticdir159159_
                        '" -I "
                        _user-staticdir159161_)))
                  (declare (not safe))
                  (cons __tmp160544 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160543))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp159071_ ((_rest159073_ (gxc#current-compile-gsc-options))
                         (_opts159074_ '()))
          (let* ((_rest159075159095_ _rest159073_)
                 (_else159079159103_ (lambda () _opts159074_)))
            (let ((_K159089159146_
                   (lambda (_rest159144_)
                     (let ()
                       (declare (not safe))
                       (_lp159071_ _rest159144_ _opts159074_))))
                  (_K159084159124_
                   (lambda (_rest159121_ _opt159122_)
                     (let ((__tmp160545
                            (append _opts159074_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt159122_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp159071_ _rest159121_ __tmp160545))))
                  (_K159081159109_
                   (lambda (_rest159107_)
                     (let ()
                       (declare (not safe))
                       (_lp159071_ _rest159107_ _opts159074_)))))
              (if (let () (declare (not safe)) (##pair? _rest159075159095_))
                  (let ((_tl159091159151_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159075159095_)))
                        (_hd159090159149_
                         (let ()
                           (declare (not safe))
                           (##car _rest159075159095_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159090159149_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159091159151_))
                            (let* ((_tl159093159154_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159091159151_)))
                                   (_rest159157_ _tl159093159154_))
                              (declare (not safe))
                              (_K159089159146_ _rest159157_))
                            (let ((_rest159115_ _tl159091159151_))
                              (declare (not safe))
                              (_K159081159109_ _rest159115_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159090159149_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159091159151_))
                                (let ((_tl159088159134_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl159091159151_)))
                                      (_hd159087159132_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl159091159151_))))
                                  (let ((_opt159137_ _hd159087159132_)
                                        (_rest159139_ _tl159088159134_))
                                    (let ()
                                      (declare (not safe))
                                      (_K159084159124_
                                       _rest159139_
                                       _opt159137_))))
                                (let ((_rest159115_ _tl159091159151_))
                                  (declare (not safe))
                                  (_K159081159109_ _rest159115_)))
                            (let ((_rest159115_ _tl159091159151_))
                              (declare (not safe))
                              (_K159081159109_ _rest159115_)))))
                  (let () (declare (not safe)) (_else159079159103_))))))))
    (define gxc#not-string-empty?
      (lambda (_str159068_)
        (let ((__tmp160546
               (let () (declare (not safe)) (string-empty? _str159068_))))
          (declare (not safe))
          (not __tmp160546))))
    (define gxc#gsc-compile-file
      (lambda (_path159036_ _phi?159037_)
        (letrec ((_gsc-link-path159039_
                  (lambda (_base-path159060_)
                    (let _lp159062_ ((_n159064_ '1))
                      (let ((_path159066_
                             (string-append
                              _base-path159060_
                              '".o"
                              (number->string _n159064_))))
                        (if (file-exists? _path159066_)
                            (let ((__tmp160547
                                   (let ()
                                     (declare (not safe))
                                     (+ _n159064_ '1))))
                              (declare (not safe))
                              (_lp159062_ __tmp160547))
                            _path159066_))))))
          (let* ((_base-path159041_ (path-strip-extension _path159036_))
                 (_path-c159043_ (string-append _base-path159041_ '".c"))
                 (_path-o159045_ (string-append _base-path159041_ '".o"))
                 (_link-path159047_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path159039_ _base-path159041_)))
                 (_link-path-c159049_ (string-append _link-path159047_ '".c"))
                 (_link-path-o159051_ (string-append _link-path159047_ '".o"))
                 (_gsc-link-opts159053_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?159037_)))
                 (_gsc-cc-opts159055_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?159037_)))
                 (_gcc-ld-opts159057_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160554 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160548
                   (let ((__tmp160549
                          (let ((__tmp160550
                                 (let ((__tmp160551
                                        (let ((__tmp160552
                                               (let ((__tmp160553
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path159036_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160553
                                                         _gsc-link-opts159053_))))
                                          (declare (not safe))
                                          (cons _link-path-c159049_
                                                __tmp160552))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160551))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160550))))
                     (declare (not safe))
                     (cons '"-link" __tmp160549))))
              (declare (not safe))
              (gxc#invoke __tmp160554 __tmp160548 'stdout-redirection: '#t))
            (let ((__tmp160561 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160555
                   (let ((__tmp160556
                          (let ((__tmp160557
                                 (let ((__tmp160558
                                        (let ((__tmp160559
                                               (let ((__tmp160560
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c159049_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c159043_
                                                       __tmp160560))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160559
                                                  _gsc-cc-opts159055_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160558))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160557))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160556))))
              (declare (not safe))
              (gxc#invoke __tmp160561 __tmp160555 'stdout-redirection: '#t))
            (let ((__tmp160567 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160562
                   (let ((__tmp160563
                          (let ((__tmp160564
                                 (let ((__tmp160565
                                        (let ((__tmp160566
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o159051_
                                                       _gcc-ld-opts159057_))))
                                          (declare (not safe))
                                          (cons _path-o159045_ __tmp160566))))
                                   (declare (not safe))
                                   (cons _link-path159047_ __tmp160565))))
                            (declare (not safe))
                            (cons '"-o" __tmp160564))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160563))))
              (declare (not safe))
              (gxc#invoke __tmp160567 __tmp160562))
            (for-each
             delete-file
             (let ((__tmp160568
                    (let ((__tmp160569
                           (let ((__tmp160570
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o159051_ '()))))
                             (declare (not safe))
                             (cons _link-path-c159049_ __tmp160570))))
                      (declare (not safe))
                      (cons _path-o159045_ __tmp160569))))
               (declare (not safe))
               (cons _path-c159043_ __tmp160568)))))))
    (define gxc#compile-output-file
      (lambda (_ctx159007_ _n159008_ _ext159009_)
        (letrec ((_module-relative-path159011_
                  (lambda (_ctx159034_)
                    (path-strip-directory
                     (let ((__tmp160571
                            (##structure-ref
                             _ctx159034_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160571)))))
                 (_module-source-directory159012_
                  (lambda (_ctx159030_)
                    (path-directory
                     (let ((_mpath159032_
                            (##structure-ref
                             _ctx159030_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath159032_))
                           _mpath159032_
                           (last _mpath159032_))))))
                 (_section-string159013_
                  (lambda (_n159028_)
                    (if (let () (declare (not safe)) (number? _n159028_))
                        (number->string _n159028_)
                        (if (let () (declare (not safe)) (symbol? _n159028_))
                            (symbol->string _n159028_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n159028_))
                                _n159028_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n159028_)))))))
                 (_file-name159014_
                  (lambda (_path159026_)
                    (if _n159008_
                        (string-append
                         _path159026_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_section-string159013_ _n159008_))
                         _ext159009_)
                        (string-append _path159026_ _ext159009_))))
                 (_file-path159015_
                  (lambda ()
                    (let ((_$e159021_ (gxc#current-compile-output-dir)))
                      (if _$e159021_
                          ((lambda (_outdir159024_)
                             (path-expand
                              (let ((__tmp160573
                                     (let ((__tmp160574
                                            (##structure-ref
                                             _ctx159007_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160574))))
                                (declare (not safe))
                                (_file-name159014_ __tmp160573))
                              _outdir159024_))
                           _$e159021_)
                          (path-expand
                           (let ((__tmp160572
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path159011_
                                     _ctx159007_))))
                             (declare (not safe))
                             (_file-name159014_ __tmp160572))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory159012_
                              _ctx159007_))))))))
          (let ((_path159017_
                 (let () (declare (not safe)) (_file-path159015_))))
            (let ((__tmp160575
                   (lambda ()
                     (let ((__tmp160576 (path-directory _path159017_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160576)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160575))
            _path159017_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx158989_)
        (letrec ((_file-name158991_
                  (lambda (_id159005_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id159005_))
                     '".scm")))
                 (_file-path158992_
                  (lambda ()
                    (let* ((_file158998_
                            (let ((__tmp160577
                                   (##structure-ref
                                    _ctx158989_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name158991_ __tmp160577)))
                           (_$e159000_ (gxc#current-compile-output-dir)))
                      (if _$e159000_
                          ((lambda (_outdir159003_)
                             (path-expand
                              _file158998_
                              (path-expand '"static" _outdir159003_)))
                           _$e159000_)
                          (path-expand _file158998_ '"static"))))))
          (let ((_path158994_
                 (let () (declare (not safe)) (_file-path158992_))))
            (let ((__tmp160578
                   (lambda ()
                     (let ((__tmp160579 (path-directory _path158994_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160579)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160578))
            _path158994_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx158983_ _opts158984_)
        (let ((_$e158986_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts158984_))))
          (if _$e158986_
              (values _$e158986_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx158983_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr158976_)
        (if (let () (declare (not safe)) (string? _idstr158976_))
            (let* ((_str158978_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr158976_)))
                   (_strs158980_
                    (let ()
                      (declare (not safe))
                      (string-split _str158978_ '#\/))))
              (let () (declare (not safe)) (string-join _strs158980_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr158976_))
                (let ((__tmp160580 (symbol->string _idstr158976_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160580))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr158976_))))))
    (define gxc#invoke__%
      (lambda (_g160581_
               _stdout-redirection158937158941_
               _stderr-redirection158938158943_
               _program158945_
               _args158946_)
        (let* ((_stdout-redirection158948_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158937158941_ absent-value))
                    '#f
                    _stdout-redirection158937158941_))
               (_stderr-redirection158950_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158938158943_ absent-value))
                    '#f
                    _stderr-redirection158938158943_)))
          (let ((__tmp160582
                 (let ()
                   (declare (not safe))
                   (cons _program158945_ _args158946_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160582))
          (let* ((_proc158952_
                  (open-process
                   (let ((__tmp160583
                          (let ((__tmp160584
                                 (let ((__tmp160585
                                        (let ((__tmp160586
                                               (let ((__tmp160587
                                                      (let ((__tmp160588
                                                             (let ((__tmp160589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection158950_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160589))))
                (declare (not safe))
                (cons _stdout-redirection158948_ __tmp160588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160587))))
                                          (declare (not safe))
                                          (cons _args158946_ __tmp160586))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160585))))
                            (declare (not safe))
                            (cons _program158945_ __tmp160584))))
                     (declare (not safe))
                     (cons 'path: __tmp160583))))
                 (_output158957_
                  (if (or _stdout-redirection158948_
                          _stderr-redirection158950_)
                      (read-line _proc158952_ '#f)
                      '#f)))
            (let ((_status158960_ (process-status _proc158952_)))
              (close-port _proc158952_)
              (if (let () (declare (not safe)) (zero? _status158960_))
                  '#!void
                  (begin
                    (display _output158957_)
                    (let ((__tmp160590
                           (let ()
                             (declare (not safe))
                             (cons _program158945_ _args158946_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160590
                       _status158960_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158936158965_ . _args158967_)
        (apply gxc#invoke__%
               _keys158936158965_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158936158965_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158936158965_
                  'stderr-redirection:
                  absent-value))
               _args158967_)))
    (define gxc#invoke
      (lambda _args158939158973_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158939158973_)))
    (define gxc#join!
      (lambda (_thread158930_)
        (let ((__tmp160592
               (lambda (_exn158932_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158932_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158932_)))
                     (raise _exn158932_))))
              (__tmp160591 (lambda () (thread-join! _thread158930_))))
          (declare (not safe))
          (with-catch __tmp160592 __tmp160591))))))
