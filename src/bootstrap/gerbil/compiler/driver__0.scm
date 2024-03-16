(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710617613)
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
      (lambda (_path157241_ _fun157242_)
        (with-output-to-file
         (let ((__tmp157335
                (let ()
                  (declare (not safe))
                  (cons _path157241_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157335))
         _fun157242_)))
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
      (lambda (_gerbil-libdir157236_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157236_)))
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
      (lambda (_dir157234_) (delete-file-or-directory _dir157234_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157208_ _opts157209_)
        (if (let () (declare (not safe)) (string? _srcpath157208_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157208_)))
        (let ((_outdir157211_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157209_)))
              (_invoke-gsc?157212_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157209_)))
              (_gsc-options157213_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157209_)))
              (_keep-scm?157214_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157209_)))
              (_verbosity157215_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157209_)))
              (_optimize157216_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157209_)))
              (_debug157217_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157209_)))
              (_gen-ssxi157218_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157209_))))
          (if _outdir157211_
              (let ((__tmp157336
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157211_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157336))
              '#!void)
          (if _optimize157216_
              (let ((__tmp157337
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157337))
              '#!void)
          (let ((__tmp157341
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157208_))
                   (let ((__tmp157342
                          (let ((__tmp157343
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157208_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157343))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157342))))
                (__tmp157340
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157338
                 (let ((__tmp157339
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157208_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157339))))
            (declare (not safe))
            (call-with-parameters
             __tmp157341
             gxc#current-compile-output-dir
             _outdir157211_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157212_
             gxc#current-compile-gsc-options
             _gsc-options157213_
             gxc#current-compile-keep-scm
             _keep-scm?157214_
             gxc#current-compile-verbose
             _verbosity157215_
             gxc#current-compile-optimize
             _optimize157216_
             gxc#current-compile-debug
             _debug157217_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157218_
             gxc#current-compile-timestamp
             __tmp157340
             gxc#current-compile-context
             __tmp157338
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157227_)
        (let ((_opts157229_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157227_ _opts157229_))))
    (define gxc#compile-module
      (lambda _g157345_
        (let ((_g157344_ (let () (declare (not safe)) (##length _g157345_))))
          (cond ((let () (declare (not safe)) (##fx= _g157344_ 1))
                 (apply (lambda (_srcpath157227_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157227_)))
                        _g157345_))
                ((let () (declare (not safe)) (##fx= _g157344_ 2))
                 (apply (lambda (_srcpath157231_ _opts157232_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157231_
                             _opts157232_)))
                        _g157345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157345_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157184_ _opts157185_)
        (if (let () (declare (not safe)) (string? _srcpath157184_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157184_)))
        (let ((_outdir157187_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157185_)))
              (_invoke-gsc?157188_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157185_)))
              (_gsc-options157189_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157185_)))
              (_keep-scm?157190_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157185_)))
              (_verbosity157191_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157185_)))
              (_debug157192_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157185_))))
          (if _outdir157187_
              (let ((__tmp157346
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157187_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157346))
              '#!void)
          (let ((__tmp157350
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157184_))
                   (let ((__tmp157351
                          (let ((__tmp157352
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157184_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157352))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157351
                      _opts157185_))))
                (__tmp157349
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157347
                 (let ((__tmp157348
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157184_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157348))))
            (declare (not safe))
            (call-with-parameters
             __tmp157350
             gxc#current-compile-output-dir
             _outdir157187_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157188_
             gxc#current-compile-gsc-options
             _gsc-options157189_
             gxc#current-compile-keep-scm
             _keep-scm?157190_
             gxc#current-compile-verbose
             _verbosity157191_
             gxc#current-compile-debug
             _debug157192_
             gxc#current-compile-timestamp
             __tmp157349
             gxc#current-compile-context
             __tmp157347
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157200_)
        (let ((_opts157202_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157200_ _opts157202_))))
    (define gxc#compile-exe
      (lambda _g157354_
        (let ((_g157353_ (let () (declare (not safe)) (##length _g157354_))))
          (cond ((let () (declare (not safe)) (##fx= _g157353_ 1))
                 (apply (lambda (_srcpath157200_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157200_)))
                        _g157354_))
                ((let () (declare (not safe)) (##fx= _g157353_ 2))
                 (apply (lambda (_srcpath157204_ _opts157205_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157204_ _opts157205_)))
                        _g157354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157354_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157180_ _opts157181_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157181_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157180_
               _opts157181_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157180_
               _opts157181_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157063_ _opts157064_)
        (letrec ((_generate-stub157066_
                  (lambda (_builtin-modules157176_)
                    (let ((_mod-main157178_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157063_ 'main))))
                      (write (let ((__tmp157355
                                    (let ((__tmp157356
                                           (let ((__tmp157357
                                                  (let ((__tmp157358
                                                         (let ((__tmp157360
                                                                (let ((__tmp157361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157176_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157361)))
                       (__tmp157359
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157360 __tmp157359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157358))))
                                             (declare (not safe))
                                             (cons __tmp157357 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157356))))
                               (declare (not safe))
                               (cons 'define __tmp157355)))
                      (write (let ((__tmp157362
                                    (let ((__tmp157401
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157363
                                           (let ((__tmp157364
                                                  (let ((__tmp157365
                                                         (let ((__tmp157389
                                                                (let ((__tmp157390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157391
                                      (let ((__tmp157399
                                             (let ((__tmp157400
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157400)))
                                            (__tmp157392
                                             (let ((__tmp157393
                                                    (let ((__tmp157394
                                                           (let ((__tmp157395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157396
                                 (let ((__tmp157397
                                        (let ((__tmp157398
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157398 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157397))))
                            (declare (not safe))
                            (cons __tmp157396 '()))))
                     (declare (not safe))
                     (cons _mod-main157178_ __tmp157395))))
              (declare (not safe))
              (cons 'apply __tmp157394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157393 '()))))
                                        (declare (not safe))
                                        (cons __tmp157399 __tmp157392))))
                                 (declare (not safe))
                                 (cons '() __tmp157391))))
                          (declare (not safe))
                          (cons 'lambda __tmp157390)))
                       (__tmp157366
                        (let ((__tmp157367
                               (let ((__tmp157368
                                      (let ((__tmp157369
                                             (let ((__tmp157380
                                                    (let ((__tmp157381
                                                           (let ((__tmp157382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157383
                                 (let ((__tmp157384
                                        (let ((__tmp157385
                                               (let ((__tmp157386
                                                      (let ((__tmp157387
                                                             (let ((__tmp157388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157388 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157386 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157385))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157384))))
                            (declare (not safe))
                            (cons __tmp157383 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157382))))
              (declare (not safe))
              (cons 'with-catch __tmp157381)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157370
                                                    (let ((__tmp157371
                                                           (let ((__tmp157372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157373
                                 (let ((__tmp157374
                                        (let ((__tmp157375
                                               (let ((__tmp157376
                                                      (let ((__tmp157377
                                                             (let ((__tmp157378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157379
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157379 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157378))))
                (declare (not safe))
                (cons __tmp157377 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157376))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157375))))
                                   (declare (not safe))
                                   (cons __tmp157374 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157373))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157372))))
              (declare (not safe))
              (cons __tmp157371 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157380
                                                     __tmp157370))))
                                        (declare (not safe))
                                        (cons '() __tmp157369))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157368))))
                          (declare (not safe))
                          (cons __tmp157367 '()))))
                   (declare (not safe))
                   (cons __tmp157389 __tmp157366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157365))))
                                             (declare (not safe))
                                             (cons __tmp157364 '()))))
                                      (declare (not safe))
                                      (cons __tmp157401 __tmp157363))))
                               (declare (not safe))
                               (cons 'define __tmp157362)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157067_
                  (lambda (_libgerbil157174_)
                    (call-with-input-file
                     (string-append _libgerbil157174_ '".ldd")
                     read)))
                 (_replace-extension157068_
                  (lambda (_path157171_ _ext157172_)
                    (string-append
                     (path-strip-extension _path157171_)
                     _ext157172_)))
                 (_not-exclude-module?157069_
                  (lambda (_ctx157167_)
                    (let ((_id-str157169_
                           (symbol->string
                            (##structure-ref
                             _ctx157167_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157402
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157169_))))
                            (declare (not safe))
                            (not __tmp157402))
                          (let ((__tmp157403
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157169_))))
                            (declare (not safe))
                            (not __tmp157403))
                          '#f))))
                 (_not-file-empty?157070_
                  (lambda (_path157165_)
                    (let ((__tmp157404
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157165_))))
                      (declare (not safe))
                      (not __tmp157404))))
                 (_compile-stub157071_
                  (lambda (_output-scm157078_ _output-bin157079_)
                    (let* ((_gerbil-home157081_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157083_
                            (path-expand '"lib" _gerbil-home157081_))
                           (_gerbil-staticdir157085_
                            (path-expand '"static" _gerbil-libdir157083_))
                           (_gxlink157087_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157083_))
                           (_tmp157089_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157093_
                            (lambda (_f157091_)
                              (path-expand
                               (path-strip-directory _f157091_)
                               _tmp157089_)))
                           (_deps157095_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157063_)))
                           (_deps157097_
                            (filter _not-exclude-module?157069_ _deps157095_))
                           (_src-deps-scm157099_
                            (map gxc#find-static-module-file _deps157097_))
                           (_src-deps-scm157101_
                            (filter _not-file-empty?157070_
                                    _src-deps-scm157099_))
                           (_src-deps-scm157103_
                            (map path-expand _src-deps-scm157101_))
                           (_deps-scm157105_
                            (map _tmp-path157093_ _src-deps-scm157103_))
                           (_deps-c157111_
                            (map (lambda (_g157106157108_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157068_
                                      _g157106157108_
                                      '".c")))
                                 _deps-scm157105_))
                           (_deps-o157117_
                            (map (lambda (_g157112157114_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157068_
                                      _g157112157114_
                                      '".o")))
                                 _deps-scm157105_))
                           (_src-bin-scm157119_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157063_)))
                           (_src-bin-scm157121_
                            (path-expand _src-bin-scm157119_))
                           (_bin-scm157123_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157093_ _src-bin-scm157121_)))
                           (_bin-c157125_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157068_
                               _bin-scm157123_
                               '".c")))
                           (_bin-o157127_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157068_
                               _bin-scm157123_
                               '".o")))
                           (_output-bin157129_
                            (path-expand _output-bin157079_))
                           (_output-scm157131_
                            (path-expand _output-scm157078_))
                           (_output-c157133_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157068_
                               _output-scm157131_
                               '".c")))
                           (_output-o157135_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157068_
                               _output-scm157131_
                               '".o")))
                           (_output_-c157137_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157068_
                               _output-scm157131_
                               '"_.c")))
                           (_output_-o157139_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157068_
                               _output-scm157131_
                               '"_.o")))
                           (_gsc-link-opts157141_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157143_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157145_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157085_)))
                           (_output-ld-opts157147_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157149_
                            (path-expand '"libgerbil.a" _gerbil-libdir157083_))
                           (_libgerbil.so157151_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157083_))
                           (_libgerbil-ld-opts157153_
                            (if (file-exists? _libgerbil.so157151_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157067_
                                   _libgerbil.so157151_))
                                (if (file-exists? _libgerbil.a157149_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157067_
                                       _libgerbil.a157149_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157149_
                                       _libgerbil.so157151_)))))
                           (_rpath157155_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157083_)))
                           (_builtin-modules157159_
                            (map (lambda (_mod157157_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157157_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157063_ _deps157097_)))))
                      (let ((__tmp157405
                             (lambda ()
                               (let ((__tmp157406
                                      (path-directory _output-bin157129_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157406)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157405))
                      (let ((__tmp157407
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157066_
                                  _builtin-modules157159_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157131_
                         __tmp157407))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157408
                                   (lambda () (create-directory _tmp157089_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157408))
                            (for-each
                             copy-file
                             _src-deps-scm157103_
                             _deps-scm157105_)
                            (copy-file _src-bin-scm157121_ _bin-scm157123_)
                            (let ((__tmp157416
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157409
                                   (let ((__tmp157410
                                          (let ((__tmp157411
                                                 (let ((__tmp157412
                                                        (let ((__tmp157413
                                                               (let ((__tmp157414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157415
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157131_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157123_ __tmp157415))))
                         (declare (not safe))
                         (foldr1 cons __tmp157414 _deps-scm157105_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157413 _gsc-link-opts157141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157087_
                                                         __tmp157412))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157411))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157410))))
                              (declare (not safe))
                              (gxc#invoke __tmp157416 __tmp157409))
                            (let ((__tmp157424
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157417
                                   (let ((__tmp157418
                                          (let ((__tmp157419
                                                 (let ((__tmp157420
                                                        (let ((__tmp157421
                                                               (let ((__tmp157422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157423
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157137_ '()))))
                                (declare (not safe))
                                (cons _output-c157133_ __tmp157423))))
                         (declare (not safe))
                         (cons _bin-c157125_ __tmp157422))))
                  (declare (not safe))
                  (foldr1 cons __tmp157421 _deps-c157111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157420
                                                           _gsc-static-opts157145_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157419
                                                    _gsc-cc-opts157143_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157418))))
                              (declare (not safe))
                              (gxc#invoke __tmp157424 __tmp157417))
                            (let ((__tmp157437
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157425
                                   (let ((__tmp157426
                                          (let ((__tmp157427
                                                 (let ((__tmp157428
                                                        (let ((__tmp157429
                                                               (let ((__tmp157430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157431
                                     (let ((__tmp157432
                                            (let ((__tmp157433
                                                   (let ((__tmp157434
                                                          (let ((__tmp157435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157436
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157153_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157436))))
                    (declare (not safe))
                    (cons _gerbil-libdir157083_ __tmp157435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157434))))
                                              (declare (not safe))
                                              (cons _rpath157155_
                                                    __tmp157433))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157432
                                               _output-ld-opts157147_))))
                                (declare (not safe))
                                (cons _output_-o157139_ __tmp157431))))
                         (declare (not safe))
                         (cons _output-o157135_ __tmp157430))))
                  (declare (not safe))
                  (cons _bin-o157127_ __tmp157429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157428
                                                           _deps-o157117_))))
                                            (declare (not safe))
                                            (cons _output-bin157129_
                                                  __tmp157427))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157426))))
                              (declare (not safe))
                              (gxc#invoke __tmp157437 __tmp157425))
                            (for-each
                             delete-file
                             (let ((__tmp157438
                                    (let ((__tmp157439
                                           (let ((__tmp157440
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157139_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157135_
                                                   __tmp157440))))
                                      (declare (not safe))
                                      (cons _output_-c157137_ __tmp157439))))
                               (declare (not safe))
                               (cons _output-c157133_ __tmp157438)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157089_)))
                          '#!void)))))
          (let* ((_output-bin157073_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157063_ _opts157064_)))
                 (_output-scm157075_
                  (string-append _output-bin157073_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157071_ _output-scm157075_ _output-bin157073_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157075_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx156888_ _opts156889_)
        (letrec ((_reset-declare156891_
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
                 (_generate-stub156892_
                  (lambda (_deps157054_)
                    (let ((_mod-main157056_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx156888_ 'main)))
                          (_reset-decl157057_
                           (let ()
                             (declare (not safe))
                             (_reset-declare156891_)))
                          (_user-decl157058_
                           (let ()
                             (declare (not safe))
                             (_user-declare156893_))))
                      (for-each
                       (lambda (_dep157060_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157057_)
                         (newline)
                         (if _user-decl157058_
                             (begin (write _user-decl157058_) (newline))
                             '#!void)
                         (write (let ((__tmp157441
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157060_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157441)))
                         (newline))
                       _deps157054_)
                      (write (let ((__tmp157442
                                    (let ((__tmp157455
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157443
                                           (let ((__tmp157451
                                                  (let ((__tmp157452
                                                         (let ((__tmp157453
                                                                (let ((__tmp157454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157454))))
                   (declare (not safe))
                   (cons __tmp157453 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157452)))
                                                 (__tmp157444
                                                  (let ((__tmp157445
                                                         (let ((__tmp157446
                                                                (let ((__tmp157447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157448
                                      (let ((__tmp157449
                                             (let ((__tmp157450
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157450 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157449))))
                                 (declare (not safe))
                                 (cons __tmp157448 '()))))
                          (declare (not safe))
                          (cons _mod-main157056_ __tmp157447))))
                   (declare (not safe))
                   (cons 'apply __tmp157446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157445 '()))))
                                             (declare (not safe))
                                             (cons __tmp157451 __tmp157444))))
                                      (declare (not safe))
                                      (cons __tmp157455 __tmp157443))))
                               (declare (not safe))
                               (cons 'define __tmp157442)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare156893_
                  (lambda ()
                    (let* ((_gsc-opts156959_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts156889_)))
                           (_gsc-prelude156961_
                            (if _gsc-opts156959_
                                (member '"-prelude" _gsc-opts156959_)
                                '#f))
                           (_gsc-prelude156963_
                            (if _gsc-prelude156961_
                                (read (open-input-string
                                       (cadr _gsc-prelude156961_)))
                                '#f)))
                      (let _lp156966_ ((_rest156968_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude156963_ '())))
                                       (_user-decls156969_ '()))
                        (let* ((_rest156970156978_ _rest156968_)
                               (_else156972156986_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls156969_))
                                      '#f
                                      (let ((__tmp157456
                                             (reverse _user-decls156969_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157456)))))
                               (_K156974157042_
                                (lambda (_rest156989_ _expr156990_)
                                  (let* ((_expr156991157003_ _expr156990_)
                                         (_else156994157011_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp156966_
                                               _rest156989_
                                               _user-decls156969_)))))
                                    (let ((_K156999157032_
                                           (lambda (_decls157030_)
                                             (let ((__tmp157457
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls156969_
                                                              _decls157030_))))
                                               (declare (not safe))
                                               (_lp156966_
                                                _rest156989_
                                                __tmp157457))))
                                          (_K156996157017_
                                           (lambda (_exprs157015_)
                                             (let ((__tmp157458
                                                    (append _exprs157015_
                                                            _rest156989_)))
                                               (declare (not safe))
                                               (_lp156966_
                                                __tmp157458
                                                _user-decls156969_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr156991157003_))
                                          (let ((_tl157001157037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr156991157003_)))
                                                (_hd157000157035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr156991157003_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157000157035_
                                                         'declare))
                                                (let ((_decls157040_
                                                       _tl157001157037_))
                                                  (declare (not safe))
                                                  (_K156999157032_
                                                   _decls157040_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157000157035_
                                                             'begin))
                                                    (let ((_exprs157025_
                                                           _tl157001157037_))
                                                      (declare (not safe))
                                                      (_K156996157017_
                                                       _exprs157025_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else156994157011_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else156994157011_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest156970156978_))
                              (let ((_hd156975157045_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest156970156978_)))
                                    (_tl156976157047_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest156970156978_))))
                                (let* ((_expr157050_ _hd156975157045_)
                                       (_rest157052_ _tl156976157047_))
                                  (declare (not safe))
                                  (_K156974157042_ _rest157052_ _expr157050_)))
                              (let ()
                                (declare (not safe))
                                (_else156972156986_))))))))
                 (_compile-stub156894_
                  (lambda (_output-scm156901_ _output-bin156902_)
                    (let* ((_gerbil-home156904_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir156906_
                            (path-expand '"lib" _gerbil-home156904_))
                           (_runtime156908_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp156910_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home156904_))
                           (_include-gambit-sharp156912_
                            (string-append
                             '"(include \""
                             _gambit-sharp156910_
                             '"\")"))
                           (_bin-scm156914_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx156888_)))
                           (_deps156916_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx156888_)))
                           (_deps156918_
                            (map gxc#find-static-module-file _deps156916_))
                           (_deps156923_
                            (filter (lambda (_$obj156920_)
                                      (let ((__tmp157459
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj156920_))))
                                        (declare (not safe))
                                        (not __tmp157459)))
                                    _deps156918_))
                           (_deps156927_
                            (filter (lambda (_f156925_)
                                      (let ((__tmp157460
                                             (member _f156925_
                                                     _runtime156908_)))
                                        (declare (not safe))
                                        (not __tmp157460)))
                                    _deps156923_))
                           (_output-base156929_
                            (string-append
                             (path-strip-extension _output-scm156901_)))
                           (_output-c156931_
                            (string-append _output-base156929_ '".c"))
                           (_output-o156933_
                            (string-append _output-base156929_ '".o"))
                           (_output-c_156935_
                            (string-append _output-base156929_ '"_.c"))
                           (_output-o_156937_
                            (string-append _output-base156929_ '"_.o"))
                           (_gsc-link-opts156939_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts156941_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts156943_
                            (let ((__tmp157461
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir156906_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157461)))
                           (_output-ld-opts156945_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros156947_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157462
                                       (let ((__tmp157463
                                              (let ((__tmp157464
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp156912_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157464))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157463))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157462))
                                (let ((__tmp157465
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp156912_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157465))))
                           (_gsc-link-opts156949_
                            (append _gsc-link-opts156939_
                                    _gsc-gx-macros156947_))
                           (_rpath156951_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir156906_)))
                           (_default-ld-options156953_
                            (let ((__tmp157466
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157466))))
                      (let ((__tmp157467
                             (lambda ()
                               (let ((__tmp157468
                                      (path-directory _output-bin156902_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157468)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157467))
                      (let ((__tmp157469
                             (lambda ()
                               (let ((__tmp157470
                                      (let ((__tmp157471
                                             (let ((__tmp157472
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm156914_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157472
                                                       _deps156927_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157471
                                                _runtime156908_))))
                                 (declare (not safe))
                                 (_generate-stub156892_ __tmp157470)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm156901_
                         __tmp157469))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157478
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157473
                                   (let ((__tmp157474
                                          (let ((__tmp157475
                                                 (let ((__tmp157476
                                                        (let ((__tmp157477
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm156901_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157477 _gsc-link-opts156949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_156935_
                                                         __tmp157476))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157475))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157474))))
                              (declare (not safe))
                              (gxc#invoke __tmp157478 __tmp157473))
                            (let ((__tmp157484
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157479
                                   (let ((__tmp157480
                                          (let ((__tmp157481
                                                 (let ((__tmp157482
                                                        (let ((__tmp157483
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_156935_ '()))))
                  (declare (not safe))
                  (cons _output-c156931_ __tmp157483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157482
                                                           _gsc-static-opts156943_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157481
                                                    _gsc-cc-opts156941_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157480))))
                              (declare (not safe))
                              (gxc#invoke __tmp157484 __tmp157479))
                            (let ((__tmp157494
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157485
                                   (let ((__tmp157486
                                          (let ((__tmp157487
                                                 (let ((__tmp157488
                                                        (let ((__tmp157489
                                                               (let ((__tmp157490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157491
                                     (let ((__tmp157492
                                            (let ((__tmp157493
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options156953_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir156906_
                                                    __tmp157493))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157492))))
                                (declare (not safe))
                                (cons _rpath156951_ __tmp157491))))
                         (declare (not safe))
                         (foldr1 cons __tmp157490 _output-ld-opts156945_))))
                  (declare (not safe))
                  (cons _output-o_156937_ __tmp157489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o156933_
                                                         __tmp157488))))
                                            (declare (not safe))
                                            (cons _output-bin156902_
                                                  __tmp157487))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157486))))
                              (declare (not safe))
                              (gxc#invoke __tmp157494 __tmp157485)))
                          '#!void)))))
          (let* ((_output-bin156896_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx156888_ _opts156889_)))
                 (_output-scm156898_
                  (string-append _output-bin156896_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub156894_ _output-scm156898_ _output-bin156896_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm156898_))))))
    (define gxc#find-export-binding
      (lambda (_ctx156838_ _id156839_)
        (let ((_$e156885_
               (let ((__tmp157496
                      (lambda (_e156840156842_)
                        (let* ((_g156844156854_ _e156840156842_)
                               (_else156846156862_ (lambda () '#f))
                               (_K156848156866_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g156844156854_
                                 'gx#module-export::t))
                              (let* ((_e156849156869_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156844156854_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e156850156872_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156844156854_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e156851156875_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156844156854_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e156851156875_ '0))
                                    (let ((_e156852156878_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g156844156854_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g156880156882_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g156880156882_
                                                    _id156839_)))
                                           _e156852156878_)
                                          (let ()
                                            (declare (not safe))
                                            (_K156848156866_))
                                          (let ()
                                            (declare (not safe))
                                            (_else156846156862_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else156846156862_))))
                              (let ()
                                (declare (not safe))
                                (_else156846156862_))))))
                     (__tmp157495
                      (##structure-ref
                       _ctx156838_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157496 __tmp157495))))
          (if _$e156885_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e156885_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx156830_ _id156831_)
        (let ((_$e156833_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx156830_ _id156831_))))
          (if _$e156833_
              ((lambda (_bind156836_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind156836_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id156831_)))
                 (##structure-ref _bind156836_ '1 gx#binding::t '#f))
               _$e156833_)
              (let ((__tmp157497
                     (##structure-ref
                      _ctx156830_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157497
                 _id156831_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx156717_)
        (letrec* ((_ht156719_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template156720_
                   (lambda (_in156782_ _phi156783_)
                     (let ((_iphi156785_
                            (fx+ _phi156783_
                                 (##direct-structure-ref
                                  _in156782_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports156786_
                            (##structure-ref
                             (##direct-structure-ref
                              _in156782_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp156788_ ((_rest156790_ _imports156786_)
                                        (_r156791_ '()))
                         (let* ((_rest156792156800_ _rest156790_)
                                (_else156794156808_ (lambda () _r156791_))
                                (_K156796156818_
                                 (lambda (_rest156811_ _in156812_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in156812_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi156785_))
                                           (let ((__tmp157498
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in156812_
                                                          _r156791_))))
                                             (declare (not safe))
                                             (_lp156788_
                                              _rest156811_
                                              __tmp157498))
                                           (let ()
                                             (declare (not safe))
                                             (_lp156788_
                                              _rest156811_
                                              _r156791_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in156812_
                                              'gx#module-import::t))
                                           (let ((_iphi156814_
                                                  (fx+ _phi156783_
                                                       (##direct-structure-ref
                                                        _in156812_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi156814_))
                                                 (let ((__tmp157499
                                                        (let ((__tmp157500
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in156812_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157500 _r156791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp156788_
                                                    _rest156811_
                                                    __tmp157499))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp156788_
                                                    _rest156811_
                                                    _r156791_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in156812_
                                                  'gx#import-set::t))
                                               (let ((_xphi156816_
                                                      (fx+ _iphi156785_
                                                           (##direct-structure-ref
                                                            _in156812_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi156816_))
                                                     (let ((__tmp157501
                                                            (let ((__tmp157502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in156812_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157502 _r156791_))))
               (declare (not safe))
               (_lp156788_ _rest156811_ __tmp157501))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi156816_)
                                                         (let ((__tmp157503
                                                                (let ((__tmp157504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template156720_
                                  _in156812_
                                  _iphi156785_))))
                          (declare (not safe))
                          (foldl1 cons _r156791_ __tmp157504))))
                   (declare (not safe))
                   (_lp156788_ _rest156811_ __tmp157503))
                 (let ()
                   (declare (not safe))
                   (_lp156788_ _rest156811_ _r156791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp156788_
                                                  _rest156811_
                                                  _r156791_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest156792156800_))
                               (let ((_hd156797156821_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest156792156800_)))
                                     (_tl156798156823_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest156792156800_))))
                                 (let* ((_in156826_ _hd156797156821_)
                                        (_rest156828_ _tl156798156823_))
                                   (declare (not safe))
                                   (_K156796156818_ _rest156828_ _in156826_)))
                               (let ()
                                 (declare (not safe))
                                 (_else156794156808_))))))))
                  (_find-deps156721_
                   (lambda (_rest156728_ _deps156729_)
                     (let* ((_rest156730156738_ _rest156728_)
                            (_else156732156746_ (lambda () _deps156729_))
                            (_K156734156770_
                             (lambda (_rest156749_ _hd156750_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd156750_
                                      'gx#module-context::t))
                                   (let ((_id156752_
                                          (##structure-ref
                                           _hd156750_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports156753_
                                          (##structure-ref
                                           _hd156750_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht156719_ _id156752_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps156721_
                                            _rest156749_
                                            _deps156729_))
                                         (let ((_$e156755_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd156750_))))
                                           (if _$e156755_
                                               ((lambda (_pre156758_)
                                                  (let ((_xdeps156760_
                                                         (let ((__tmp157505
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre156758_ _imports156753_))))
                   (declare (not safe))
                   (_find-deps156721_ __tmp157505 _deps156729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht156719_
                                                       _id156752_
                                                       _hd156750_))
                                                    (let ((__tmp157506
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd156750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps156760_))))
              (declare (not safe))
              (_find-deps156721_ _rest156749_ __tmp157506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e156755_)
                                               (let ((_xdeps156762_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps156721_
                                                         _imports156753_
                                                         _deps156729_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht156719_
                                                    _id156752_
                                                    _hd156750_))
                                                 (let ((__tmp157507
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd156750_
                                                                _xdeps156762_))))
                                                   (declare (not safe))
                                                   (_find-deps156721_
                                                    _rest156749_
                                                    __tmp157507)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd156750_
                                          'gx#prelude-context::t))
                                       (let ((_id156764_
                                              (##structure-ref
                                               _hd156750_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht156719_
                                                _id156764_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps156721_
                                                _rest156749_
                                                _deps156729_))
                                             (let ((_xdeps156766_
                                                    (let ((__tmp157508
                                                           (##structure-ref
                                                            _hd156750_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps156721_
                                                       __tmp157508
                                                       _deps156729_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht156719_
                                                      _id156764_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps156721_
                                                      _rest156749_
                                                      _xdeps156766_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht156719_
                                                        _id156764_
                                                        _hd156750_))
                                                     (let ((__tmp157509
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd156750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps156766_))))
               (declare (not safe))
               (_find-deps156721_ _rest156749_ __tmp157509)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd156750_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157510
                                                      (##direct-structure-ref
                                                       _hd156750_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157510))
                                               (let ((__tmp157511
                                                      (let ((__tmp157512
                                                             (##direct-structure-ref
                                                              _hd156750_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157512
                                                              _rest156749_))))
                                                 (declare (not safe))
                                                 (_find-deps156721_
                                                  __tmp157511
                                                  _deps156729_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps156721_
                                                  _rest156749_
                                                  _deps156729_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd156750_
                                                  'gx#module-export::t))
                                               (let ((__tmp157513
                                                      (let ((__tmp157514
                                                             (##direct-structure-ref
                                                              _hd156750_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157514
                                                              _rest156749_))))
                                                 (declare (not safe))
                                                 (_find-deps156721_
                                                  __tmp157513
                                                  _deps156729_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd156750_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157515
                                                              (##direct-structure-ref
                                                               _hd156750_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157515))
                                                       (let ((__tmp157516
                                                              (let ((__tmp157517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd156750_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157517 _rest156749_))))
                 (declare (not safe))
                 (_find-deps156721_ __tmp157516 _deps156729_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd156750_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps156768_
                           (let ()
                             (declare (not safe))
                             (_import-set-template156720_ _hd156750_ '0)))
                          (__tmp157518
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest156749_ _xdeps156768_))))
                     (declare (not safe))
                     (_find-deps156721_ __tmp157518 _deps156729_))
                   (let ()
                     (declare (not safe))
                     (_find-deps156721_ _rest156749_ _deps156729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd156750_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest156730156738_))
                           (let ((_hd156735156773_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest156730156738_)))
                                 (_tl156736156775_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest156730156738_))))
                             (let* ((_hd156778_ _hd156735156773_)
                                    (_rest156780_ _tl156736156775_))
                               (declare (not safe))
                               (_K156734156770_ _rest156780_ _hd156778_)))
                           (let ()
                             (declare (not safe))
                             (_else156732156746_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp157519
                                  (let ((_$e156723_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx156717_))))
                                    (if _$e156723_
                                        ((lambda (_pre156726_)
                                           (let ((__tmp157520
                                                  (##structure-ref
                                                   _ctx156717_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre156726_ __tmp157520)))
                                         _$e156723_)
                                        (##structure-ref
                                         _ctx156717_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps156721_ __tmp157519 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx156648_)
        (let* ((_context-id156650_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx156648_
                       'gx#module-context::t))
                    (##structure-ref _ctx156648_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx156648_)))
               (_scm156652_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id156650_))
                 '".scm"))
               (_dirs156654_ (gx#current-expander-module-library-path))
               (_dirs156660_
                (let ((_user-libpath156656_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath156656_
                      (let ((_user-libpath156658_
                             (path-expand '"lib" _user-libpath156656_)))
                        (if (member _user-libpath156658_ _dirs156654_)
                            _dirs156654_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath156658_ _dirs156654_))))
                      _dirs156654_)))
               (_dirs156669_
                (let ((_$e156662_ (gxc#current-compile-output-dir)))
                  (if _$e156662_
                      ((lambda (_g156664156666_)
                         (let ()
                           (declare (not safe))
                           (cons _g156664156666_ _dirs156660_)))
                       _$e156662_)
                      _dirs156660_)))
               (_dirs156675_
                (map (lambda (_g156670156672_)
                       (path-expand '"static" _g156670156672_))
                     _dirs156669_)))
          (let _lp156678_ ((_rest156680_ _dirs156675_))
            (let* ((_rest156681156689_ _rest156680_)
                   (_else156683156697_
                    (lambda ()
                      (let ((__tmp157521
                             (##structure-ref
                              _ctx156648_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157521
                         _scm156652_))))
                   (_K156685156705_
                    (lambda (_rest156700_ _dir156701_)
                      (let ((_path156703_
                             (path-expand _scm156652_ _dir156701_)))
                        (if (file-exists? _path156703_)
                            _path156703_
                            (let ()
                              (declare (not safe))
                              (_lp156678_ _rest156700_)))))))
              (if (let () (declare (not safe)) (##pair? _rest156681156689_))
                  (let ((_hd156686156708_
                         (let ()
                           (declare (not safe))
                           (##car _rest156681156689_)))
                        (_tl156687156710_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156681156689_))))
                    (let* ((_dir156713_ _hd156686156708_)
                           (_rest156715_ _tl156687156710_))
                      (declare (not safe))
                      (_K156685156705_ _rest156715_ _dir156713_)))
                  (let () (declare (not safe)) (_else156683156697_))))))))
    (define gxc#file-empty?
      (lambda (_path156646_)
        (let ((__tmp157522 (file-info-size (file-info _path156646_ '#t))))
          (declare (not safe))
          (zero? __tmp157522))))
    (define gxc#compile-top-module
      (lambda (_ctx156635_)
        (let ((__tmp157526
               (lambda ()
                 (let ((__tmp157527
                        (##structure-ref
                         _ctx156635_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157527))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157528
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156635_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157528))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156635_))
                 (if (let ((__tmp157529
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156635_))))
                       (declare (not safe))
                       (null? __tmp157529))
                     (let* ((_thr1156640_
                             (let ((__tmp157530
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156635_)))))
                               (declare (not safe))
                               (spawn __tmp157530)))
                            (_thr2156643_
                             (let ((__tmp157531
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156635_)))))
                               (declare (not safe))
                               (spawn __tmp157531))))
                       (let () (declare (not safe)) (gxc#join! _thr1156640_))
                       (let () (declare (not safe)) (gxc#join! _thr2156643_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156635_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156635_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156635_))
                     '#!void)))
              (__tmp157525
               (let ((__obj157333
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157333)
                 __obj157333))
              (__tmp157524 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157523 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157526
           gx#current-expander-context
           _ctx156635_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157525
           gxc#current-compile-runtime-sections
           __tmp157524
           gxc#current-compile-runtime-names
           __tmp157523))))
    (define gxc#collect-bindings
      (lambda (_ctx156633_)
        (let ((__tmp157532
               (##structure-ref _ctx156633_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157532))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156579_)
        (letrec ((_compile1156581_
                  (lambda (_ctx156622_)
                    (let* ((_code156624_
                            (##structure-ref
                             _ctx156622_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156628_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156624_))
                                (let ((_idstr156626_
                                       (let ((__tmp157533
                                              (##structure-ref
                                               _ctx156622_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157533))))
                                  (string-append _idstr156626_ '"__0"))
                                '#f)))
                      (if _rt156628_
                          (begin
                            (let ((__tmp157534
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157534 _ctx156622_ _rt156628_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156583_
                               _ctx156622_
                               _code156624_)))
                          (let ((_path156631_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156622_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156631_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156584_
                         _ctx156622_
                         _code156624_
                         _rt156628_)))))
                 (_context-timestamp156582_
                  (lambda (_ctx156620_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156620_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156583_
                  (lambda (_ctx156602_ _code156603_)
                    (let* ((_lifts156605_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156608_
                            (let ((__tmp157537
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156603_))))
                                  (__tmp157536
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157535
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157537
                               gx#current-expander-context
                               _ctx156602_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156605_
                               gxc#current-compile-marks
                               __tmp157536
                               gxc#current-compile-identifiers
                               __tmp157535)))
                           (_runtime-code156610_
                            (if (let ((__tmp157538 (unbox _lifts156605_)))
                                  (declare (not safe))
                                  (null? __tmp157538))
                                _runtime-code156608_
                                (let ((__tmp157539
                                       (let ((__tmp157541
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156608_
                                                      '())))
                                             (__tmp157540
                                              (reverse (unbox _lifts156605_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157541
                                                 __tmp157540))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157539))))
                           (_runtime-code156612_
                            (let ((__tmp157542
                                   (let ((__tmp157544
                                          (let ((__tmp157545
                                                 (let ((__tmp157548
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156582_
                                                           _ctx156602_)))
                                                       (__tmp157546
                                                        (let ((__tmp157547
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157547
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157548
                                                         __tmp157546))))
                                            (declare (not safe))
                                            (cons 'define __tmp157545)))
                                         (__tmp157543
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156610_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157544 __tmp157543))))
                              (declare (not safe))
                              (cons 'begin __tmp157542)))
                           (_scm0156614_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156602_
                               '0
                               '".scm"))))
                      (let ((_scms156617_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156602_))))
                        (let ((__tmp157549
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156614_
                                    _runtime-code156612_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157549
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156617_)
                            (delete-file _scms156617_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156614_
                           '" => "
                           _scms156617_))
                        (copy-file _scm0156614_ _scms156617_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156614_))))))
                 (_generate-loader-code156584_
                  (lambda (_ctx156591_ _code156592_ _rt156593_)
                    (let* ((_loader-code156596_
                            (let ((__tmp157550
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156592_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157550
                               gx#current-expander-context
                               _ctx156591_)))
                           (_loader-code156598_
                            (if _rt156593_
                                (let ((__tmp157551
                                       (let ((__tmp157552
                                              (let ((__tmp157553
                                                     (let ((__tmp157554
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157553 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156596_
                                               __tmp157552))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157551))
                                _loader-code156596_)))
                      (let ((__tmp157555
                             (lambda ()
                               (let ((__tmp157556
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156591_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157556
                                  _loader-code156598_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157555
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156586_
                 (let ((__tmp157557
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156579_))))
                   (declare (not safe))
                   (cons _ctx156579_ __tmp157557))))
            (for-each
             (lambda (_ctx156588_)
               (let ((__tmp157558
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156581_ _ctx156588_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157558
                  gxc#current-compile-decls
                  '())))
             _all-modules156586_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156476_)
        (letrec ((_compile-ssi156478_
                  (lambda (_code156549_)
                    (let* ((_path156551_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156476_
                               '#f
                               '".ssi")))
                           (_prelude156562_
                            (let* ((_super156553_
                                    (##structure-ref
                                     _ctx156476_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156555_
                                    (##structure-ref
                                     _super156553_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156555_
                                  ((lambda (_g156557156559_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156557156559_)))
                                   _$e156555_)
                                  ':<root>)))
                           (_ns156564_
                            (##structure-ref
                             _ctx156476_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156566_
                            (symbol->string
                             (##structure-ref
                              _ctx156476_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156573_
                            (let ((_$e156568_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156566_ '#\/))))
                              (if _$e156568_
                                  ((lambda (_x156571_)
                                     (string->symbol
                                      (substring _idstr156566_ '0 _x156571_)))
                                   _$e156568_)
                                  '#f)))
                           (_rt156575_
                            (let ((__tmp157559
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157559 _ctx156476_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156551_))
                      (let ((__tmp157560
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156562_))
                               (if _pkg156573_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156573_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156564_))
                               (newline)
                               (pretty-print _code156549_)
                               (if _rt156575_
                                   (pretty-print
                                    (let ((__tmp157561
                                           (let ((__tmp157565
                                                  (let ((__tmp157566
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157566)))
                                                 (__tmp157562
                                                  (let ((__tmp157563
                                                         (let ((__tmp157564
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156575_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157563 '()))))
                                             (declare (not safe))
                                             (cons __tmp157565 __tmp157562))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157561)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156551_
                         __tmp157560)))))
                 (_compile-phi156479_
                  (lambda (_part156489_)
                    (let* ((_part156490156503_ _part156489_)
                           (_E156492156507_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156490156503_))))
                           (_K156493156518_
                            (lambda (_code156510_
                                     _n156511_
                                     _phi156512_
                                     _phi-ctx156513_)
                              (let* ((_code156516_
                                      (let ((__tmp157567
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156510_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157567
                                         gx#current-expander-context
                                         _phi-ctx156513_
                                         gx#current-expander-phi
                                         _phi156512_)))
                                     (__tmp157568
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156476_
                                         _n156511_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157568
                                 _code156516_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156490156503_))
                          (let ((_hd156494156521_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156490156503_)))
                                (_tl156495156523_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156490156503_))))
                            (let ((_phi-ctx156526_ _hd156494156521_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156495156523_))
                                  (let ((_hd156496156528_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156495156523_)))
                                        (_tl156497156530_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156495156523_))))
                                    (let ((_phi156533_ _hd156496156528_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156497156530_))
                                          (let ((_hd156498156535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156497156530_)))
                                                (_tl156499156537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156497156530_))))
                                            (let ((_n156540_ _hd156498156535_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156499156537_))
                                                  (let ((_hd156500156542_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156499156537_)))
                                                        (_tl156501156544_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156499156537_))))
                                                    (let ((_code156547_
                                                           _hd156500156542_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156501156544_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156493156518_
                                                             _code156547_
                                                             _n156540_
                                                             _phi156533_
                                                             _phi-ctx156526_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156492156507_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156492156507_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156492156507_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156492156507_)))))
                          (let () (declare (not safe)) (_E156492156507_)))))))
          (let ((_g157569_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156476_))))
            (begin
              (let ((_g157570_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157569_)
                           (##vector-length _g157569_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157570_ 2)))
                    (error "Context expects 2 values" _g157570_)))
              (let ((_ssi-code156481_
                     (let () (declare (not safe)) (##vector-ref _g157569_ 0)))
                    (_phi-code156482_
                     (let () (declare (not safe)) (##vector-ref _g157569_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156478_ _ssi-code156481_))
                  (let ((_threads156487_
                         (map (lambda (_code156484_)
                                (let ((__tmp157571
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156479_
                                            _code156484_)))))
                                  (declare (not safe))
                                  (spawn __tmp157571)))
                              _phi-code156482_)))
                    (for-each gxc#join! _threads156487_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156459_)
        (let* ((_path156461_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156459_ '#f '".ssxi.ss")))
               (_code156463_
                (let ((__tmp157572
                       (##structure-ref
                        _ctx156459_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157572)))
               (_idstr156465_
                (symbol->string
                 (##structure-ref _ctx156459_ '1 gx#expander-context::t '#f)))
               (_pkg156472_
                (let ((_$e156467_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156465_ '#\/))))
                  (if _$e156467_
                      ((lambda (_x156470_)
                         (string->symbol
                          (substring _idstr156465_ '0 _x156470_)))
                       _$e156467_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156461_))
          (let ((__tmp157573
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156472_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156472_))
                       '#!void)
                   (newline)
                   (pretty-print _code156463_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156461_ __tmp157573)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156452_)
        (let* ((_state156454_
                (let ((__obj157334
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157334 _ctx156452_)
                  __obj157334))
               (_ssi-code156456_
                (let ((__tmp157574
                       (##structure-ref
                        _ctx156452_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp157574
                   'state:
                   _state156454_))))
          (values _ssi-code156456_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156454_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156445_)
        (let ((_lifts156447_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157577
                 (lambda ()
                   (let ((_code156450_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156445_))))
                     (if (let ((__tmp157578 (unbox _lifts156447_)))
                           (declare (not safe))
                           (null? __tmp157578))
                         _code156450_
                         (let ((__tmp157579
                                (let ((__tmp157581
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156450_ '())))
                                      (__tmp157580
                                       (reverse (unbox _lifts156447_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157581 __tmp157580))))
                           (declare (not safe))
                           (cons 'begin __tmp157579))))))
                (__tmp157576
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157575
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157577
             gxc#current-compile-lift
             _lifts156447_
             gxc#current-compile-marks
             __tmp157576
             gxc#current-compile-identifiers
             __tmp157575)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156441_)
        (let ((_modules156443_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157582
                 (##structure-ref _ctx156441_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157582 'modules: _modules156443_))
          (reverse (unbox _modules156443_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156424_ _code156425_ _phi?156426_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156424_))
        (let ((__tmp157583
               (lambda ()
                 (pretty-print
                  (let ((__tmp157584
                         (let ((__tmp157591
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157585
                                (let ((__tmp157590
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157586
                                       (let ((__tmp157589
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157587
                                              (let ((__tmp157588
                                                     (if _phi?156426_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157588))))
                                         (declare (not safe))
                                         (cons __tmp157589 __tmp157587))))
                                  (declare (not safe))
                                  (cons __tmp157590 __tmp157586))))
                           (declare (not safe))
                           (cons __tmp157591 __tmp157585))))
                    (declare (not safe))
                    (cons 'declare __tmp157584)))
                 (pretty-print _code156425_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156424_ __tmp157583))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156424_ _phi?156426_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156424_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156432_ _code156433_)
        (let ((_phi?156435_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156432_ _code156433_ _phi?156435_))))
    (define gxc#compile-scm-file
      (lambda _g157593_
        (let ((_g157592_ (let () (declare (not safe)) (##length _g157593_))))
          (cond ((let () (declare (not safe)) (##fx= _g157592_ 2))
                 (apply (lambda (_path156432_ _code156433_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156432_
                             _code156433_)))
                        _g157593_))
                ((let () (declare (not safe)) (##fx= _g157592_ 3))
                 (apply (lambda (_path156437_ _code156438_ _phi?156439_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156437_
                             _code156438_
                             _phi?156439_)))
                        _g157593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157593_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156325_)
        (let _lp156327_ ((_rest156329_ (gxc#current-compile-gsc-options))
                         (_opts156330_ '()))
          (let* ((_rest156331156351_ _rest156329_)
                 (_else156335156359_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156325_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157594
                               (let ((__tmp157595 (reverse _opts156330_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157595))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157594))
                        (reverse _opts156330_)))))
            (let ((_K156345156402_
                   (lambda (_rest156400_)
                     (let ()
                       (declare (not safe))
                       (_lp156327_ _rest156400_ _opts156330_))))
                  (_K156340156384_
                   (lambda (_rest156382_)
                     (let ()
                       (declare (not safe))
                       (_lp156327_ _rest156382_ _opts156330_))))
                  (_K156337156366_
                   (lambda (_rest156363_ _opt156364_)
                     (let ((__tmp157596
                            (let ()
                              (declare (not safe))
                              (cons _opt156364_ _opts156330_))))
                       (declare (not safe))
                       (_lp156327_ _rest156363_ __tmp157596)))))
              (if (let () (declare (not safe)) (##pair? _rest156331156351_))
                  (let ((_tl156347156407_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156331156351_)))
                        (_hd156346156405_
                         (let ()
                           (declare (not safe))
                           (##car _rest156331156351_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156346156405_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156347156407_))
                            (let* ((_tl156349156410_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156347156407_)))
                                   (_rest156413_ _tl156349156410_))
                              (declare (not safe))
                              (_K156345156402_ _rest156413_))
                            (let ((_opt156374_ _hd156346156405_)
                                  (_rest156376_ _tl156347156407_))
                              (let ()
                                (declare (not safe))
                                (_K156337156366_ _rest156376_ _opt156374_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156346156405_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156347156407_))
                                (let* ((_tl156344156392_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156347156407_)))
                                       (_rest156395_ _tl156344156392_))
                                  (declare (not safe))
                                  (_K156340156384_ _rest156395_))
                                (let ((_opt156374_ _hd156346156405_)
                                      (_rest156376_ _tl156347156407_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156337156366_
                                     _rest156376_
                                     _opt156374_))))
                            (let ((_opt156374_ _hd156346156405_)
                                  (_rest156376_ _tl156347156407_))
                              (let ()
                                (declare (not safe))
                                (_K156337156366_ _rest156376_ _opt156374_))))))
                  (let () (declare (not safe)) (_else156335156359_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156419_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156419_))))
    (define gxc#gsc-link-options
      (lambda _g157598_
        (let ((_g157597_ (let () (declare (not safe)) (##length _g157598_))))
          (cond ((let () (declare (not safe)) (##fx= _g157597_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157598_))
                ((let () (declare (not safe)) (##fx= _g157597_ 1))
                 (apply (lambda (_phi?156421_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156421_)))
                        _g157598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157598_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156226_)
        (let _lp156228_ ((_rest156230_ (gxc#current-compile-gsc-options))
                         (_opts156231_ '()))
          (let* ((_rest156232156252_ _rest156230_)
                 (_else156236156260_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156226_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157599
                               (let ((__tmp157600 (reverse _opts156231_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157600))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157599))
                        (reverse _opts156231_)))))
            (let ((_K156246156299_
                   (lambda (_rest156296_ _opt156297_)
                     (let ((__tmp157601
                            (let ((__tmp157602
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156231_))))
                              (declare (not safe))
                              (cons _opt156297_ __tmp157602))))
                       (declare (not safe))
                       (_lp156228_ _rest156296_ __tmp157601))))
                  (_K156241156280_
                   (lambda (_rest156278_)
                     (let ()
                       (declare (not safe))
                       (_lp156228_ _rest156278_ _opts156231_))))
                  (_K156238156266_
                   (lambda (_rest156264_)
                     (let ()
                       (declare (not safe))
                       (_lp156228_ _rest156264_ _opts156231_)))))
              (if (let () (declare (not safe)) (##pair? _rest156232156252_))
                  (let ((_tl156248156304_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156232156252_)))
                        (_hd156247156302_
                         (let ()
                           (declare (not safe))
                           (##car _rest156232156252_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156247156302_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156248156304_))
                            (let ((_tl156250156309_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156248156304_)))
                                  (_hd156249156307_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156248156304_))))
                              (let ((_opt156312_ _hd156249156307_)
                                    (_rest156314_ _tl156250156309_))
                                (let ()
                                  (declare (not safe))
                                  (_K156246156299_ _rest156314_ _opt156312_))))
                            (let ((_rest156272_ _tl156248156304_))
                              (declare (not safe))
                              (_K156238156266_ _rest156272_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156247156302_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156248156304_))
                                (let* ((_tl156245156288_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156248156304_)))
                                       (_rest156291_ _tl156245156288_))
                                  (declare (not safe))
                                  (_K156241156280_ _rest156291_))
                                (let ((_rest156272_ _tl156248156304_))
                                  (declare (not safe))
                                  (_K156238156266_ _rest156272_)))
                            (let ((_rest156272_ _tl156248156304_))
                              (declare (not safe))
                              (_K156238156266_ _rest156272_)))))
                  (let () (declare (not safe)) (_else156236156260_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156320_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156320_))))
    (define gxc#gsc-cc-options
      (lambda _g157604_
        (let ((_g157603_ (let () (declare (not safe)) (##length _g157604_))))
          (cond ((let () (declare (not safe)) (##fx= _g157603_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157604_))
                ((let () (declare (not safe)) (##fx= _g157603_ 1))
                 (apply (lambda (_phi?156322_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156322_)))
                        _g157604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157604_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156221_)
        (let* ((_user-staticdir156223_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157605
                (let ((__tmp157606
                       (string-append
                        '"-I "
                        _staticdir156221_
                        '" -I "
                        _user-staticdir156223_)))
                  (declare (not safe))
                  (cons __tmp157606 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157605))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156133_ ((_rest156135_ (gxc#current-compile-gsc-options))
                         (_opts156136_ '()))
          (let* ((_rest156137156157_ _rest156135_)
                 (_else156141156165_ (lambda () _opts156136_)))
            (let ((_K156151156208_
                   (lambda (_rest156206_)
                     (let ()
                       (declare (not safe))
                       (_lp156133_ _rest156206_ _opts156136_))))
                  (_K156146156186_
                   (lambda (_rest156183_ _opt156184_)
                     (let ((__tmp157607
                            (append _opts156136_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt156184_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp156133_ _rest156183_ __tmp157607))))
                  (_K156143156171_
                   (lambda (_rest156169_)
                     (let ()
                       (declare (not safe))
                       (_lp156133_ _rest156169_ _opts156136_)))))
              (if (let () (declare (not safe)) (##pair? _rest156137156157_))
                  (let ((_tl156153156213_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156137156157_)))
                        (_hd156152156211_
                         (let ()
                           (declare (not safe))
                           (##car _rest156137156157_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156152156211_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156153156213_))
                            (let* ((_tl156155156216_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156153156213_)))
                                   (_rest156219_ _tl156155156216_))
                              (declare (not safe))
                              (_K156151156208_ _rest156219_))
                            (let ((_rest156177_ _tl156153156213_))
                              (declare (not safe))
                              (_K156143156171_ _rest156177_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156152156211_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156153156213_))
                                (let ((_tl156150156196_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156153156213_)))
                                      (_hd156149156194_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156153156213_))))
                                  (let ((_opt156199_ _hd156149156194_)
                                        (_rest156201_ _tl156150156196_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156146156186_
                                       _rest156201_
                                       _opt156199_))))
                                (let ((_rest156177_ _tl156153156213_))
                                  (declare (not safe))
                                  (_K156143156171_ _rest156177_)))
                            (let ((_rest156177_ _tl156153156213_))
                              (declare (not safe))
                              (_K156143156171_ _rest156177_)))))
                  (let () (declare (not safe)) (_else156141156165_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156130_)
        (let ((__tmp157608
               (let () (declare (not safe)) (string-empty? _str156130_))))
          (declare (not safe))
          (not __tmp157608))))
    (define gxc#gsc-compile-file
      (lambda (_path156098_ _phi?156099_)
        (letrec ((_gsc-link-path156101_
                  (lambda (_base-path156122_)
                    (let _lp156124_ ((_n156126_ '1))
                      (let ((_path156128_
                             (string-append
                              _base-path156122_
                              '".o"
                              (number->string _n156126_))))
                        (if (file-exists? _path156128_)
                            (let ((__tmp157609
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156126_ '1))))
                              (declare (not safe))
                              (_lp156124_ __tmp157609))
                            _path156128_))))))
          (let* ((_base-path156103_ (path-strip-extension _path156098_))
                 (_path-c156105_ (string-append _base-path156103_ '".c"))
                 (_path-o156107_ (string-append _base-path156103_ '".o"))
                 (_link-path156109_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156101_ _base-path156103_)))
                 (_link-path-c156111_ (string-append _link-path156109_ '".c"))
                 (_link-path-o156113_ (string-append _link-path156109_ '".o"))
                 (_gsc-link-opts156115_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156099_)))
                 (_gsc-cc-opts156117_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156099_)))
                 (_gcc-ld-opts156119_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157616 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157610
                   (let ((__tmp157611
                          (let ((__tmp157612
                                 (let ((__tmp157613
                                        (let ((__tmp157614
                                               (let ((__tmp157615
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156098_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157615
                                                         _gsc-link-opts156115_))))
                                          (declare (not safe))
                                          (cons _link-path-c156111_
                                                __tmp157614))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157613))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157612))))
                     (declare (not safe))
                     (cons '"-link" __tmp157611))))
              (declare (not safe))
              (gxc#invoke __tmp157616 __tmp157610 'stdout-redirection: '#t))
            (let ((__tmp157623 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157617
                   (let ((__tmp157618
                          (let ((__tmp157619
                                 (let ((__tmp157620
                                        (let ((__tmp157621
                                               (let ((__tmp157622
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156111_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156105_
                                                       __tmp157622))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157621
                                                  _gsc-cc-opts156117_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157620))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157619))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157618))))
              (declare (not safe))
              (gxc#invoke __tmp157623 __tmp157617 'stdout-redirection: '#t))
            (let ((__tmp157629 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157624
                   (let ((__tmp157625
                          (let ((__tmp157626
                                 (let ((__tmp157627
                                        (let ((__tmp157628
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156113_
                                                       _gcc-ld-opts156119_))))
                                          (declare (not safe))
                                          (cons _path-o156107_ __tmp157628))))
                                   (declare (not safe))
                                   (cons _link-path156109_ __tmp157627))))
                            (declare (not safe))
                            (cons '"-o" __tmp157626))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157625))))
              (declare (not safe))
              (gxc#invoke __tmp157629 __tmp157624))
            (for-each
             delete-file
             (let ((__tmp157630
                    (let ((__tmp157631
                           (let ((__tmp157632
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156113_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156111_ __tmp157632))))
                      (declare (not safe))
                      (cons _path-o156107_ __tmp157631))))
               (declare (not safe))
               (cons _path-c156105_ __tmp157630)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156069_ _n156070_ _ext156071_)
        (letrec ((_module-relative-path156073_
                  (lambda (_ctx156096_)
                    (path-strip-directory
                     (let ((__tmp157633
                            (##structure-ref
                             _ctx156096_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157633)))))
                 (_module-source-directory156074_
                  (lambda (_ctx156092_)
                    (path-directory
                     (let ((_mpath156094_
                            (##structure-ref
                             _ctx156092_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156094_))
                           _mpath156094_
                           (last _mpath156094_))))))
                 (_section-string156075_
                  (lambda (_n156090_)
                    (if (let () (declare (not safe)) (number? _n156090_))
                        (number->string _n156090_)
                        (if (let () (declare (not safe)) (symbol? _n156090_))
                            (symbol->string _n156090_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156090_))
                                _n156090_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156090_)))))))
                 (_file-name156076_
                  (lambda (_path156088_)
                    (if _n156070_
                        (string-append
                         _path156088_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156075_ _n156070_))
                         _ext156071_)
                        (string-append _path156088_ _ext156071_))))
                 (_file-path156077_
                  (lambda ()
                    (let ((_$e156083_ (gxc#current-compile-output-dir)))
                      (if _$e156083_
                          ((lambda (_outdir156086_)
                             (path-expand
                              (let ((__tmp157634
                                     (let ((__tmp157635
                                            (##structure-ref
                                             _ctx156069_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157635))))
                                (declare (not safe))
                                (_file-name156076_ __tmp157634))
                              _outdir156086_))
                           _$e156083_)
                          (path-expand
                           (let ((__tmp157636
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156073_
                                     _ctx156069_))))
                             (declare (not safe))
                             (_file-name156076_ __tmp157636))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156074_
                              _ctx156069_))))))))
          (let ((_path156079_
                 (let () (declare (not safe)) (_file-path156077_))))
            (let ((__tmp157637
                   (lambda ()
                     (let ((__tmp157638 (path-directory _path156079_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157638)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157637))
            _path156079_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156051_)
        (letrec ((_file-name156053_
                  (lambda (_id156067_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156067_))
                     '".scm")))
                 (_file-path156054_
                  (lambda ()
                    (let* ((_file156060_
                            (let ((__tmp157639
                                   (##structure-ref
                                    _ctx156051_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156053_ __tmp157639)))
                           (_$e156062_ (gxc#current-compile-output-dir)))
                      (if _$e156062_
                          ((lambda (_outdir156065_)
                             (path-expand
                              _file156060_
                              (path-expand '"static" _outdir156065_)))
                           _$e156062_)
                          (path-expand _file156060_ '"static"))))))
          (let ((_path156056_
                 (let () (declare (not safe)) (_file-path156054_))))
            (let ((__tmp157640
                   (lambda ()
                     (let ((__tmp157641 (path-directory _path156056_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157641)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157640))
            _path156056_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156045_ _opts156046_)
        (let ((_$e156048_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156046_))))
          (if _$e156048_
              (values _$e156048_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156045_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156038_)
        (if (let () (declare (not safe)) (string? _idstr156038_))
            (let* ((_str156040_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156038_)))
                   (_strs156042_
                    (let ()
                      (declare (not safe))
                      (string-split _str156040_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156042_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156038_))
                (let ((__tmp157642 (symbol->string _idstr156038_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157642))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156038_))))))
    (define gxc#invoke__%
      (lambda (_g157643_
               _stdout-redirection155999156003_
               _stderr-redirection156000156005_
               _program156007_
               _args156008_)
        (let* ((_stdout-redirection156010_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection155999156003_ absent-value))
                    '#f
                    _stdout-redirection155999156003_))
               (_stderr-redirection156012_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156000156005_ absent-value))
                    '#f
                    _stderr-redirection156000156005_)))
          (let ((__tmp157644
                 (let ()
                   (declare (not safe))
                   (cons _program156007_ _args156008_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157644))
          (let* ((_proc156014_
                  (open-process
                   (let ((__tmp157645
                          (let ((__tmp157646
                                 (let ((__tmp157647
                                        (let ((__tmp157648
                                               (let ((__tmp157649
                                                      (let ((__tmp157650
                                                             (let ((__tmp157651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156012_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp157651))))
                (declare (not safe))
                (cons _stdout-redirection156010_ __tmp157650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp157649))))
                                          (declare (not safe))
                                          (cons _args156008_ __tmp157648))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp157647))))
                            (declare (not safe))
                            (cons _program156007_ __tmp157646))))
                     (declare (not safe))
                     (cons 'path: __tmp157645))))
                 (_output156019_
                  (if (or _stdout-redirection156010_
                          _stderr-redirection156012_)
                      (read-line _proc156014_ '#f)
                      '#f)))
            (let ((_status156022_ (process-status _proc156014_)))
              (close-port _proc156014_)
              (if (let () (declare (not safe)) (zero? _status156022_))
                  '#!void
                  (begin
                    (display _output156019_)
                    (let ((__tmp157652
                           (let ()
                             (declare (not safe))
                             (cons _program156007_ _args156008_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp157652
                       _status156022_)))))))))
    (define gxc#invoke__@
      (lambda (_keys155998156027_ . _args156029_)
        (apply gxc#invoke__%
               _keys155998156027_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys155998156027_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys155998156027_
                  'stderr-redirection:
                  absent-value))
               _args156029_)))
    (define gxc#invoke
      (lambda _args156001156035_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156001156035_)))
    (define gxc#join!
      (lambda (_thread155992_)
        (let ((__tmp157654
               (lambda (_exn155994_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn155994_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn155994_)))
                     (raise _exn155994_))))
              (__tmp157653 (lambda () (thread-join! _thread155992_))))
          (declare (not safe))
          (with-catch __tmp157654 __tmp157653))))))
