(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710943031)
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
      (lambda (_path160231_ _fun160232_)
        (with-output-to-file
         (let ((__tmp160325
                (let ()
                  (declare (not safe))
                  (cons _path160231_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp160325))
         _fun160232_)))
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
      (lambda (_gerbil-libdir160226_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir160226_)))
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
      (lambda (_dir160224_) (delete-file-or-directory _dir160224_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath160198_ _opts160199_)
        (if (let () (declare (not safe)) (string? _srcpath160198_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160198_)))
        (let ((_outdir160201_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160199_)))
              (_invoke-gsc?160202_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160199_)))
              (_gsc-options160203_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160199_)))
              (_keep-scm?160204_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160199_)))
              (_verbosity160205_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160199_)))
              (_optimize160206_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts160199_)))
              (_debug160207_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160199_)))
              (_gen-ssxi160208_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts160199_))))
          (if _outdir160201_
              (let ((__tmp160326
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160201_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160326))
              '#!void)
          (if _optimize160206_
              (let ((__tmp160327
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160327))
              '#!void)
          (let ((__tmp160331
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath160198_))
                   (let ((__tmp160332
                          (let ((__tmp160333
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160198_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160333))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp160332))))
                (__tmp160330
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160328
                 (let ((__tmp160329
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160198_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp160329))))
            (declare (not safe))
            (call-with-parameters
             __tmp160331
             gxc#current-compile-output-dir
             _outdir160201_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160202_
             gxc#current-compile-gsc-options
             _gsc-options160203_
             gxc#current-compile-keep-scm
             _keep-scm?160204_
             gxc#current-compile-verbose
             _verbosity160205_
             gxc#current-compile-optimize
             _optimize160206_
             gxc#current-compile-debug
             _debug160207_
             gxc#current-compile-generate-ssxi
             _gen-ssxi160208_
             gxc#current-compile-timestamp
             __tmp160330
             gxc#current-compile-context
             __tmp160328
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath160217_)
        (let ((_opts160219_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath160217_ _opts160219_))))
    (define gxc#compile-module
      (lambda _g160335_
        (let ((_g160334_ (let () (declare (not safe)) (##length _g160335_))))
          (cond ((let () (declare (not safe)) (##fx= _g160334_ 1))
                 (apply (lambda (_srcpath160217_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath160217_)))
                        _g160335_))
                ((let () (declare (not safe)) (##fx= _g160334_ 2))
                 (apply (lambda (_srcpath160221_ _opts160222_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath160221_
                             _opts160222_)))
                        _g160335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g160335_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath160174_ _opts160175_)
        (if (let () (declare (not safe)) (string? _srcpath160174_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath160174_)))
        (let ((_outdir160177_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts160175_)))
              (_invoke-gsc?160178_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts160175_)))
              (_gsc-options160179_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts160175_)))
              (_keep-scm?160180_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts160175_)))
              (_verbosity160181_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts160175_)))
              (_debug160182_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts160175_))))
          (if _outdir160177_
              (let ((__tmp160336
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir160177_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp160336))
              '#!void)
          (let ((__tmp160340
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath160174_))
                   (let ((__tmp160341
                          (let ((__tmp160342
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath160174_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp160342))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp160341
                      _opts160175_))))
                (__tmp160339
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp160337
                 (let ((__tmp160338
                        (let ()
                          (declare (not safe))
                          (cons _srcpath160174_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp160338))))
            (declare (not safe))
            (call-with-parameters
             __tmp160340
             gxc#current-compile-output-dir
             _outdir160177_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?160178_
             gxc#current-compile-gsc-options
             _gsc-options160179_
             gxc#current-compile-keep-scm
             _keep-scm?160180_
             gxc#current-compile-verbose
             _verbosity160181_
             gxc#current-compile-debug
             _debug160182_
             gxc#current-compile-timestamp
             __tmp160339
             gxc#current-compile-context
             __tmp160337
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath160190_)
        (let ((_opts160192_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath160190_ _opts160192_))))
    (define gxc#compile-exe
      (lambda _g160344_
        (let ((_g160343_ (let () (declare (not safe)) (##length _g160344_))))
          (cond ((let () (declare (not safe)) (##fx= _g160343_ 1))
                 (apply (lambda (_srcpath160190_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath160190_)))
                        _g160344_))
                ((let () (declare (not safe)) (##fx= _g160343_ 2))
                 (apply (lambda (_srcpath160194_ _opts160195_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath160194_ _opts160195_)))
                        _g160344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g160344_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx160170_ _opts160171_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts160171_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx160170_
               _opts160171_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx160170_
               _opts160171_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx160053_ _opts160054_)
        (letrec ((_generate-stub160056_
                  (lambda (_builtin-modules160166_)
                    (let ((_mod-main160168_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx160053_ 'main))))
                      (write (let ((__tmp160345
                                    (let ((__tmp160346
                                           (let ((__tmp160347
                                                  (let ((__tmp160348
                                                         (let ((__tmp160350
                                                                (let ((__tmp160351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules160166_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160351)))
                       (__tmp160349
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp160350 __tmp160349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp160348))))
                                             (declare (not safe))
                                             (cons __tmp160347 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp160346))))
                               (declare (not safe))
                               (cons 'define __tmp160345)))
                      (write (let ((__tmp160352
                                    (let ((__tmp160391
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160353
                                           (let ((__tmp160354
                                                  (let ((__tmp160355
                                                         (let ((__tmp160379
                                                                (let ((__tmp160380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160381
                                      (let ((__tmp160389
                                             (let ((__tmp160390
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
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
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp160388 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp160387))))
                            (declare (not safe))
                            (cons __tmp160386 '()))))
                     (declare (not safe))
                     (cons _mod-main160168_ __tmp160385))))
              (declare (not safe))
              (cons 'apply __tmp160384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160383 '()))))
                                        (declare (not safe))
                                        (cons __tmp160389 __tmp160382))))
                                 (declare (not safe))
                                 (cons '() __tmp160381))))
                          (declare (not safe))
                          (cons 'lambda __tmp160380)))
                       (__tmp160356
                        (let ((__tmp160357
                               (let ((__tmp160358
                                      (let ((__tmp160359
                                             (let ((__tmp160370
                                                    (let ((__tmp160371
                                                           (let ((__tmp160372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160373
                                 (let ((__tmp160374
                                        (let ((__tmp160375
                                               (let ((__tmp160376
                                                      (let ((__tmp160377
                                                             (let ((__tmp160378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp160378 '()))))
                (declare (not safe))
                (cons 'force-output __tmp160377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp160376 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp160375))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp160374))))
                            (declare (not safe))
                            (cons __tmp160373 '()))))
                     (declare (not safe))
                     (cons 'void __tmp160372))))
              (declare (not safe))
              (cons 'with-catch __tmp160371)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp160360
                                                    (let ((__tmp160361
                                                           (let ((__tmp160362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp160363
                                 (let ((__tmp160364
                                        (let ((__tmp160365
                                               (let ((__tmp160366
                                                      (let ((__tmp160367
                                                             (let ((__tmp160368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp160369
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp160369 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp160368))))
                (declare (not safe))
                (cons __tmp160367 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp160366))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp160365))))
                                   (declare (not safe))
                                   (cons __tmp160364 '()))))
                            (declare (not safe))
                            (cons 'void __tmp160363))))
                     (declare (not safe))
                     (cons 'with-catch __tmp160362))))
              (declare (not safe))
              (cons __tmp160361 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp160370
                                                     __tmp160360))))
                                        (declare (not safe))
                                        (cons '() __tmp160359))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp160358))))
                          (declare (not safe))
                          (cons __tmp160357 '()))))
                   (declare (not safe))
                   (cons __tmp160379 __tmp160356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp160355))))
                                             (declare (not safe))
                                             (cons __tmp160354 '()))))
                                      (declare (not safe))
                                      (cons __tmp160391 __tmp160353))))
                               (declare (not safe))
                               (cons 'define __tmp160352)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts160057_
                  (lambda (_libgerbil160164_)
                    (call-with-input-file
                     (string-append _libgerbil160164_ '".ldd")
                     read)))
                 (_replace-extension160058_
                  (lambda (_path160161_ _ext160162_)
                    (string-append
                     (path-strip-extension _path160161_)
                     _ext160162_)))
                 (_not-exclude-module?160059_
                  (lambda (_ctx160157_)
                    (let ((_id-str160159_
                           (symbol->string
                            (##structure-ref
                             _ctx160157_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp160393
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str160159_))))
                            (declare (not safe))
                            (not __tmp160393))
                          (let ((__tmp160392
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str160159_))))
                            (declare (not safe))
                            (not __tmp160392))
                          '#f))))
                 (_not-file-empty?160060_
                  (lambda (_path160155_)
                    (let ((__tmp160394
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path160155_))))
                      (declare (not safe))
                      (not __tmp160394))))
                 (_compile-stub160061_
                  (lambda (_output-scm160068_ _output-bin160069_)
                    (let* ((_gerbil-home160071_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir160073_
                            (path-expand '"lib" _gerbil-home160071_))
                           (_gerbil-staticdir160075_
                            (path-expand '"static" _gerbil-libdir160073_))
                           (_gxlink160077_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir160073_))
                           (_tmp160079_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path160083_
                            (lambda (_f160081_)
                              (path-expand
                               (path-strip-directory _f160081_)
                               _tmp160079_)))
                           (_deps160085_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx160053_)))
                           (_deps160087_
                            (filter _not-exclude-module?160059_ _deps160085_))
                           (_src-deps-scm160089_
                            (map gxc#find-static-module-file _deps160087_))
                           (_src-deps-scm160091_
                            (filter _not-file-empty?160060_
                                    _src-deps-scm160089_))
                           (_src-deps-scm160093_
                            (map path-expand _src-deps-scm160091_))
                           (_deps-scm160095_
                            (map _tmp-path160083_ _src-deps-scm160093_))
                           (_deps-c160101_
                            (map (lambda (_g160096160098_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160058_
                                      _g160096160098_
                                      '".c")))
                                 _deps-scm160095_))
                           (_deps-o160107_
                            (map (lambda (_g160102160104_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension160058_
                                      _g160102160104_
                                      '".o")))
                                 _deps-scm160095_))
                           (_src-bin-scm160109_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx160053_)))
                           (_src-bin-scm160111_
                            (path-expand _src-bin-scm160109_))
                           (_bin-scm160113_
                            (let ()
                              (declare (not safe))
                              (_tmp-path160083_ _src-bin-scm160111_)))
                           (_bin-c160115_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160058_
                               _bin-scm160113_
                               '".c")))
                           (_bin-o160117_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160058_
                               _bin-scm160113_
                               '".o")))
                           (_output-bin160119_
                            (path-expand _output-bin160069_))
                           (_output-scm160121_
                            (path-expand _output-scm160068_))
                           (_output-c160123_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160058_
                               _output-scm160121_
                               '".c")))
                           (_output-o160125_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160058_
                               _output-scm160121_
                               '".o")))
                           (_output_-c160127_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160058_
                               _output-scm160121_
                               '"_.c")))
                           (_output_-o160129_
                            (let ()
                              (declare (not safe))
                              (_replace-extension160058_
                               _output-scm160121_
                               '"_.o")))
                           (_gsc-link-opts160131_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts160133_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts160135_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir160075_)))
                           (_output-ld-opts160137_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a160139_
                            (path-expand '"libgerbil.a" _gerbil-libdir160073_))
                           (_libgerbil.so160141_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir160073_))
                           (_libgerbil-ld-opts160143_
                            (if (file-exists? _libgerbil.so160141_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts160057_
                                   _libgerbil.so160141_))
                                (if (file-exists? _libgerbil.a160139_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts160057_
                                       _libgerbil.a160139_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a160139_
                                       _libgerbil.so160141_)))))
                           (_rpath160145_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir160073_)))
                           (_builtin-modules160149_
                            (map (lambda (_mod160147_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod160147_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx160053_ _deps160087_)))))
                      (let ((__tmp160395
                             (lambda ()
                               (let ((__tmp160396
                                      (path-directory _output-bin160119_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160396)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160395))
                      (let ((__tmp160397
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub160056_
                                  _builtin-modules160149_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm160121_
                         __tmp160397))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160398
                                   (lambda () (create-directory _tmp160079_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp160398))
                            (for-each
                             copy-file
                             _src-deps-scm160093_
                             _deps-scm160095_)
                            (copy-file _src-bin-scm160111_ _bin-scm160113_)
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
                                       (cons _output-scm160121_ '()))))
                                (declare (not safe))
                                (cons _bin-scm160113_ __tmp160405))))
                         (declare (not safe))
                         (foldr1 cons __tmp160404 _deps-scm160095_))))
                  (declare (not safe))
                  (foldr1 cons __tmp160403 _gsc-link-opts160131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink160077_
                                                         __tmp160402))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp160401))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160400))))
                              (declare (not safe))
                              (gxc#invoke __tmp160406 __tmp160399))
                            (let ((__tmp160414
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160407
                                   (let ((__tmp160408
                                          (let ((__tmp160409
                                                 (let ((__tmp160410
                                                        (let ((__tmp160411
                                                               (let ((__tmp160412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160413
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c160127_ '()))))
                                (declare (not safe))
                                (cons _output-c160123_ __tmp160413))))
                         (declare (not safe))
                         (cons _bin-c160115_ __tmp160412))))
                  (declare (not safe))
                  (foldr1 cons __tmp160411 _deps-c160101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160410
                                                           _gsc-static-opts160135_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160409
                                                    _gsc-cc-opts160133_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160408))))
                              (declare (not safe))
                              (gxc#invoke __tmp160414 __tmp160407))
                            (let ((__tmp160427
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160415
                                   (let ((__tmp160416
                                          (let ((__tmp160417
                                                 (let ((__tmp160418
                                                        (let ((__tmp160419
                                                               (let ((__tmp160420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160421
                                     (let ((__tmp160422
                                            (let ((__tmp160423
                                                   (let ((__tmp160424
                                                          (let ((__tmp160425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp160426
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts160143_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp160426))))
                    (declare (not safe))
                    (cons _gerbil-libdir160073_ __tmp160425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp160424))))
                                              (declare (not safe))
                                              (cons _rpath160145_
                                                    __tmp160423))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp160422
                                               _output-ld-opts160137_))))
                                (declare (not safe))
                                (cons _output_-o160129_ __tmp160421))))
                         (declare (not safe))
                         (cons _output-o160125_ __tmp160420))))
                  (declare (not safe))
                  (cons _bin-o160117_ __tmp160419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160418
                                                           _deps-o160107_))))
                                            (declare (not safe))
                                            (cons _output-bin160119_
                                                  __tmp160417))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160416))))
                              (declare (not safe))
                              (gxc#invoke __tmp160427 __tmp160415))
                            (for-each
                             delete-file
                             (let ((__tmp160428
                                    (let ((__tmp160429
                                           (let ((__tmp160430
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o160129_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o160125_
                                                   __tmp160430))))
                                      (declare (not safe))
                                      (cons _output_-c160127_ __tmp160429))))
                               (declare (not safe))
                               (cons _output-c160123_ __tmp160428)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp160079_)))
                          '#!void)))))
          (let* ((_output-bin160063_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx160053_ _opts160054_)))
                 (_output-scm160065_
                  (string-append _output-bin160063_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub160061_ _output-scm160065_ _output-bin160063_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm160065_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx159878_ _opts159879_)
        (letrec ((_reset-declare159881_
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
                 (_generate-stub159882_
                  (lambda (_deps160044_)
                    (let ((_mod-main160046_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx159878_ 'main)))
                          (_reset-decl160047_
                           (let ()
                             (declare (not safe))
                             (_reset-declare159881_)))
                          (_user-decl160048_
                           (let ()
                             (declare (not safe))
                             (_user-declare159883_))))
                      (for-each
                       (lambda (_dep160050_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl160047_)
                         (newline)
                         (if _user-decl160048_
                             (begin (write _user-decl160048_) (newline))
                             '#!void)
                         (write (let ((__tmp160431
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep160050_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp160431)))
                         (newline))
                       _deps160044_)
                      (write (let ((__tmp160432
                                    (let ((__tmp160445
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp160433
                                           (let ((__tmp160441
                                                  (let ((__tmp160442
                                                         (let ((__tmp160443
                                                                (let ((__tmp160444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp160444))))
                   (declare (not safe))
                   (cons __tmp160443 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp160442)))
                                                 (__tmp160434
                                                  (let ((__tmp160435
                                                         (let ((__tmp160436
                                                                (let ((__tmp160437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp160438
                                      (let ((__tmp160439
                                             (let ((__tmp160440
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp160440 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp160439))))
                                 (declare (not safe))
                                 (cons __tmp160438 '()))))
                          (declare (not safe))
                          (cons _mod-main160046_ __tmp160437))))
                   (declare (not safe))
                   (cons 'apply __tmp160436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160435 '()))))
                                             (declare (not safe))
                                             (cons __tmp160441 __tmp160434))))
                                      (declare (not safe))
                                      (cons __tmp160445 __tmp160433))))
                               (declare (not safe))
                               (cons 'define __tmp160432)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare159883_
                  (lambda ()
                    (let* ((_gsc-opts159949_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts159879_)))
                           (_gsc-prelude159951_
                            (if _gsc-opts159949_
                                (member '"-prelude" _gsc-opts159949_)
                                '#f))
                           (_gsc-prelude159953_
                            (if _gsc-prelude159951_
                                (read (open-input-string
                                       (cadr _gsc-prelude159951_)))
                                '#f)))
                      (let _lp159956_ ((_rest159958_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude159953_ '())))
                                       (_user-decls159959_ '()))
                        (let* ((_rest159960159968_ _rest159958_)
                               (_else159962159976_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls159959_))
                                      '#f
                                      (let ((__tmp160446
                                             (reverse _user-decls159959_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp160446)))))
                               (_K159964160032_
                                (lambda (_rest159979_ _expr159980_)
                                  (let* ((_expr159981159993_ _expr159980_)
                                         (_else159984160001_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp159956_
                                               _rest159979_
                                               _user-decls159959_)))))
                                    (let ((_K159989160022_
                                           (lambda (_decls160020_)
                                             (let ((__tmp160447
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls159959_
                                                              _decls160020_))))
                                               (declare (not safe))
                                               (_lp159956_
                                                _rest159979_
                                                __tmp160447))))
                                          (_K159986160007_
                                           (lambda (_exprs160005_)
                                             (let ((__tmp160448
                                                    (append _exprs160005_
                                                            _rest159979_)))
                                               (declare (not safe))
                                               (_lp159956_
                                                __tmp160448
                                                _user-decls159959_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr159981159993_))
                                          (let ((_tl159991160027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr159981159993_)))
                                                (_hd159990160025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr159981159993_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd159990160025_
                                                         'declare))
                                                (let ((_decls160030_
                                                       _tl159991160027_))
                                                  (declare (not safe))
                                                  (_K159989160022_
                                                   _decls160030_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd159990160025_
                                                             'begin))
                                                    (let ((_exprs160015_
                                                           _tl159991160027_))
                                                      (declare (not safe))
                                                      (_K159986160007_
                                                       _exprs160015_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else159984160001_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else159984160001_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest159960159968_))
                              (let ((_hd159965160035_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest159960159968_)))
                                    (_tl159966160037_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest159960159968_))))
                                (let* ((_expr160040_ _hd159965160035_)
                                       (_rest160042_ _tl159966160037_))
                                  (declare (not safe))
                                  (_K159964160032_ _rest160042_ _expr160040_)))
                              (let ()
                                (declare (not safe))
                                (_else159962159976_))))))))
                 (_compile-stub159884_
                  (lambda (_output-scm159891_ _output-bin159892_)
                    (let* ((_gerbil-home159894_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir159896_
                            (path-expand '"lib" _gerbil-home159894_))
                           (_runtime159898_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp159900_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home159894_))
                           (_include-gambit-sharp159902_
                            (string-append
                             '"(include \""
                             _gambit-sharp159900_
                             '"\")"))
                           (_bin-scm159904_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx159878_)))
                           (_deps159906_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx159878_)))
                           (_deps159908_
                            (map gxc#find-static-module-file _deps159906_))
                           (_deps159913_
                            (filter (lambda (_$obj159910_)
                                      (let ((__tmp160449
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj159910_))))
                                        (declare (not safe))
                                        (not __tmp160449)))
                                    _deps159908_))
                           (_deps159917_
                            (filter (lambda (_f159915_)
                                      (let ((__tmp160450
                                             (member _f159915_
                                                     _runtime159898_)))
                                        (declare (not safe))
                                        (not __tmp160450)))
                                    _deps159913_))
                           (_output-base159919_
                            (string-append
                             (path-strip-extension _output-scm159891_)))
                           (_output-c159921_
                            (string-append _output-base159919_ '".c"))
                           (_output-o159923_
                            (string-append _output-base159919_ '".o"))
                           (_output-c_159925_
                            (string-append _output-base159919_ '"_.c"))
                           (_output-o_159927_
                            (string-append _output-base159919_ '"_.o"))
                           (_gsc-link-opts159929_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts159931_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts159933_
                            (let ((__tmp160451
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir159896_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp160451)))
                           (_output-ld-opts159935_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros159937_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp160453
                                       (let ((__tmp160454
                                              (let ((__tmp160455
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp159902_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp160455))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp160454))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160453))
                                (let ((__tmp160452
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp159902_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp160452))))
                           (_gsc-link-opts159939_
                            (append _gsc-link-opts159929_
                                    _gsc-gx-macros159937_))
                           (_rpath159941_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir159896_)))
                           (_default-ld-options159943_
                            (let ((__tmp160456
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp160456))))
                      (let ((__tmp160457
                             (lambda ()
                               (let ((__tmp160458
                                      (path-directory _output-bin159892_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp160458)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp160457))
                      (let ((__tmp160459
                             (lambda ()
                               (let ((__tmp160460
                                      (let ((__tmp160461
                                             (let ((__tmp160462
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm159904_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp160462
                                                       _deps159917_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp160461
                                                _runtime159898_))))
                                 (declare (not safe))
                                 (_generate-stub159882_ __tmp160460)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm159891_
                         __tmp160459))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp160468
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160463
                                   (let ((__tmp160464
                                          (let ((__tmp160465
                                                 (let ((__tmp160466
                                                        (let ((__tmp160467
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm159891_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp160467 _gsc-link-opts159939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_159925_
                                                         __tmp160466))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp160465))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp160464))))
                              (declare (not safe))
                              (gxc#invoke __tmp160468 __tmp160463))
                            (let ((__tmp160474
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp160469
                                   (let ((__tmp160470
                                          (let ((__tmp160471
                                                 (let ((__tmp160472
                                                        (let ((__tmp160473
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_159925_ '()))))
                  (declare (not safe))
                  (cons _output-c159921_ __tmp160473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp160472
                                                           _gsc-static-opts159933_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp160471
                                                    _gsc-cc-opts159931_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp160470))))
                              (declare (not safe))
                              (gxc#invoke __tmp160474 __tmp160469))
                            (let ((__tmp160484
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp160475
                                   (let ((__tmp160476
                                          (let ((__tmp160477
                                                 (let ((__tmp160478
                                                        (let ((__tmp160479
                                                               (let ((__tmp160480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp160481
                                     (let ((__tmp160482
                                            (let ((__tmp160483
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options159943_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir159896_
                                                    __tmp160483))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp160482))))
                                (declare (not safe))
                                (cons _rpath159941_ __tmp160481))))
                         (declare (not safe))
                         (foldr1 cons __tmp160480 _output-ld-opts159935_))))
                  (declare (not safe))
                  (cons _output-o_159927_ __tmp160479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o159923_
                                                         __tmp160478))))
                                            (declare (not safe))
                                            (cons _output-bin159892_
                                                  __tmp160477))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp160476))))
                              (declare (not safe))
                              (gxc#invoke __tmp160484 __tmp160475)))
                          '#!void)))))
          (let* ((_output-bin159886_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx159878_ _opts159879_)))
                 (_output-scm159888_
                  (string-append _output-bin159886_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub159884_ _output-scm159888_ _output-bin159886_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm159888_))))))
    (define gxc#find-export-binding
      (lambda (_ctx159828_ _id159829_)
        (let ((_$e159875_
               (let ((__tmp160486
                      (lambda (_e159830159832_)
                        (let* ((_g159834159844_ _e159830159832_)
                               (_else159836159852_ (lambda () '#f))
                               (_K159838159856_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g159834159844_
                                 'gx#module-export::t))
                              (let* ((_e159839159859_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159834159844_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e159840159862_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159834159844_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e159841159865_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g159834159844_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e159841159865_ '0))
                                    (let ((_e159842159868_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g159834159844_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g159870159872_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g159870159872_
                                                    _id159829_)))
                                           _e159842159868_)
                                          (let ()
                                            (declare (not safe))
                                            (_K159838159856_))
                                          (let ()
                                            (declare (not safe))
                                            (_else159836159852_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else159836159852_))))
                              (let ()
                                (declare (not safe))
                                (_else159836159852_))))))
                     (__tmp160485
                      (##structure-ref
                       _ctx159828_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp160486 __tmp160485))))
          (if _$e159875_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e159875_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx159820_ _id159821_)
        (let ((_$e159823_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx159820_ _id159821_))))
          (if _$e159823_
              ((lambda (_bind159826_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind159826_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id159821_)))
                 (##structure-ref _bind159826_ '1 gx#binding::t '#f))
               _$e159823_)
              (let ((__tmp160487
                     (##structure-ref
                      _ctx159820_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp160487
                 _id159821_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx159707_)
        (letrec* ((_ht159709_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template159710_
                   (lambda (_in159772_ _phi159773_)
                     (let ((_iphi159775_
                            (fx+ _phi159773_
                                 (##direct-structure-ref
                                  _in159772_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports159776_
                            (##structure-ref
                             (##direct-structure-ref
                              _in159772_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp159778_ ((_rest159780_ _imports159776_)
                                        (_r159781_ '()))
                         (let* ((_rest159782159790_ _rest159780_)
                                (_else159784159798_ (lambda () _r159781_))
                                (_K159786159808_
                                 (lambda (_rest159801_ _in159802_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in159802_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi159775_))
                                           (let ((__tmp160494
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in159802_
                                                          _r159781_))))
                                             (declare (not safe))
                                             (_lp159778_
                                              _rest159801_
                                              __tmp160494))
                                           (let ()
                                             (declare (not safe))
                                             (_lp159778_
                                              _rest159801_
                                              _r159781_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in159802_
                                              'gx#module-import::t))
                                           (let ((_iphi159804_
                                                  (fx+ _phi159773_
                                                       (##direct-structure-ref
                                                        _in159802_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi159804_))
                                                 (let ((__tmp160492
                                                        (let ((__tmp160493
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in159802_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp160493 _r159781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp159778_
                                                    _rest159801_
                                                    __tmp160492))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp159778_
                                                    _rest159801_
                                                    _r159781_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in159802_
                                                  'gx#import-set::t))
                                               (let ((_xphi159806_
                                                      (fx+ _iphi159775_
                                                           (##direct-structure-ref
                                                            _in159802_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi159806_))
                                                     (let ((__tmp160490
                                                            (let ((__tmp160491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in159802_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp160491 _r159781_))))
               (declare (not safe))
               (_lp159778_ _rest159801_ __tmp160490))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi159806_)
                                                         (let ((__tmp160488
                                                                (let ((__tmp160489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template159710_
                                  _in159802_
                                  _iphi159775_))))
                          (declare (not safe))
                          (foldl1 cons _r159781_ __tmp160489))))
                   (declare (not safe))
                   (_lp159778_ _rest159801_ __tmp160488))
                 (let ()
                   (declare (not safe))
                   (_lp159778_ _rest159801_ _r159781_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp159778_
                                                  _rest159801_
                                                  _r159781_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest159782159790_))
                               (let ((_hd159787159811_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest159782159790_)))
                                     (_tl159788159813_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest159782159790_))))
                                 (let* ((_in159816_ _hd159787159811_)
                                        (_rest159818_ _tl159788159813_))
                                   (declare (not safe))
                                   (_K159786159808_ _rest159818_ _in159816_)))
                               (let ()
                                 (declare (not safe))
                                 (_else159784159798_))))))))
                  (_find-deps159711_
                   (lambda (_rest159718_ _deps159719_)
                     (let* ((_rest159720159728_ _rest159718_)
                            (_else159722159736_ (lambda () _deps159719_))
                            (_K159724159760_
                             (lambda (_rest159739_ _hd159740_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd159740_
                                      'gx#module-context::t))
                                   (let ((_id159742_
                                          (##structure-ref
                                           _hd159740_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports159743_
                                          (##structure-ref
                                           _hd159740_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht159709_ _id159742_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps159711_
                                            _rest159739_
                                            _deps159719_))
                                         (let ((_$e159745_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd159740_))))
                                           (if _$e159745_
                                               ((lambda (_pre159748_)
                                                  (let ((_xdeps159750_
                                                         (let ((__tmp160507
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre159748_ _imports159743_))))
                   (declare (not safe))
                   (_find-deps159711_ __tmp160507 _deps159719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht159709_
                                                       _id159742_
                                                       _hd159740_))
                                                    (let ((__tmp160508
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd159740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps159750_))))
              (declare (not safe))
              (_find-deps159711_ _rest159739_ __tmp160508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e159745_)
                                               (let ((_xdeps159752_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps159711_
                                                         _imports159743_
                                                         _deps159719_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht159709_
                                                    _id159742_
                                                    _hd159740_))
                                                 (let ((__tmp160506
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd159740_
                                                                _xdeps159752_))))
                                                   (declare (not safe))
                                                   (_find-deps159711_
                                                    _rest159739_
                                                    __tmp160506)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd159740_
                                          'gx#prelude-context::t))
                                       (let ((_id159754_
                                              (##structure-ref
                                               _hd159740_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht159709_
                                                _id159754_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps159711_
                                                _rest159739_
                                                _deps159719_))
                                             (let ((_xdeps159756_
                                                    (let ((__tmp160504
                                                           (##structure-ref
                                                            _hd159740_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps159711_
                                                       __tmp160504
                                                       _deps159719_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht159709_
                                                      _id159754_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps159711_
                                                      _rest159739_
                                                      _xdeps159756_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht159709_
                                                        _id159754_
                                                        _hd159740_))
                                                     (let ((__tmp160505
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd159740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps159756_))))
               (declare (not safe))
               (_find-deps159711_ _rest159739_ __tmp160505)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd159740_
                                              'gx#module-import::t))
                                           (if (let ((__tmp160503
                                                      (##direct-structure-ref
                                                       _hd159740_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp160503))
                                               (let ((__tmp160501
                                                      (let ((__tmp160502
                                                             (##direct-structure-ref
                                                              _hd159740_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160502
                                                              _rest159739_))))
                                                 (declare (not safe))
                                                 (_find-deps159711_
                                                  __tmp160501
                                                  _deps159719_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps159711_
                                                  _rest159739_
                                                  _deps159719_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd159740_
                                                  'gx#module-export::t))
                                               (let ((__tmp160499
                                                      (let ((__tmp160500
                                                             (##direct-structure-ref
                                                              _hd159740_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp160500
                                                              _rest159739_))))
                                                 (declare (not safe))
                                                 (_find-deps159711_
                                                  __tmp160499
                                                  _deps159719_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd159740_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp160498
                                                              (##direct-structure-ref
                                                               _hd159740_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp160498))
                                                       (let ((__tmp160496
                                                              (let ((__tmp160497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd159740_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp160497 _rest159739_))))
                 (declare (not safe))
                 (_find-deps159711_ __tmp160496 _deps159719_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd159740_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps159758_
                           (let ()
                             (declare (not safe))
                             (_import-set-template159710_ _hd159740_ '0)))
                          (__tmp160495
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest159739_ _xdeps159758_))))
                     (declare (not safe))
                     (_find-deps159711_ __tmp160495 _deps159719_))
                   (let ()
                     (declare (not safe))
                     (_find-deps159711_ _rest159739_ _deps159719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd159740_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest159720159728_))
                           (let ((_hd159725159763_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest159720159728_)))
                                 (_tl159726159765_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest159720159728_))))
                             (let* ((_hd159768_ _hd159725159763_)
                                    (_rest159770_ _tl159726159765_))
                               (declare (not safe))
                               (_K159724159760_ _rest159770_ _hd159768_)))
                           (let ()
                             (declare (not safe))
                             (_else159722159736_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp160509
                                  (let ((_$e159713_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx159707_))))
                                    (if _$e159713_
                                        ((lambda (_pre159716_)
                                           (let ((__tmp160510
                                                  (##structure-ref
                                                   _ctx159707_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre159716_ __tmp160510)))
                                         _$e159713_)
                                        (##structure-ref
                                         _ctx159707_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps159711_ __tmp160509 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx159638_)
        (let* ((_context-id159640_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx159638_
                       'gx#module-context::t))
                    (##structure-ref _ctx159638_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx159638_)))
               (_scm159642_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id159640_))
                 '".scm"))
               (_dirs159644_ (let () (declare (not safe)) (load-path)))
               (_dirs159650_
                (let ((_user-libpath159646_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath159646_
                      (let ((_user-libpath159648_
                             (path-expand '"lib" _user-libpath159646_)))
                        (if (member _user-libpath159648_ _dirs159644_)
                            _dirs159644_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath159648_ _dirs159644_))))
                      _dirs159644_)))
               (_dirs159659_
                (let ((_$e159652_ (gxc#current-compile-output-dir)))
                  (if _$e159652_
                      ((lambda (_g159654159656_)
                         (let ()
                           (declare (not safe))
                           (cons _g159654159656_ _dirs159650_)))
                       _$e159652_)
                      _dirs159650_)))
               (_dirs159665_
                (map (lambda (_g159660159662_)
                       (path-expand '"static" _g159660159662_))
                     _dirs159659_)))
          (let _lp159668_ ((_rest159670_ _dirs159665_))
            (let* ((_rest159671159679_ _rest159670_)
                   (_else159673159687_
                    (lambda ()
                      (let ((__tmp160511
                             (##structure-ref
                              _ctx159638_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp160511
                         _scm159642_))))
                   (_K159675159695_
                    (lambda (_rest159690_ _dir159691_)
                      (let ((_path159693_
                             (path-expand _scm159642_ _dir159691_)))
                        (if (file-exists? _path159693_)
                            _path159693_
                            (let ()
                              (declare (not safe))
                              (_lp159668_ _rest159690_)))))))
              (if (let () (declare (not safe)) (##pair? _rest159671159679_))
                  (let ((_hd159676159698_
                         (let ()
                           (declare (not safe))
                           (##car _rest159671159679_)))
                        (_tl159677159700_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159671159679_))))
                    (let* ((_dir159703_ _hd159676159698_)
                           (_rest159705_ _tl159677159700_))
                      (declare (not safe))
                      (_K159675159695_ _rest159705_ _dir159703_)))
                  (let () (declare (not safe)) (_else159673159687_))))))))
    (define gxc#file-empty?
      (lambda (_path159636_)
        (let ((__tmp160512 (file-info-size (file-info _path159636_ '#t))))
          (declare (not safe))
          (zero? __tmp160512))))
    (define gxc#compile-top-module
      (lambda (_ctx159625_)
        (let ((__tmp160516
               (lambda ()
                 (let ((__tmp160517
                        (##structure-ref
                         _ctx159625_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp160517))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp160518
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx159625_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp160518))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx159625_))
                 (if (let ((__tmp160521
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx159625_))))
                       (declare (not safe))
                       (null? __tmp160521))
                     (let* ((_thr1159630_
                             (let ((__tmp160519
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx159625_)))))
                               (declare (not safe))
                               (spawn __tmp160519)))
                            (_thr2159633_
                             (let ((__tmp160520
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx159625_)))))
                               (declare (not safe))
                               (spawn __tmp160520))))
                       (let () (declare (not safe)) (gxc#join! _thr1159630_))
                       (let () (declare (not safe)) (gxc#join! _thr2159633_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx159625_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx159625_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx159625_))
                     '#!void)))
              (__tmp160515
               (let ((__obj160323
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj160323)
                 __obj160323))
              (__tmp160514 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp160513 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp160516
           gx#current-expander-context
           _ctx159625_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp160515
           gxc#current-compile-runtime-sections
           __tmp160514
           gxc#current-compile-runtime-names
           __tmp160513))))
    (define gxc#collect-bindings
      (lambda (_ctx159623_)
        (let ((__tmp160522
               (##structure-ref _ctx159623_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp160522))))
    (define gxc#compile-runtime-code
      (lambda (_ctx159569_)
        (letrec ((_compile1159571_
                  (lambda (_ctx159612_)
                    (let* ((_code159614_
                            (##structure-ref
                             _ctx159612_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt159618_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code159614_))
                                (let ((_idstr159616_
                                       (let ((__tmp160523
                                              (##structure-ref
                                               _ctx159612_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp160523))))
                                  (string-append _idstr159616_ '"~0"))
                                '#f)))
                      (if _rt159618_
                          (begin
                            (let ((__tmp160524
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp160524 _ctx159612_ _rt159618_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code159573_
                               _ctx159612_
                               _code159614_)))
                          (let ((_path159621_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx159612_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path159621_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code159574_
                         _ctx159612_
                         _code159614_
                         _rt159618_)))))
                 (_context-timestamp159572_
                  (lambda (_ctx159610_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx159610_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code159573_
                  (lambda (_ctx159592_ _code159593_)
                    (let* ((_lifts159595_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code159598_
                            (let ((__tmp160527
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code159593_))))
                                  (__tmp160526
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp160525
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160527
                               gx#current-expander-context
                               _ctx159592_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts159595_
                               gxc#current-compile-marks
                               __tmp160526
                               gxc#current-compile-identifiers
                               __tmp160525)))
                           (_runtime-code159600_
                            (if (let ((__tmp160531 (unbox _lifts159595_)))
                                  (declare (not safe))
                                  (null? __tmp160531))
                                _runtime-code159598_
                                (let ((__tmp160528
                                       (let ((__tmp160530
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code159598_
                                                      '())))
                                             (__tmp160529
                                              (reverse (unbox _lifts159595_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp160530
                                                 __tmp160529))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160528))))
                           (_runtime-code159602_
                            (let ((__tmp160532
                                   (let ((__tmp160534
                                          (let ((__tmp160535
                                                 (let ((__tmp160538
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp159572_
                                                           _ctx159592_)))
                                                       (__tmp160536
                                                        (let ((__tmp160537
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp160537
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp160538
                                                         __tmp160536))))
                                            (declare (not safe))
                                            (cons 'define __tmp160535)))
                                         (__tmp160533
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code159600_ '()))))
                                     (declare (not safe))
                                     (cons __tmp160534 __tmp160533))))
                              (declare (not safe))
                              (cons 'begin __tmp160532)))
                           (_scm0159604_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159592_
                               '0
                               '".scm"))))
                      (let ((_scms159607_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx159592_))))
                        (let ((__tmp160539
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0159604_
                                    _runtime-code159602_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp160539
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms159607_)
                            (delete-file _scms159607_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0159604_
                           '" => "
                           _scms159607_))
                        (copy-file _scm0159604_ _scms159607_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0159604_))))))
                 (_generate-loader-code159574_
                  (lambda (_ctx159581_ _code159582_ _rt159583_)
                    (let* ((_loader-code159586_
                            (let ((__tmp160540
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code159582_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp160540
                               gx#current-expander-context
                               _ctx159581_)))
                           (_loader-code159588_
                            (if _rt159583_
                                (let ((__tmp160541
                                       (let ((__tmp160542
                                              (let ((__tmp160543
                                                     (let ((__tmp160544
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt159583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp160544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp160543 '()))))
                                         (declare (not safe))
                                         (cons _loader-code159586_
                                               __tmp160542))))
                                  (declare (not safe))
                                  (cons 'begin __tmp160541))
                                _loader-code159586_)))
                      (let ((__tmp160545
                             (lambda ()
                               (let ((__tmp160546
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159581_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp160546
                                  _loader-code159588_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp160545
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules159576_
                 (let ((__tmp160547
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx159569_))))
                   (declare (not safe))
                   (cons _ctx159569_ __tmp160547))))
            (for-each
             (lambda (_ctx159578_)
               (let ((__tmp160548
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1159571_ _ctx159578_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp160548
                  gxc#current-compile-decls
                  '())))
             _all-modules159576_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx159466_)
        (letrec ((_compile-ssi159468_
                  (lambda (_code159539_)
                    (let* ((_path159541_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx159466_
                               '#f
                               '".ssi")))
                           (_prelude159552_
                            (let* ((_super159543_
                                    (##structure-ref
                                     _ctx159466_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e159545_
                                    (##structure-ref
                                     _super159543_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e159545_
                                  ((lambda (_g159547159549_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g159547159549_)))
                                   _$e159545_)
                                  ':<root>)))
                           (_ns159554_
                            (##structure-ref
                             _ctx159466_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr159556_
                            (symbol->string
                             (##structure-ref
                              _ctx159466_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg159563_
                            (let ((_$e159558_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr159556_ '#\/))))
                              (if _$e159558_
                                  ((lambda (_x159561_)
                                     (string->symbol
                                      (substring _idstr159556_ '0 _x159561_)))
                                   _$e159558_)
                                  '#f)))
                           (_rt159565_
                            (let ((__tmp160549
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp160549 _ctx159466_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path159541_))
                      (let ((__tmp160550
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude159552_))
                               (if _pkg159563_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg159563_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns159554_))
                               (newline)
                               (pretty-print _code159539_)
                               (if _rt159565_
                                   (pretty-print
                                    (let ((__tmp160551
                                           (let ((__tmp160555
                                                  (let ((__tmp160556
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp160556)))
                                                 (__tmp160552
                                                  (let ((__tmp160553
                                                         (let ((__tmp160554
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt159565_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp160554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp160553 '()))))
                                             (declare (not safe))
                                             (cons __tmp160555 __tmp160552))))
                                      (declare (not safe))
                                      (cons '%#call __tmp160551)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path159541_
                         __tmp160550)))))
                 (_compile-phi159469_
                  (lambda (_part159479_)
                    (let* ((_part159480159493_ _part159479_)
                           (_E159482159497_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part159480159493_))))
                           (_K159483159508_
                            (lambda (_code159500_
                                     _n159501_
                                     _phi159502_
                                     _phi-ctx159503_)
                              (let* ((_code159506_
                                      (let ((__tmp160557
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code159500_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp160557
                                         gx#current-expander-context
                                         _phi-ctx159503_
                                         gx#current-expander-phi
                                         _phi159502_)))
                                     (__tmp160558
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx159466_
                                         _n159501_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp160558
                                 _code159506_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part159480159493_))
                          (let ((_hd159484159511_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part159480159493_)))
                                (_tl159485159513_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part159480159493_))))
                            (let ((_phi-ctx159516_ _hd159484159511_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl159485159513_))
                                  (let ((_hd159486159518_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl159485159513_)))
                                        (_tl159487159520_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl159485159513_))))
                                    (let ((_phi159523_ _hd159486159518_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl159487159520_))
                                          (let ((_hd159488159525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl159487159520_)))
                                                (_tl159489159527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl159487159520_))))
                                            (let ((_n159530_ _hd159488159525_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl159489159527_))
                                                  (let ((_hd159490159532_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl159489159527_)))
                                                        (_tl159491159534_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl159489159527_))))
                                                    (let ((_code159537_
                                                           _hd159490159532_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl159491159534_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K159483159508_
                                                             _code159537_
                                                             _n159530_
                                                             _phi159523_
                                                             _phi-ctx159516_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E159482159497_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E159482159497_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E159482159497_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E159482159497_)))))
                          (let () (declare (not safe)) (_E159482159497_)))))))
          (let ((_g160559_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx159466_))))
            (begin
              (let ((_g160560_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160559_)
                           (##vector-length _g160559_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160560_ 2)))
                    (error "Context expects 2 values" _g160560_)))
              (let ((_ssi-code159471_
                     (let () (declare (not safe)) (##vector-ref _g160559_ 0)))
                    (_phi-code159472_
                     (let () (declare (not safe)) (##vector-ref _g160559_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi159468_ _ssi-code159471_))
                  (let ((_threads159477_
                         (map (lambda (_code159474_)
                                (let ((__tmp160561
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi159469_
                                            _code159474_)))))
                                  (declare (not safe))
                                  (spawn __tmp160561)))
                              _phi-code159472_)))
                    (for-each gxc#join! _threads159477_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx159449_)
        (let* ((_path159451_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx159449_ '#f '".ssxi.ss")))
               (_code159453_
                (let ((__tmp160562
                       (##structure-ref
                        _ctx159449_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp160562)))
               (_idstr159455_
                (symbol->string
                 (##structure-ref _ctx159449_ '1 gx#expander-context::t '#f)))
               (_pkg159462_
                (let ((_$e159457_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr159455_ '#\/))))
                  (if _$e159457_
                      ((lambda (_x159460_)
                         (string->symbol
                          (substring _idstr159455_ '0 _x159460_)))
                       _$e159457_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path159451_))
          (let ((__tmp160563
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg159462_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg159462_))
                       '#!void)
                   (newline)
                   (pretty-print _code159453_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path159451_ __tmp160563)))))
    (define gxc#generate-meta-code
      (lambda (_ctx159442_)
        (let* ((_state159444_
                (let ((__obj160324
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj160324 _ctx159442_)
                  __obj160324))
               (_ssi-code159446_
                (let ((__tmp160564
                       (##structure-ref
                        _ctx159442_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp160564
                   'state:
                   _state159444_))))
          (values _ssi-code159446_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state159444_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx159435_)
        (let ((_lifts159437_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160567
                 (lambda ()
                   (let ((_code159440_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx159435_))))
                     (if (let ((__tmp160571 (unbox _lifts159437_)))
                           (declare (not safe))
                           (null? __tmp160571))
                         _code159440_
                         (let ((__tmp160568
                                (let ((__tmp160570
                                       (let ()
                                         (declare (not safe))
                                         (cons _code159440_ '())))
                                      (__tmp160569
                                       (reverse (unbox _lifts159437_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp160570 __tmp160569))))
                           (declare (not safe))
                           (cons 'begin __tmp160568))))))
                (__tmp160566
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp160565
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp160567
             gxc#current-compile-lift
             _lifts159437_
             gxc#current-compile-marks
             __tmp160566
             gxc#current-compile-identifiers
             __tmp160565)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx159431_)
        (let ((_modules159433_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp160572
                 (##structure-ref _ctx159431_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp160572 'modules: _modules159433_))
          (reverse (unbox _modules159433_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path159414_ _code159415_ _phi?159416_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path159414_))
        (let ((__tmp160573
               (lambda ()
                 (pretty-print
                  (let ((__tmp160574
                         (let ((__tmp160581
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp160575
                                (let ((__tmp160580
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp160576
                                       (let ((__tmp160579
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp160577
                                              (let ((__tmp160578
                                                     (if _phi?159416_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp160578))))
                                         (declare (not safe))
                                         (cons __tmp160579 __tmp160577))))
                                  (declare (not safe))
                                  (cons __tmp160580 __tmp160576))))
                           (declare (not safe))
                           (cons __tmp160581 __tmp160575))))
                    (declare (not safe))
                    (cons 'declare __tmp160574)))
                 (pretty-print _code159415_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path159414_ __tmp160573))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path159414_ _phi?159416_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path159414_))))
    (define gxc#compile-scm-file__0
      (lambda (_path159422_ _code159423_)
        (let ((_phi?159425_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path159422_ _code159423_ _phi?159425_))))
    (define gxc#compile-scm-file
      (lambda _g160583_
        (let ((_g160582_ (let () (declare (not safe)) (##length _g160583_))))
          (cond ((let () (declare (not safe)) (##fx= _g160582_ 2))
                 (apply (lambda (_path159422_ _code159423_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path159422_
                             _code159423_)))
                        _g160583_))
                ((let () (declare (not safe)) (##fx= _g160582_ 3))
                 (apply (lambda (_path159427_ _code159428_ _phi?159429_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path159427_
                             _code159428_
                             _phi?159429_)))
                        _g160583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g160583_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?159315_)
        (let _lp159317_ ((_rest159319_ (gxc#current-compile-gsc-options))
                         (_opts159320_ '()))
          (let* ((_rest159321159341_ _rest159319_)
                 (_else159325159349_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159315_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160584
                               (let ((__tmp160585 (reverse _opts159320_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp160585))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp160584))
                        (reverse _opts159320_)))))
            (let ((_K159335159392_
                   (lambda (_rest159390_)
                     (let ()
                       (declare (not safe))
                       (_lp159317_ _rest159390_ _opts159320_))))
                  (_K159330159374_
                   (lambda (_rest159372_)
                     (let ()
                       (declare (not safe))
                       (_lp159317_ _rest159372_ _opts159320_))))
                  (_K159327159356_
                   (lambda (_rest159353_ _opt159354_)
                     (let ((__tmp160586
                            (let ()
                              (declare (not safe))
                              (cons _opt159354_ _opts159320_))))
                       (declare (not safe))
                       (_lp159317_ _rest159353_ __tmp160586)))))
              (if (let () (declare (not safe)) (##pair? _rest159321159341_))
                  (let ((_tl159337159397_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159321159341_)))
                        (_hd159336159395_
                         (let ()
                           (declare (not safe))
                           (##car _rest159321159341_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159336159395_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159337159397_))
                            (let* ((_tl159339159400_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159337159397_)))
                                   (_rest159403_ _tl159339159400_))
                              (declare (not safe))
                              (_K159335159392_ _rest159403_))
                            (let ((_opt159364_ _hd159336159395_)
                                  (_rest159366_ _tl159337159397_))
                              (let ()
                                (declare (not safe))
                                (_K159327159356_ _rest159366_ _opt159364_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159336159395_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159337159397_))
                                (let* ((_tl159334159382_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159337159397_)))
                                       (_rest159385_ _tl159334159382_))
                                  (declare (not safe))
                                  (_K159330159374_ _rest159385_))
                                (let ((_opt159364_ _hd159336159395_)
                                      (_rest159366_ _tl159337159397_))
                                  (let ()
                                    (declare (not safe))
                                    (_K159327159356_
                                     _rest159366_
                                     _opt159364_))))
                            (let ((_opt159364_ _hd159336159395_)
                                  (_rest159366_ _tl159337159397_))
                              (let ()
                                (declare (not safe))
                                (_K159327159356_ _rest159366_ _opt159364_))))))
                  (let () (declare (not safe)) (_else159325159349_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?159409_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?159409_))))
    (define gxc#gsc-link-options
      (lambda _g160588_
        (let ((_g160587_ (let () (declare (not safe)) (##length _g160588_))))
          (cond ((let () (declare (not safe)) (##fx= _g160587_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g160588_))
                ((let () (declare (not safe)) (##fx= _g160587_ 1))
                 (apply (lambda (_phi?159411_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?159411_)))
                        _g160588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g160588_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?159216_)
        (let _lp159218_ ((_rest159220_ (gxc#current-compile-gsc-options))
                         (_opts159221_ '()))
          (let* ((_rest159222159242_ _rest159220_)
                 (_else159226159250_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?159216_))
                             (gxc#current-compile-debug))
                        (let ((__tmp160589
                               (let ((__tmp160590 (reverse _opts159221_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp160590))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp160589))
                        (reverse _opts159221_)))))
            (let ((_K159236159289_
                   (lambda (_rest159286_ _opt159287_)
                     (let ((__tmp160591
                            (let ((__tmp160592
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts159221_))))
                              (declare (not safe))
                              (cons _opt159287_ __tmp160592))))
                       (declare (not safe))
                       (_lp159218_ _rest159286_ __tmp160591))))
                  (_K159231159270_
                   (lambda (_rest159268_)
                     (let ()
                       (declare (not safe))
                       (_lp159218_ _rest159268_ _opts159221_))))
                  (_K159228159256_
                   (lambda (_rest159254_)
                     (let ()
                       (declare (not safe))
                       (_lp159218_ _rest159254_ _opts159221_)))))
              (if (let () (declare (not safe)) (##pair? _rest159222159242_))
                  (let ((_tl159238159294_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159222159242_)))
                        (_hd159237159292_
                         (let ()
                           (declare (not safe))
                           (##car _rest159222159242_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159237159292_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159238159294_))
                            (let ((_tl159240159299_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl159238159294_)))
                                  (_hd159239159297_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl159238159294_))))
                              (let ((_opt159302_ _hd159239159297_)
                                    (_rest159304_ _tl159240159299_))
                                (let ()
                                  (declare (not safe))
                                  (_K159236159289_ _rest159304_ _opt159302_))))
                            (let ((_rest159262_ _tl159238159294_))
                              (declare (not safe))
                              (_K159228159256_ _rest159262_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159237159292_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159238159294_))
                                (let* ((_tl159235159278_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl159238159294_)))
                                       (_rest159281_ _tl159235159278_))
                                  (declare (not safe))
                                  (_K159231159270_ _rest159281_))
                                (let ((_rest159262_ _tl159238159294_))
                                  (declare (not safe))
                                  (_K159228159256_ _rest159262_)))
                            (let ((_rest159262_ _tl159238159294_))
                              (declare (not safe))
                              (_K159228159256_ _rest159262_)))))
                  (let () (declare (not safe)) (_else159226159250_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?159310_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?159310_))))
    (define gxc#gsc-cc-options
      (lambda _g160594_
        (let ((_g160593_ (let () (declare (not safe)) (##length _g160594_))))
          (cond ((let () (declare (not safe)) (##fx= _g160593_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g160594_))
                ((let () (declare (not safe)) (##fx= _g160593_ 1))
                 (apply (lambda (_phi?159312_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?159312_)))
                        _g160594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g160594_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir159211_)
        (let* ((_user-staticdir159213_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp160595
                (let ((__tmp160596
                       (string-append
                        '"-I "
                        _staticdir159211_
                        '" -I "
                        _user-staticdir159213_)))
                  (declare (not safe))
                  (cons __tmp160596 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp160595))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp159123_ ((_rest159125_ (gxc#current-compile-gsc-options))
                         (_opts159126_ '()))
          (let* ((_rest159127159147_ _rest159125_)
                 (_else159131159155_ (lambda () _opts159126_)))
            (let ((_K159141159198_
                   (lambda (_rest159196_)
                     (let ()
                       (declare (not safe))
                       (_lp159123_ _rest159196_ _opts159126_))))
                  (_K159136159176_
                   (lambda (_rest159173_ _opt159174_)
                     (let ((__tmp160597
                            (append _opts159126_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt159174_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp159123_ _rest159173_ __tmp160597))))
                  (_K159133159161_
                   (lambda (_rest159159_)
                     (let ()
                       (declare (not safe))
                       (_lp159123_ _rest159159_ _opts159126_)))))
              (if (let () (declare (not safe)) (##pair? _rest159127159147_))
                  (let ((_tl159143159203_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest159127159147_)))
                        (_hd159142159201_
                         (let ()
                           (declare (not safe))
                           (##car _rest159127159147_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd159142159201_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl159143159203_))
                            (let* ((_tl159145159206_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl159143159203_)))
                                   (_rest159209_ _tl159145159206_))
                              (declare (not safe))
                              (_K159141159198_ _rest159209_))
                            (let ((_rest159167_ _tl159143159203_))
                              (declare (not safe))
                              (_K159133159161_ _rest159167_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd159142159201_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl159143159203_))
                                (let ((_tl159140159186_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl159143159203_)))
                                      (_hd159139159184_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl159143159203_))))
                                  (let ((_opt159189_ _hd159139159184_)
                                        (_rest159191_ _tl159140159186_))
                                    (let ()
                                      (declare (not safe))
                                      (_K159136159176_
                                       _rest159191_
                                       _opt159189_))))
                                (let ((_rest159167_ _tl159143159203_))
                                  (declare (not safe))
                                  (_K159133159161_ _rest159167_)))
                            (let ((_rest159167_ _tl159143159203_))
                              (declare (not safe))
                              (_K159133159161_ _rest159167_)))))
                  (let () (declare (not safe)) (_else159131159155_))))))))
    (define gxc#not-string-empty?
      (lambda (_str159120_)
        (let ((__tmp160598
               (let () (declare (not safe)) (string-empty? _str159120_))))
          (declare (not safe))
          (not __tmp160598))))
    (define gxc#gsc-compile-file
      (lambda (_path159088_ _phi?159089_)
        (letrec ((_gsc-link-path159091_
                  (lambda (_base-path159112_)
                    (let _lp159114_ ((_n159116_ '1))
                      (let ((_path159118_
                             (string-append
                              _base-path159112_
                              '".o"
                              (number->string _n159116_))))
                        (if (file-exists? _path159118_)
                            (let ((__tmp160599
                                   (let ()
                                     (declare (not safe))
                                     (+ _n159116_ '1))))
                              (declare (not safe))
                              (_lp159114_ __tmp160599))
                            _path159118_))))))
          (let* ((_base-path159093_ (path-strip-extension _path159088_))
                 (_path-c159095_ (string-append _base-path159093_ '".c"))
                 (_path-o159097_ (string-append _base-path159093_ '".o"))
                 (_link-path159099_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path159091_ _base-path159093_)))
                 (_link-path-c159101_ (string-append _link-path159099_ '".c"))
                 (_link-path-o159103_ (string-append _link-path159099_ '".o"))
                 (_gsc-link-opts159105_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?159089_)))
                 (_gsc-cc-opts159107_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?159089_)))
                 (_gcc-ld-opts159109_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp160606 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160600
                   (let ((__tmp160601
                          (let ((__tmp160602
                                 (let ((__tmp160603
                                        (let ((__tmp160604
                                               (let ((__tmp160605
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path159088_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp160605
                                                         _gsc-link-opts159105_))))
                                          (declare (not safe))
                                          (cons _link-path-c159101_
                                                __tmp160604))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp160603))))
                            (declare (not safe))
                            (cons '"-flat" __tmp160602))))
                     (declare (not safe))
                     (cons '"-link" __tmp160601))))
              (declare (not safe))
              (gxc#invoke __tmp160606 __tmp160600 'stdout-redirection: '#t))
            (let ((__tmp160613 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp160607
                   (let ((__tmp160608
                          (let ((__tmp160609
                                 (let ((__tmp160610
                                        (let ((__tmp160611
                                               (let ((__tmp160612
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c159101_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c159095_
                                                       __tmp160612))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp160611
                                                  _gsc-cc-opts159107_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp160610))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp160609))))
                     (declare (not safe))
                     (cons '"-obj" __tmp160608))))
              (declare (not safe))
              (gxc#invoke __tmp160613 __tmp160607 'stdout-redirection: '#t))
            (let ((__tmp160619 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp160614
                   (let ((__tmp160615
                          (let ((__tmp160616
                                 (let ((__tmp160617
                                        (let ((__tmp160618
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o159103_
                                                       _gcc-ld-opts159109_))))
                                          (declare (not safe))
                                          (cons _path-o159097_ __tmp160618))))
                                   (declare (not safe))
                                   (cons _link-path159099_ __tmp160617))))
                            (declare (not safe))
                            (cons '"-o" __tmp160616))))
                     (declare (not safe))
                     (cons '"-shared" __tmp160615))))
              (declare (not safe))
              (gxc#invoke __tmp160619 __tmp160614))
            (for-each
             delete-file
             (let ((__tmp160620
                    (let ((__tmp160621
                           (let ((__tmp160622
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o159103_ '()))))
                             (declare (not safe))
                             (cons _link-path-c159101_ __tmp160622))))
                      (declare (not safe))
                      (cons _path-o159097_ __tmp160621))))
               (declare (not safe))
               (cons _path-c159095_ __tmp160620)))))))
    (define gxc#compile-output-file
      (lambda (_ctx159059_ _n159060_ _ext159061_)
        (letrec ((_module-relative-path159063_
                  (lambda (_ctx159086_)
                    (path-strip-directory
                     (let ((__tmp160623
                            (##structure-ref
                             _ctx159086_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp160623)))))
                 (_module-source-directory159064_
                  (lambda (_ctx159082_)
                    (path-directory
                     (let ((_mpath159084_
                            (##structure-ref
                             _ctx159082_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath159084_))
                           _mpath159084_
                           (last _mpath159084_))))))
                 (_section-string159065_
                  (lambda (_n159080_)
                    (if (let () (declare (not safe)) (number? _n159080_))
                        (number->string _n159080_)
                        (if (let () (declare (not safe)) (symbol? _n159080_))
                            (symbol->string _n159080_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n159080_))
                                _n159080_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n159080_)))))))
                 (_file-name159066_
                  (lambda (_path159078_)
                    (if _n159060_
                        (string-append
                         _path159078_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_section-string159065_ _n159060_))
                         _ext159061_)
                        (string-append _path159078_ _ext159061_))))
                 (_file-path159067_
                  (lambda ()
                    (let ((_$e159073_ (gxc#current-compile-output-dir)))
                      (if _$e159073_
                          ((lambda (_outdir159076_)
                             (path-expand
                              (let ((__tmp160625
                                     (let ((__tmp160626
                                            (##structure-ref
                                             _ctx159059_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp160626))))
                                (declare (not safe))
                                (_file-name159066_ __tmp160625))
                              _outdir159076_))
                           _$e159073_)
                          (path-expand
                           (let ((__tmp160624
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path159063_
                                     _ctx159059_))))
                             (declare (not safe))
                             (_file-name159066_ __tmp160624))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory159064_
                              _ctx159059_))))))))
          (let ((_path159069_
                 (let () (declare (not safe)) (_file-path159067_))))
            (let ((__tmp160627
                   (lambda ()
                     (let ((__tmp160628 (path-directory _path159069_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160628)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160627))
            _path159069_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx159041_)
        (letrec ((_file-name159043_
                  (lambda (_id159057_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id159057_))
                     '".scm")))
                 (_file-path159044_
                  (lambda ()
                    (let* ((_file159050_
                            (let ((__tmp160629
                                   (##structure-ref
                                    _ctx159041_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name159043_ __tmp160629)))
                           (_$e159052_ (gxc#current-compile-output-dir)))
                      (if _$e159052_
                          ((lambda (_outdir159055_)
                             (path-expand
                              _file159050_
                              (path-expand '"static" _outdir159055_)))
                           _$e159052_)
                          (path-expand _file159050_ '"static"))))))
          (let ((_path159046_
                 (let () (declare (not safe)) (_file-path159044_))))
            (let ((__tmp160630
                   (lambda ()
                     (let ((__tmp160631 (path-directory _path159046_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp160631)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp160630))
            _path159046_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx159035_ _opts159036_)
        (let ((_$e159038_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts159036_))))
          (if _$e159038_
              (values _$e159038_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx159035_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr159028_)
        (if (let () (declare (not safe)) (string? _idstr159028_))
            (let* ((_str159030_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr159028_)))
                   (_strs159032_
                    (let ()
                      (declare (not safe))
                      (string-split _str159030_ '#\/))))
              (let () (declare (not safe)) (string-join _strs159032_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr159028_))
                (let ((__tmp160632 (symbol->string _idstr159028_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp160632))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr159028_))))))
    (define gxc#invoke__%
      (lambda (_g160633_
               _stdout-redirection158989158993_
               _stderr-redirection158990158995_
               _program158997_
               _args158998_)
        (let* ((_stdout-redirection159000_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection158989158993_ absent-value))
                    '#f
                    _stdout-redirection158989158993_))
               (_stderr-redirection159002_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection158990158995_ absent-value))
                    '#f
                    _stderr-redirection158990158995_)))
          (let ((__tmp160634
                 (let ()
                   (declare (not safe))
                   (cons _program158997_ _args158998_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp160634))
          (let* ((_proc159004_
                  (open-process
                   (let ((__tmp160635
                          (let ((__tmp160636
                                 (let ((__tmp160637
                                        (let ((__tmp160638
                                               (let ((__tmp160639
                                                      (let ((__tmp160640
                                                             (let ((__tmp160641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection159002_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp160641))))
                (declare (not safe))
                (cons _stdout-redirection159000_ __tmp160640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp160639))))
                                          (declare (not safe))
                                          (cons _args158998_ __tmp160638))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp160637))))
                            (declare (not safe))
                            (cons _program158997_ __tmp160636))))
                     (declare (not safe))
                     (cons 'path: __tmp160635))))
                 (_output159009_
                  (if (or _stdout-redirection159000_
                          _stderr-redirection159002_)
                      (read-line _proc159004_ '#f)
                      '#f)))
            (let ((_status159012_ (process-status _proc159004_)))
              (close-port _proc159004_)
              (if (let () (declare (not safe)) (zero? _status159012_))
                  '#!void
                  (begin
                    (display _output159009_)
                    (let ((__tmp160642
                           (let ()
                             (declare (not safe))
                             (cons _program158997_ _args158998_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp160642
                       _status159012_)))))))))
    (define gxc#invoke__@
      (lambda (_keys158988159017_ . _args159019_)
        (apply gxc#invoke__%
               _keys158988159017_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158988159017_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys158988159017_
                  'stderr-redirection:
                  absent-value))
               _args159019_)))
    (define gxc#invoke
      (lambda _args158991159025_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args158991159025_)))
    (define gxc#join!
      (lambda (_thread158982_)
        (let ((__tmp160644
               (lambda (_exn158984_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn158984_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn158984_)))
                     (raise _exn158984_))))
              (__tmp160643 (lambda () (thread-join! _thread158982_))))
          (declare (not safe))
          (with-catch __tmp160644 __tmp160643))))))
