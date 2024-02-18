(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708289488)
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
      (lambda (_path297146_ _fun297147_)
        (with-output-to-file
         (let ((__tmp301307
                (let ()
                  (declare (not safe))
                  (cons _path297146_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp301307))
         _fun297147_)))
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
      (lambda (_gerbil-libdir297141_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir297141_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
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
      (lambda (_dir297139_) (delete-file-or-directory _dir297139_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath297113_ _opts297114_)
        (if (let () (declare (not safe)) (string? _srcpath297113_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath297113_)))
        (let ((_outdir297116_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts297114_)))
              (_invoke-gsc?297117_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts297114_)))
              (_gsc-options297118_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts297114_)))
              (_keep-scm?297119_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts297114_)))
              (_verbosity297120_
               (let () (declare (not safe)) (pgetq 'verbose: _opts297114_)))
              (_optimize297121_
               (let () (declare (not safe)) (pgetq 'optimize: _opts297114_)))
              (_debug297122_
               (let () (declare (not safe)) (pgetq 'debug: _opts297114_)))
              (_gen-ssxi297123_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts297114_))))
          (if _outdir297116_
              (let ((__tmp301308
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir297116_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp301308))
              '#!void)
          (if _optimize297121_
              (let ((__tmp301309
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp301309))
              '#!void)
          (let ((__tmp301313
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath297113_))
                   (let ((__tmp301314
                          (let ((__tmp301315
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath297113_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp301315))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp301314))))
                (__tmp301312
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp301310
                 (let ((__tmp301311
                        (let ()
                          (declare (not safe))
                          (cons _srcpath297113_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp301311))))
            (declare (not safe))
            (call-with-parameters
             __tmp301313
             gxc#current-compile-output-dir
             _outdir297116_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?297117_
             gxc#current-compile-gsc-options
             _gsc-options297118_
             gxc#current-compile-keep-scm
             _keep-scm?297119_
             gxc#current-compile-verbose
             _verbosity297120_
             gxc#current-compile-optimize
             _optimize297121_
             gxc#current-compile-debug
             _debug297122_
             gxc#current-compile-generate-ssxi
             _gen-ssxi297123_
             gxc#current-compile-timestamp
             __tmp301312
             gxc#current-compile-context
             __tmp301310
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath297132_)
        (let ((_opts297134_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath297132_ _opts297134_))))
    (define gxc#compile-module
      (lambda _g301317_
        (let ((_g301316_ (let () (declare (not safe)) (##length _g301317_))))
          (cond ((let () (declare (not safe)) (##fx= _g301316_ 1))
                 (apply (lambda (_srcpath297132_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath297132_)))
                        _g301317_))
                ((let () (declare (not safe)) (##fx= _g301316_ 2))
                 (apply (lambda (_srcpath297136_ _opts297137_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath297136_
                             _opts297137_)))
                        _g301317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g301317_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath297089_ _opts297090_)
        (if (let () (declare (not safe)) (string? _srcpath297089_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath297089_)))
        (let ((_outdir297092_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts297090_)))
              (_invoke-gsc?297093_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts297090_)))
              (_gsc-options297094_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts297090_)))
              (_keep-scm?297095_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts297090_)))
              (_verbosity297096_
               (let () (declare (not safe)) (pgetq 'verbose: _opts297090_)))
              (_debug297097_
               (let () (declare (not safe)) (pgetq 'debug: _opts297090_))))
          (if _outdir297092_
              (let ((__tmp301318
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir297092_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp301318))
              '#!void)
          (let ((__tmp301322
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath297089_))
                   (let ((__tmp301323
                          (let ((__tmp301324
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath297089_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp301324))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp301323
                      _opts297090_))))
                (__tmp301321
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp301319
                 (let ((__tmp301320
                        (let ()
                          (declare (not safe))
                          (cons _srcpath297089_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp301320))))
            (declare (not safe))
            (call-with-parameters
             __tmp301322
             gxc#current-compile-output-dir
             _outdir297092_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?297093_
             gxc#current-compile-gsc-options
             _gsc-options297094_
             gxc#current-compile-keep-scm
             _keep-scm?297095_
             gxc#current-compile-verbose
             _verbosity297096_
             gxc#current-compile-debug
             _debug297097_
             gxc#current-compile-timestamp
             __tmp301321
             gxc#current-compile-context
             __tmp301319
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath297105_)
        (let ((_opts297107_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath297105_ _opts297107_))))
    (define gxc#compile-exe
      (lambda _g301326_
        (let ((_g301325_ (let () (declare (not safe)) (##length _g301326_))))
          (cond ((let () (declare (not safe)) (##fx= _g301325_ 1))
                 (apply (lambda (_srcpath297105_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath297105_)))
                        _g301326_))
                ((let () (declare (not safe)) (##fx= _g301325_ 2))
                 (apply (lambda (_srcpath297109_ _opts297110_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath297109_ _opts297110_)))
                        _g301326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g301326_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx297085_ _opts297086_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts297086_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx297085_
               _opts297086_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx297085_
               _opts297086_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx296968_ _opts296969_)
        (letrec ((_generate-stub296971_
                  (lambda (_builtin-modules297081_)
                    (let ((_mod-main297083_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx296968_ 'main))))
                      (write (let ((__tmp301327
                                    (let ((__tmp301328
                                           (let ((__tmp301329
                                                  (let ((__tmp301330
                                                         (let ((__tmp301332
                                                                (let ((__tmp301333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules297081_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp301333)))
                       (__tmp301331
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp301332 __tmp301331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp301330))))
                                             (declare (not safe))
                                             (cons __tmp301329 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp301328))))
                               (declare (not safe))
                               (cons 'define __tmp301327)))
                      (write (let ((__tmp301334
                                    (let ((__tmp301373
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp301335
                                           (let ((__tmp301336
                                                  (let ((__tmp301337
                                                         (let ((__tmp301361
                                                                (let ((__tmp301362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp301363
                                      (let ((__tmp301371
                                             (let ((__tmp301372
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp301372)))
                                            (__tmp301364
                                             (let ((__tmp301365
                                                    (let ((__tmp301366
                                                           (let ((__tmp301367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301368
                                 (let ((__tmp301369
                                        (let ((__tmp301370
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp301370 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp301369))))
                            (declare (not safe))
                            (cons __tmp301368 '()))))
                     (declare (not safe))
                     (cons _mod-main297083_ __tmp301367))))
              (declare (not safe))
              (cons 'apply __tmp301366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301365 '()))))
                                        (declare (not safe))
                                        (cons __tmp301371 __tmp301364))))
                                 (declare (not safe))
                                 (cons '() __tmp301363))))
                          (declare (not safe))
                          (cons 'lambda __tmp301362)))
                       (__tmp301338
                        (let ((__tmp301339
                               (let ((__tmp301340
                                      (let ((__tmp301341
                                             (let ((__tmp301352
                                                    (let ((__tmp301353
                                                           (let ((__tmp301354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301355
                                 (let ((__tmp301356
                                        (let ((__tmp301357
                                               (let ((__tmp301358
                                                      (let ((__tmp301359
                                                             (let ((__tmp301360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp301360 '()))))
                (declare (not safe))
                (cons 'force-output __tmp301359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp301358 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp301357))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp301356))))
                            (declare (not safe))
                            (cons __tmp301355 '()))))
                     (declare (not safe))
                     (cons 'void __tmp301354))))
              (declare (not safe))
              (cons 'with-catch __tmp301353)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp301342
                                                    (let ((__tmp301343
                                                           (let ((__tmp301344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp301345
                                 (let ((__tmp301346
                                        (let ((__tmp301347
                                               (let ((__tmp301348
                                                      (let ((__tmp301349
                                                             (let ((__tmp301350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp301351
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp301351 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp301350))))
                (declare (not safe))
                (cons __tmp301349 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp301348))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp301347))))
                                   (declare (not safe))
                                   (cons __tmp301346 '()))))
                            (declare (not safe))
                            (cons 'void __tmp301345))))
                     (declare (not safe))
                     (cons 'with-catch __tmp301344))))
              (declare (not safe))
              (cons __tmp301343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp301352
                                                     __tmp301342))))
                                        (declare (not safe))
                                        (cons '() __tmp301341))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp301340))))
                          (declare (not safe))
                          (cons __tmp301339 '()))))
                   (declare (not safe))
                   (cons __tmp301361 __tmp301338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp301337))))
                                             (declare (not safe))
                                             (cons __tmp301336 '()))))
                                      (declare (not safe))
                                      (cons __tmp301373 __tmp301335))))
                               (declare (not safe))
                               (cons 'define __tmp301334)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts296972_
                  (lambda (_libgerbil297079_)
                    (call-with-input-file
                     (string-append _libgerbil297079_ '".ldd")
                     read)))
                 (_replace-extension296973_
                  (lambda (_path297076_ _ext297077_)
                    (string-append
                     (path-strip-extension _path297076_)
                     _ext297077_)))
                 (_not-exclude-module?296974_
                  (lambda (_ctx297072_)
                    (let ((_id-str297074_
                           (symbol->string
                            (##structure-ref
                             _ctx297072_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp301375
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str297074_))))
                            (declare (not safe))
                            (not __tmp301375))
                          (let ((__tmp301374
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str297074_))))
                            (declare (not safe))
                            (not __tmp301374))
                          '#f))))
                 (_not-file-empty?296975_
                  (lambda (_path297070_)
                    (let ((__tmp301376
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path297070_))))
                      (declare (not safe))
                      (not __tmp301376))))
                 (_compile-stub296976_
                  (lambda (_output-scm296983_ _output-bin296984_)
                    (let* ((_gerbil-home296986_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir296988_
                            (path-expand '"lib" _gerbil-home296986_))
                           (_gerbil-staticdir296990_
                            (path-expand '"static" _gerbil-libdir296988_))
                           (_gxlink296992_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir296988_))
                           (_tmp296994_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path296998_
                            (lambda (_f296996_)
                              (path-expand
                               (path-strip-directory _f296996_)
                               _tmp296994_)))
                           (_deps297000_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx296968_)))
                           (_deps297002_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?296974_
                                      _deps297000_)))
                           (_src-deps-scm297004_
                            (map gxc#find-static-module-file _deps297002_))
                           (_src-deps-scm297006_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?296975_
                                      _src-deps-scm297004_)))
                           (_src-deps-scm297008_
                            (map path-expand _src-deps-scm297006_))
                           (_deps-scm297010_
                            (map _tmp-path296998_ _src-deps-scm297008_))
                           (_deps-c297016_
                            (map (lambda (_g297011297013_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension296973_
                                      _g297011297013_
                                      '".c")))
                                 _deps-scm297010_))
                           (_deps-o297022_
                            (map (lambda (_g297017297019_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension296973_
                                      _g297017297019_
                                      '".o")))
                                 _deps-scm297010_))
                           (_src-bin-scm297024_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx296968_)))
                           (_src-bin-scm297026_
                            (path-expand _src-bin-scm297024_))
                           (_bin-scm297028_
                            (let ()
                              (declare (not safe))
                              (_tmp-path296998_ _src-bin-scm297026_)))
                           (_bin-c297030_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296973_
                               _bin-scm297028_
                               '".c")))
                           (_bin-o297032_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296973_
                               _bin-scm297028_
                               '".o")))
                           (_output-bin297034_
                            (path-expand _output-bin296984_))
                           (_output-scm297036_
                            (path-expand _output-scm296983_))
                           (_output-c297038_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296973_
                               _output-scm297036_
                               '".c")))
                           (_output-o297040_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296973_
                               _output-scm297036_
                               '".o")))
                           (_output_-c297042_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296973_
                               _output-scm297036_
                               '"_.c")))
                           (_output_-o297044_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296973_
                               _output-scm297036_
                               '"_.o")))
                           (_gsc-link-opts297046_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts297048_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts297050_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir296990_)))
                           (_output-ld-opts297052_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a297054_
                            (path-expand '"libgerbil.a" _gerbil-libdir296988_))
                           (_libgerbil.so297056_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir296988_))
                           (_libgerbil-ld-opts297058_
                            (if (file-exists? _libgerbil.so297056_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts296972_
                                   _libgerbil.so297056_))
                                (if (file-exists? _libgerbil.a297054_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts296972_
                                       _libgerbil.a297054_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a297054_
                                       _libgerbil.so297056_)))))
                           (_rpath297060_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir296988_)))
                           (_builtin-modules297064_
                            (map (lambda (_mod297062_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod297062_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx296968_ _deps297002_)))))
                      (let ((__tmp301377
                             (lambda ()
                               (let ((__tmp301378
                                      (path-directory _output-bin297034_)))
                                 (declare (not safe))
                                 (create-directory* __tmp301378)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp301377))
                      (let ((__tmp301379
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub296971_
                                  _builtin-modules297064_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm297036_
                         __tmp301379))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp301380
                                   (lambda () (create-directory _tmp296994_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp301380))
                            (for-each
                             copy-file
                             _src-deps-scm297008_
                             _deps-scm297010_)
                            (copy-file _src-bin-scm297026_ _bin-scm297028_)
                            (let ((__tmp301388
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp301381
                                   (let ((__tmp301382
                                          (let ((__tmp301383
                                                 (let ((__tmp301384
                                                        (let ((__tmp301385
                                                               (let ((__tmp301386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp301387
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm297036_ '()))))
                                (declare (not safe))
                                (cons _bin-scm297028_ __tmp301387))))
                         (declare (not safe))
                         (foldr1 cons __tmp301386 _deps-scm297010_))))
                  (declare (not safe))
                  (foldr1 cons __tmp301385 _gsc-link-opts297046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink296992_
                                                         __tmp301384))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp301383))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp301382))))
                              (declare (not safe))
                              (gxc#invoke __tmp301388 __tmp301381))
                            (let ((__tmp301396
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp301389
                                   (let ((__tmp301390
                                          (let ((__tmp301391
                                                 (let ((__tmp301392
                                                        (let ((__tmp301393
                                                               (let ((__tmp301394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp301395
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c297042_ '()))))
                                (declare (not safe))
                                (cons _output-c297038_ __tmp301395))))
                         (declare (not safe))
                         (cons _bin-c297030_ __tmp301394))))
                  (declare (not safe))
                  (foldr1 cons __tmp301393 _deps-c297016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp301392
                                                           _gsc-static-opts297050_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp301391
                                                    _gsc-cc-opts297048_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp301390))))
                              (declare (not safe))
                              (gxc#invoke __tmp301396 __tmp301389))
                            (let ((__tmp301409
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp301397
                                   (let ((__tmp301398
                                          (let ((__tmp301399
                                                 (let ((__tmp301400
                                                        (let ((__tmp301401
                                                               (let ((__tmp301402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp301403
                                     (let ((__tmp301404
                                            (let ((__tmp301405
                                                   (let ((__tmp301406
                                                          (let ((__tmp301407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp301408
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts297058_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp301408))))
                    (declare (not safe))
                    (cons _gerbil-libdir296988_ __tmp301407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp301406))))
                                              (declare (not safe))
                                              (cons _rpath297060_
                                                    __tmp301405))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp301404
                                               _output-ld-opts297052_))))
                                (declare (not safe))
                                (cons _output_-o297044_ __tmp301403))))
                         (declare (not safe))
                         (cons _output-o297040_ __tmp301402))))
                  (declare (not safe))
                  (cons _bin-o297032_ __tmp301401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp301400
                                                           _deps-o297022_))))
                                            (declare (not safe))
                                            (cons _output-bin297034_
                                                  __tmp301399))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp301398))))
                              (declare (not safe))
                              (gxc#invoke __tmp301409 __tmp301397))
                            (for-each
                             delete-file
                             (let ((__tmp301410
                                    (let ((__tmp301411
                                           (let ((__tmp301412
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o297044_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o297040_
                                                   __tmp301412))))
                                      (declare (not safe))
                                      (cons _output_-c297042_ __tmp301411))))
                               (declare (not safe))
                               (cons _output-c297038_ __tmp301410)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp296994_)))
                          '#!void)))))
          (let* ((_output-bin296978_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx296968_ _opts296969_)))
                 (_output-scm296980_
                  (string-append _output-bin296978_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub296976_ _output-scm296980_ _output-bin296978_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm296980_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx296793_ _opts296794_)
        (letrec ((_reset-declare296796_
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
                 (_generate-stub296797_
                  (lambda (_deps296959_)
                    (let ((_mod-main296961_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx296793_ 'main)))
                          (_reset-decl296962_
                           (let ()
                             (declare (not safe))
                             (_reset-declare296796_)))
                          (_user-decl296963_
                           (let ()
                             (declare (not safe))
                             (_user-declare296798_))))
                      (for-each
                       (lambda (_dep296965_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl296962_)
                         (newline)
                         (if _user-decl296963_
                             (begin (write _user-decl296963_) (newline))
                             '#!void)
                         (write (let ((__tmp301413
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep296965_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp301413)))
                         (newline))
                       _deps296959_)
                      (write (let ((__tmp301414
                                    (let ((__tmp301427
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp301415
                                           (let ((__tmp301423
                                                  (let ((__tmp301424
                                                         (let ((__tmp301425
                                                                (let ((__tmp301426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp301426))))
                   (declare (not safe))
                   (cons __tmp301425 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp301424)))
                                                 (__tmp301416
                                                  (let ((__tmp301417
                                                         (let ((__tmp301418
                                                                (let ((__tmp301419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp301420
                                      (let ((__tmp301421
                                             (let ((__tmp301422
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp301422 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp301421))))
                                 (declare (not safe))
                                 (cons __tmp301420 '()))))
                          (declare (not safe))
                          (cons _mod-main296961_ __tmp301419))))
                   (declare (not safe))
                   (cons 'apply __tmp301418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp301417 '()))))
                                             (declare (not safe))
                                             (cons __tmp301423 __tmp301416))))
                                      (declare (not safe))
                                      (cons __tmp301427 __tmp301415))))
                               (declare (not safe))
                               (cons 'define __tmp301414)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare296798_
                  (lambda ()
                    (let* ((_gsc-opts296864_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts296794_)))
                           (_gsc-prelude296866_
                            (if _gsc-opts296864_
                                (member '"-prelude" _gsc-opts296864_)
                                '#f))
                           (_gsc-prelude296868_
                            (if _gsc-prelude296866_
                                (read (open-input-string
                                       (cadr _gsc-prelude296866_)))
                                '#f)))
                      (let _lp296871_ ((_rest296873_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude296868_ '())))
                                       (_user-decls296874_ '()))
                        (let* ((_rest296875296883_ _rest296873_)
                               (_else296877296891_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls296874_))
                                      '#f
                                      (let ((__tmp301428
                                             (reverse _user-decls296874_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp301428)))))
                               (_K296879296947_
                                (lambda (_rest296894_ _expr296895_)
                                  (let* ((_expr296896296908_ _expr296895_)
                                         (_else296899296916_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp296871_
                                               _rest296894_
                                               _user-decls296874_)))))
                                    (let ((_K296904296937_
                                           (lambda (_decls296935_)
                                             (let ((__tmp301429
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls296874_
                                                              _decls296935_))))
                                               (declare (not safe))
                                               (_lp296871_
                                                _rest296894_
                                                __tmp301429))))
                                          (_K296901296922_
                                           (lambda (_exprs296920_)
                                             (let ((__tmp301430
                                                    (append _exprs296920_
                                                            _rest296894_)))
                                               (declare (not safe))
                                               (_lp296871_
                                                __tmp301430
                                                _user-decls296874_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr296896296908_))
                                          (let ((_tl296906296942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr296896296908_)))
                                                (_hd296905296940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr296896296908_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd296905296940_
                                                         'declare))
                                                (let ((_decls296945_
                                                       _tl296906296942_))
                                                  (declare (not safe))
                                                  (_K296904296937_
                                                   _decls296945_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd296905296940_
                                                             'begin))
                                                    (let ((_exprs296930_
                                                           _tl296906296942_))
                                                      (declare (not safe))
                                                      (_K296901296922_
                                                       _exprs296930_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else296899296916_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else296899296916_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest296875296883_))
                              (let ((_hd296880296950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest296875296883_)))
                                    (_tl296881296952_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest296875296883_))))
                                (let* ((_expr296955_ _hd296880296950_)
                                       (_rest296957_ _tl296881296952_))
                                  (declare (not safe))
                                  (_K296879296947_ _rest296957_ _expr296955_)))
                              (let ()
                                (declare (not safe))
                                (_else296877296891_))))))))
                 (_compile-stub296799_
                  (lambda (_output-scm296806_ _output-bin296807_)
                    (let* ((_gerbil-home296809_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir296811_
                            (path-expand '"lib" _gerbil-home296809_))
                           (_runtime296813_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp296815_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home296809_))
                           (_include-gambit-sharp296817_
                            (string-append
                             '"(include \""
                             _gambit-sharp296815_
                             '"\")"))
                           (_bin-scm296819_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx296793_)))
                           (_deps296821_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx296793_)))
                           (_deps296823_
                            (map gxc#find-static-module-file _deps296821_))
                           (_deps296828_
                            (let ((__tmp301431
                                   (lambda (_$obj296825_)
                                     (let ((__tmp301432
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj296825_))))
                                       (declare (not safe))
                                       (not __tmp301432)))))
                              (declare (not safe))
                              (filter __tmp301431 _deps296823_)))
                           (_deps296832_
                            (let ((__tmp301433
                                   (lambda (_f296830_)
                                     (let ((__tmp301434
                                            (member _f296830_
                                                    _runtime296813_)))
                                       (declare (not safe))
                                       (not __tmp301434)))))
                              (declare (not safe))
                              (filter __tmp301433 _deps296828_)))
                           (_output-base296834_
                            (string-append
                             (path-strip-extension _output-scm296806_)))
                           (_output-c296836_
                            (string-append _output-base296834_ '".c"))
                           (_output-o296838_
                            (string-append _output-base296834_ '".o"))
                           (_output-c_296840_
                            (string-append _output-base296834_ '"_.c"))
                           (_output-o_296842_
                            (string-append _output-base296834_ '"_.o"))
                           (_gsc-link-opts296844_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts296846_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts296848_
                            (let ((__tmp301435
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir296811_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp301435)))
                           (_output-ld-opts296850_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros296852_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp301437
                                       (let ((__tmp301438
                                              (let ((__tmp301439
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp296817_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp301439))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp301438))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp301437))
                                (let ((__tmp301436
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp296817_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp301436))))
                           (_gsc-link-opts296854_
                            (append _gsc-link-opts296844_
                                    _gsc-gx-macros296852_))
                           (_rpath296856_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir296811_)))
                           (_default-ld-options296858_
                            (let ((__tmp301440
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp301440))))
                      (let ((__tmp301441
                             (lambda ()
                               (let ((__tmp301442
                                      (path-directory _output-bin296807_)))
                                 (declare (not safe))
                                 (create-directory* __tmp301442)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp301441))
                      (let ((__tmp301443
                             (lambda ()
                               (let ((__tmp301444
                                      (let ((__tmp301445
                                             (let ((__tmp301446
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm296819_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp301446
                                                       _deps296832_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp301445
                                                _runtime296813_))))
                                 (declare (not safe))
                                 (_generate-stub296797_ __tmp301444)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm296806_
                         __tmp301443))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp301452
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp301447
                                   (let ((__tmp301448
                                          (let ((__tmp301449
                                                 (let ((__tmp301450
                                                        (let ((__tmp301451
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm296806_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp301451 _gsc-link-opts296854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_296840_
                                                         __tmp301450))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp301449))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp301448))))
                              (declare (not safe))
                              (gxc#invoke __tmp301452 __tmp301447))
                            (let ((__tmp301458
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp301453
                                   (let ((__tmp301454
                                          (let ((__tmp301455
                                                 (let ((__tmp301456
                                                        (let ((__tmp301457
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_296840_ '()))))
                  (declare (not safe))
                  (cons _output-c296836_ __tmp301457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp301456
                                                           _gsc-static-opts296848_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp301455
                                                    _gsc-cc-opts296846_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp301454))))
                              (declare (not safe))
                              (gxc#invoke __tmp301458 __tmp301453))
                            (let ((__tmp301468
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp301459
                                   (let ((__tmp301460
                                          (let ((__tmp301461
                                                 (let ((__tmp301462
                                                        (let ((__tmp301463
                                                               (let ((__tmp301464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp301465
                                     (let ((__tmp301466
                                            (let ((__tmp301467
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options296858_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir296811_
                                                    __tmp301467))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp301466))))
                                (declare (not safe))
                                (cons _rpath296856_ __tmp301465))))
                         (declare (not safe))
                         (foldr1 cons __tmp301464 _output-ld-opts296850_))))
                  (declare (not safe))
                  (cons _output-o_296842_ __tmp301463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o296838_
                                                         __tmp301462))))
                                            (declare (not safe))
                                            (cons _output-bin296807_
                                                  __tmp301461))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp301460))))
                              (declare (not safe))
                              (gxc#invoke __tmp301468 __tmp301459)))
                          '#!void)))))
          (let* ((_output-bin296801_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx296793_ _opts296794_)))
                 (_output-scm296803_
                  (string-append _output-bin296801_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub296799_ _output-scm296803_ _output-bin296801_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm296803_))))))
    (define gxc#find-export-binding
      (lambda (_ctx296743_ _id296744_)
        (let ((_$e296790_
               (let ((__tmp301470
                      (lambda (_e296745296747_)
                        (let* ((_g296749296759_ _e296745296747_)
                               (_else296751296767_ (lambda () '#f))
                               (_K296753296771_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g296749296759_
                                 'gx#module-export::t))
                              (let* ((_e296754296774_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g296749296759_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e296755296777_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g296749296759_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e296756296780_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g296749296759_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e296756296780_ '0))
                                    (let ((_e296757296783_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g296749296759_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g296785296787_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g296785296787_
                                                    _id296744_)))
                                           _e296757296783_)
                                          (let ()
                                            (declare (not safe))
                                            (_K296753296771_))
                                          (let ()
                                            (declare (not safe))
                                            (_else296751296767_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else296751296767_))))
                              (let ()
                                (declare (not safe))
                                (_else296751296767_))))))
                     (__tmp301469
                      (##structure-ref
                       _ctx296743_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp301470 __tmp301469))))
          (if _$e296790_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e296790_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx296735_ _id296736_)
        (let ((_$e296738_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx296735_ _id296736_))))
          (if _$e296738_
              ((lambda (_bind296741_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind296741_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id296736_)))
                 (##structure-ref _bind296741_ '1 gx#binding::t '#f))
               _$e296738_)
              (let ((__tmp301471
                     (##structure-ref
                      _ctx296735_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp301471
                 _id296736_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx296622_)
        (letrec* ((_ht296624_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template296625_
                   (lambda (_in296687_ _phi296688_)
                     (let ((_iphi296690_
                            (fx+ _phi296688_
                                 (##direct-structure-ref
                                  _in296687_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports296691_
                            (##structure-ref
                             (##direct-structure-ref
                              _in296687_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp296693_ ((_rest296695_ _imports296691_)
                                        (_r296696_ '()))
                         (let* ((_rest296697296705_ _rest296695_)
                                (_else296699296713_ (lambda () _r296696_))
                                (_K296701296723_
                                 (lambda (_rest296716_ _in296717_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in296717_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi296690_))
                                           (let ((__tmp301478
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in296717_
                                                          _r296696_))))
                                             (declare (not safe))
                                             (_lp296693_
                                              _rest296716_
                                              __tmp301478))
                                           (let ()
                                             (declare (not safe))
                                             (_lp296693_
                                              _rest296716_
                                              _r296696_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in296717_
                                              'gx#module-import::t))
                                           (let ((_iphi296719_
                                                  (fx+ _phi296688_
                                                       (##direct-structure-ref
                                                        _in296717_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi296719_))
                                                 (let ((__tmp301476
                                                        (let ((__tmp301477
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in296717_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp301477 _r296696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp296693_
                                                    _rest296716_
                                                    __tmp301476))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp296693_
                                                    _rest296716_
                                                    _r296696_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in296717_
                                                  'gx#import-set::t))
                                               (let ((_xphi296721_
                                                      (fx+ _iphi296690_
                                                           (##direct-structure-ref
                                                            _in296717_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi296721_))
                                                     (let ((__tmp301474
                                                            (let ((__tmp301475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in296717_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp301475 _r296696_))))
               (declare (not safe))
               (_lp296693_ _rest296716_ __tmp301474))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi296721_)
                                                         (let ((__tmp301472
                                                                (let ((__tmp301473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template296625_
                                  _in296717_
                                  _iphi296690_))))
                          (declare (not safe))
                          (foldl1 cons _r296696_ __tmp301473))))
                   (declare (not safe))
                   (_lp296693_ _rest296716_ __tmp301472))
                 (let ()
                   (declare (not safe))
                   (_lp296693_ _rest296716_ _r296696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp296693_
                                                  _rest296716_
                                                  _r296696_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest296697296705_))
                               (let ((_hd296702296726_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest296697296705_)))
                                     (_tl296703296728_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest296697296705_))))
                                 (let* ((_in296731_ _hd296702296726_)
                                        (_rest296733_ _tl296703296728_))
                                   (declare (not safe))
                                   (_K296701296723_ _rest296733_ _in296731_)))
                               (let ()
                                 (declare (not safe))
                                 (_else296699296713_))))))))
                  (_find-deps296626_
                   (lambda (_rest296633_ _deps296634_)
                     (let* ((_rest296635296643_ _rest296633_)
                            (_else296637296651_ (lambda () _deps296634_))
                            (_K296639296675_
                             (lambda (_rest296654_ _hd296655_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd296655_
                                      'gx#module-context::t))
                                   (let ((_id296657_
                                          (##structure-ref
                                           _hd296655_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports296658_
                                          (##structure-ref
                                           _hd296655_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht296624_ _id296657_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps296626_
                                            _rest296654_
                                            _deps296634_))
                                         (let ((_$e296660_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd296655_))))
                                           (if _$e296660_
                                               ((lambda (_pre296663_)
                                                  (let ((_xdeps296665_
                                                         (let ((__tmp301491
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre296663_ _imports296658_))))
                   (declare (not safe))
                   (_find-deps296626_ __tmp301491 _deps296634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht296624_
                                                       _id296657_
                                                       _hd296655_))
                                                    (let ((__tmp301492
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd296655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps296665_))))
              (declare (not safe))
              (_find-deps296626_ _rest296654_ __tmp301492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e296660_)
                                               (let ((_xdeps296667_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps296626_
                                                         _imports296658_
                                                         _deps296634_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht296624_
                                                    _id296657_
                                                    _hd296655_))
                                                 (let ((__tmp301490
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd296655_
                                                                _xdeps296667_))))
                                                   (declare (not safe))
                                                   (_find-deps296626_
                                                    _rest296654_
                                                    __tmp301490)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd296655_
                                          'gx#prelude-context::t))
                                       (let ((_id296669_
                                              (##structure-ref
                                               _hd296655_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht296624_
                                                _id296669_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps296626_
                                                _rest296654_
                                                _deps296634_))
                                             (let ((_xdeps296671_
                                                    (let ((__tmp301488
                                                           (##structure-ref
                                                            _hd296655_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps296626_
                                                       __tmp301488
                                                       _deps296634_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht296624_
                                                      _id296669_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps296626_
                                                      _rest296654_
                                                      _xdeps296671_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht296624_
                                                        _id296669_
                                                        _hd296655_))
                                                     (let ((__tmp301489
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd296655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps296671_))))
               (declare (not safe))
               (_find-deps296626_ _rest296654_ __tmp301489)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd296655_
                                              'gx#module-import::t))
                                           (if (let ((__tmp301487
                                                      (##direct-structure-ref
                                                       _hd296655_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp301487))
                                               (let ((__tmp301485
                                                      (let ((__tmp301486
                                                             (##direct-structure-ref
                                                              _hd296655_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp301486
                                                              _rest296654_))))
                                                 (declare (not safe))
                                                 (_find-deps296626_
                                                  __tmp301485
                                                  _deps296634_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps296626_
                                                  _rest296654_
                                                  _deps296634_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd296655_
                                                  'gx#module-export::t))
                                               (let ((__tmp301483
                                                      (let ((__tmp301484
                                                             (##direct-structure-ref
                                                              _hd296655_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp301484
                                                              _rest296654_))))
                                                 (declare (not safe))
                                                 (_find-deps296626_
                                                  __tmp301483
                                                  _deps296634_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd296655_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp301482
                                                              (##direct-structure-ref
                                                               _hd296655_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp301482))
                                                       (let ((__tmp301480
                                                              (let ((__tmp301481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd296655_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp301481 _rest296654_))))
                 (declare (not safe))
                 (_find-deps296626_ __tmp301480 _deps296634_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd296655_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps296673_
                           (let ()
                             (declare (not safe))
                             (_import-set-template296625_ _hd296655_ '0)))
                          (__tmp301479
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest296654_ _xdeps296673_))))
                     (declare (not safe))
                     (_find-deps296626_ __tmp301479 _deps296634_))
                   (let ()
                     (declare (not safe))
                     (_find-deps296626_ _rest296654_ _deps296634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd296655_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest296635296643_))
                           (let ((_hd296640296678_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest296635296643_)))
                                 (_tl296641296680_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest296635296643_))))
                             (let* ((_hd296683_ _hd296640296678_)
                                    (_rest296685_ _tl296641296680_))
                               (declare (not safe))
                               (_K296639296675_ _rest296685_ _hd296683_)))
                           (let ()
                             (declare (not safe))
                             (_else296637296651_)))))))
          (reverse (let ((__tmp301493
                          (let ((__tmp301494
                                 (let ((_$e296628_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx296622_))))
                                   (if _$e296628_
                                       ((lambda (_pre296631_)
                                          (let ((__tmp301495
                                                 (##structure-ref
                                                  _ctx296622_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre296631_ __tmp301495)))
                                        _$e296628_)
                                       (##structure-ref
                                        _ctx296622_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps296626_ __tmp301494 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp301493))))))
    (define gxc#find-static-module-file
      (lambda (_ctx296553_)
        (let* ((_context-id296555_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx296553_
                       'gx#module-context::t))
                    (##structure-ref _ctx296553_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx296553_)))
               (_scm296557_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id296555_))
                 '".scm"))
               (_dirs296559_ (gx#current-expander-module-library-path))
               (_dirs296565_
                (let ((_user-libpath296561_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath296561_
                      (let ((_user-libpath296563_
                             (path-expand '"lib" _user-libpath296561_)))
                        (if (member _user-libpath296563_ _dirs296559_)
                            _dirs296559_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath296563_ _dirs296559_))))
                      _dirs296559_)))
               (_dirs296574_
                (let ((_$e296567_ (gxc#current-compile-output-dir)))
                  (if _$e296567_
                      ((lambda (_g296569296571_)
                         (let ()
                           (declare (not safe))
                           (cons _g296569296571_ _dirs296565_)))
                       _$e296567_)
                      _dirs296565_)))
               (_dirs296580_
                (map (lambda (_g296575296577_)
                       (path-expand '"static" _g296575296577_))
                     _dirs296574_)))
          (let _lp296583_ ((_rest296585_ _dirs296580_))
            (let* ((_rest296586296594_ _rest296585_)
                   (_else296588296602_
                    (lambda ()
                      (let ((__tmp301496
                             (##structure-ref
                              _ctx296553_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp301496
                         _scm296557_))))
                   (_K296590296610_
                    (lambda (_rest296605_ _dir296606_)
                      (let ((_path296608_
                             (path-expand _scm296557_ _dir296606_)))
                        (if (file-exists? _path296608_)
                            _path296608_
                            (let ()
                              (declare (not safe))
                              (_lp296583_ _rest296605_)))))))
              (if (let () (declare (not safe)) (##pair? _rest296586296594_))
                  (let ((_hd296591296613_
                         (let ()
                           (declare (not safe))
                           (##car _rest296586296594_)))
                        (_tl296592296615_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest296586296594_))))
                    (let* ((_dir296618_ _hd296591296613_)
                           (_rest296620_ _tl296592296615_))
                      (declare (not safe))
                      (_K296590296610_ _rest296620_ _dir296618_)))
                  (let () (declare (not safe)) (_else296588296602_))))))))
    (define gxc#file-empty?
      (lambda (_path296551_)
        (let ((__tmp301497 (file-info-size (file-info _path296551_ '#t))))
          (declare (not safe))
          (zero? __tmp301497))))
    (define gxc#compile-top-module
      (lambda (_ctx296540_)
        (let ((__tmp301501
               (lambda ()
                 (let ((__tmp301502
                        (##structure-ref
                         _ctx296540_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp301502))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp301503
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx296540_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp301503))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx296540_))
                 (if (let ((__tmp301506
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx296540_))))
                       (declare (not safe))
                       (null? __tmp301506))
                     (let* ((_thr1296545_
                             (let ((__tmp301504
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx296540_)))))
                               (declare (not safe))
                               (spawn __tmp301504)))
                            (_thr2296548_
                             (let ((__tmp301505
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx296540_)))))
                               (declare (not safe))
                               (spawn __tmp301505))))
                       (let () (declare (not safe)) (gxc#join! _thr1296545_))
                       (let () (declare (not safe)) (gxc#join! _thr2296548_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx296540_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx296540_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx296540_))
                     '#!void)))
              (__tmp301500
               (let ((__obj301305
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj301305)
                 __obj301305))
              (__tmp301499 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp301498 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp301501
           gx#current-expander-context
           _ctx296540_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp301500
           gxc#current-compile-runtime-sections
           __tmp301499
           gxc#current-compile-runtime-names
           __tmp301498))))
    (define gxc#collect-bindings
      (lambda (_ctx296538_)
        (let ((__tmp301507
               (##structure-ref _ctx296538_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp301507))))
    (define gxc#compile-runtime-code
      (lambda (_ctx296484_)
        (letrec ((_compile1296486_
                  (lambda (_ctx296527_)
                    (let* ((_code296529_
                            (##structure-ref
                             _ctx296527_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt296533_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code296529_))
                                (let ((_idstr296531_
                                       (let ((__tmp301508
                                              (##structure-ref
                                               _ctx296527_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp301508))))
                                  (string-append _idstr296531_ '"__0"))
                                '#f)))
                      (if _rt296533_
                          (begin
                            (let ((__tmp301509
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp301509 _ctx296527_ _rt296533_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code296488_
                               _ctx296527_
                               _code296529_)))
                          (let ((_path296536_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx296527_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path296536_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code296489_
                         _ctx296527_
                         _code296529_
                         _rt296533_)))))
                 (_context-timestamp296487_
                  (lambda (_ctx296525_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx296525_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code296488_
                  (lambda (_ctx296507_ _code296508_)
                    (let* ((_lifts296510_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code296513_
                            (let ((__tmp301512
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code296508_))))
                                  (__tmp301511
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp301510
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp301512
                               gx#current-expander-context
                               _ctx296507_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts296510_
                               gxc#current-compile-marks
                               __tmp301511
                               gxc#current-compile-identifiers
                               __tmp301510)))
                           (_runtime-code296515_
                            (if (let ((__tmp301516 (unbox _lifts296510_)))
                                  (declare (not safe))
                                  (null? __tmp301516))
                                _runtime-code296513_
                                (let ((__tmp301513
                                       (let ((__tmp301515
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code296513_
                                                      '())))
                                             (__tmp301514
                                              (reverse (unbox _lifts296510_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp301515
                                                 __tmp301514))))
                                  (declare (not safe))
                                  (cons 'begin __tmp301513))))
                           (_runtime-code296517_
                            (let ((__tmp301517
                                   (let ((__tmp301519
                                          (let ((__tmp301520
                                                 (let ((__tmp301523
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp296487_
                                                           _ctx296507_)))
                                                       (__tmp301521
                                                        (let ((__tmp301522
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp301522
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp301523
                                                         __tmp301521))))
                                            (declare (not safe))
                                            (cons 'define __tmp301520)))
                                         (__tmp301518
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code296515_ '()))))
                                     (declare (not safe))
                                     (cons __tmp301519 __tmp301518))))
                              (declare (not safe))
                              (cons 'begin __tmp301517)))
                           (_scm0296519_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx296507_
                               '0
                               '".scm"))))
                      (let ((_scms296522_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx296507_))))
                        (let ((__tmp301524
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0296519_
                                    _runtime-code296517_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp301524
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms296522_)
                            (delete-file _scms296522_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0296519_
                           '" => "
                           _scms296522_))
                        (copy-file _scm0296519_ _scms296522_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0296519_))))))
                 (_generate-loader-code296489_
                  (lambda (_ctx296496_ _code296497_ _rt296498_)
                    (let* ((_loader-code296501_
                            (let ((__tmp301525
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code296497_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp301525
                               gx#current-expander-context
                               _ctx296496_)))
                           (_loader-code296503_
                            (if _rt296498_
                                (let ((__tmp301526
                                       (let ((__tmp301527
                                              (let ((__tmp301528
                                                     (let ((__tmp301529
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt296498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp301529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp301528 '()))))
                                         (declare (not safe))
                                         (cons _loader-code296501_
                                               __tmp301527))))
                                  (declare (not safe))
                                  (cons 'begin __tmp301526))
                                _loader-code296501_)))
                      (let ((__tmp301530
                             (lambda ()
                               (let ((__tmp301531
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx296496_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp301531
                                  _loader-code296503_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp301530
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules296491_
                 (let ((__tmp301532
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx296484_))))
                   (declare (not safe))
                   (cons _ctx296484_ __tmp301532))))
            (for-each
             (lambda (_ctx296493_)
               (let ((__tmp301533
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1296486_ _ctx296493_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp301533
                  gxc#current-compile-decls
                  '())))
             _all-modules296491_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx296381_)
        (letrec ((_compile-ssi296383_
                  (lambda (_code296454_)
                    (let* ((_path296456_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx296381_
                               '#f
                               '".ssi")))
                           (_prelude296467_
                            (let* ((_super296458_
                                    (##structure-ref
                                     _ctx296381_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e296460_
                                    (##structure-ref
                                     _super296458_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e296460_
                                  ((lambda (_g296462296464_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g296462296464_)))
                                   _$e296460_)
                                  ':<root>)))
                           (_ns296469_
                            (##structure-ref
                             _ctx296381_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr296471_
                            (symbol->string
                             (##structure-ref
                              _ctx296381_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg296478_
                            (let ((_$e296473_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr296471_ '#\/))))
                              (if _$e296473_
                                  ((lambda (_x296476_)
                                     (string->symbol
                                      (substring _idstr296471_ '0 _x296476_)))
                                   _$e296473_)
                                  '#f)))
                           (_rt296480_
                            (let ((__tmp301534
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp301534 _ctx296381_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path296456_))
                      (let ((__tmp301535
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude296467_))
                               (if _pkg296478_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg296478_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns296469_))
                               (newline)
                               (pretty-print _code296454_)
                               (if _rt296480_
                                   (pretty-print
                                    (let ((__tmp301536
                                           (let ((__tmp301540
                                                  (let ((__tmp301541
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp301541)))
                                                 (__tmp301537
                                                  (let ((__tmp301538
                                                         (let ((__tmp301539
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt296480_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp301539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp301538 '()))))
                                             (declare (not safe))
                                             (cons __tmp301540 __tmp301537))))
                                      (declare (not safe))
                                      (cons '%#call __tmp301536)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path296456_
                         __tmp301535)))))
                 (_compile-phi296384_
                  (lambda (_part296394_)
                    (let* ((_part296395296408_ _part296394_)
                           (_E296397296412_
                            (lambda ()
                              (error '"No clause matching"
                                     _part296395296408_)))
                           (_K296398296423_
                            (lambda (_code296415_
                                     _n296416_
                                     _phi296417_
                                     _phi-ctx296418_)
                              (let* ((_code296421_
                                      (let ((__tmp301542
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code296415_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp301542
                                         gx#current-expander-context
                                         _phi-ctx296418_
                                         gx#current-expander-phi
                                         _phi296417_)))
                                     (__tmp301543
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx296381_
                                         _n296416_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp301543
                                 _code296421_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part296395296408_))
                          (let ((_hd296399296426_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part296395296408_)))
                                (_tl296400296428_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part296395296408_))))
                            (let ((_phi-ctx296431_ _hd296399296426_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl296400296428_))
                                  (let ((_hd296401296433_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl296400296428_)))
                                        (_tl296402296435_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl296400296428_))))
                                    (let ((_phi296438_ _hd296401296433_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl296402296435_))
                                          (let ((_hd296403296440_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl296402296435_)))
                                                (_tl296404296442_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl296402296435_))))
                                            (let ((_n296445_ _hd296403296440_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl296404296442_))
                                                  (let ((_hd296405296447_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl296404296442_)))
                                                        (_tl296406296449_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl296404296442_))))
                                                    (let ((_code296452_
                                                           _hd296405296447_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl296406296449_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K296398296423_
                                                             _code296452_
                                                             _n296445_
                                                             _phi296438_
                                                             _phi-ctx296431_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E296397296412_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E296397296412_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E296397296412_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E296397296412_)))))
                          (let () (declare (not safe)) (_E296397296412_)))))))
          (let ((_g301544_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx296381_))))
            (begin
              (let ((_g301545_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g301544_)
                           (##vector-length _g301544_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g301545_ 2)))
                    (error "Context expects 2 values" _g301545_)))
              (let ((_ssi-code296386_
                     (let () (declare (not safe)) (##vector-ref _g301544_ 0)))
                    (_phi-code296387_
                     (let () (declare (not safe)) (##vector-ref _g301544_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi296383_ _ssi-code296386_))
                  (let ((_threads296392_
                         (map (lambda (_code296389_)
                                (let ((__tmp301546
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi296384_
                                            _code296389_)))))
                                  (declare (not safe))
                                  (spawn __tmp301546)))
                              _phi-code296387_)))
                    (for-each gxc#join! _threads296392_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx296364_)
        (let* ((_path296366_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx296364_ '#f '".ssxi.ss")))
               (_code296368_
                (let ((__tmp301547
                       (##structure-ref
                        _ctx296364_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp301547)))
               (_idstr296370_
                (symbol->string
                 (##structure-ref _ctx296364_ '1 gx#expander-context::t '#f)))
               (_pkg296377_
                (let ((_$e296372_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr296370_ '#\/))))
                  (if _$e296372_
                      ((lambda (_x296375_)
                         (string->symbol
                          (substring _idstr296370_ '0 _x296375_)))
                       _$e296372_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path296366_))
          (let ((__tmp301548
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg296377_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg296377_))
                       '#!void)
                   (newline)
                   (pretty-print _code296368_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path296366_ __tmp301548)))))
    (define gxc#generate-meta-code
      (lambda (_ctx296357_)
        (let* ((_state296359_
                (let ((__obj301306
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj301306 _ctx296357_)
                  __obj301306))
               (_ssi-code296361_
                (let ((__tmp301549
                       (##structure-ref
                        _ctx296357_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp301549 _state296359_))))
          (values _ssi-code296361_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state296359_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx296350_)
        (let ((_lifts296352_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp301552
                 (lambda ()
                   (let ((_code296355_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx296350_))))
                     (if (let ((__tmp301556 (unbox _lifts296352_)))
                           (declare (not safe))
                           (null? __tmp301556))
                         _code296355_
                         (let ((__tmp301553
                                (let ((__tmp301555
                                       (let ()
                                         (declare (not safe))
                                         (cons _code296355_ '())))
                                      (__tmp301554
                                       (reverse (unbox _lifts296352_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp301555 __tmp301554))))
                           (declare (not safe))
                           (cons 'begin __tmp301553))))))
                (__tmp301551
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp301550
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp301552
             gxc#current-compile-lift
             _lifts296352_
             gxc#current-compile-marks
             __tmp301551
             gxc#current-compile-identifiers
             __tmp301550)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx296346_)
        (let ((_modules296348_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp301557
                 (##structure-ref _ctx296346_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp301557 _modules296348_))
          (reverse (unbox _modules296348_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path296329_ _code296330_ _phi?296331_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path296329_))
        (let ((__tmp301558
               (lambda ()
                 (pretty-print
                  (let ((__tmp301559
                         (let ((__tmp301566
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp301560
                                (let ((__tmp301565
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp301561
                                       (let ((__tmp301564
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp301562
                                              (let ((__tmp301563
                                                     (if _phi?296331_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp301563))))
                                         (declare (not safe))
                                         (cons __tmp301564 __tmp301562))))
                                  (declare (not safe))
                                  (cons __tmp301565 __tmp301561))))
                           (declare (not safe))
                           (cons __tmp301566 __tmp301560))))
                    (declare (not safe))
                    (cons 'declare __tmp301559)))
                 (pretty-print _code296330_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path296329_ __tmp301558))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path296329_ _phi?296331_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path296329_))))
    (define gxc#compile-scm-file__0
      (lambda (_path296337_ _code296338_)
        (let ((_phi?296340_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path296337_ _code296338_ _phi?296340_))))
    (define gxc#compile-scm-file
      (lambda _g301568_
        (let ((_g301567_ (let () (declare (not safe)) (##length _g301568_))))
          (cond ((let () (declare (not safe)) (##fx= _g301567_ 2))
                 (apply (lambda (_path296337_ _code296338_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path296337_
                             _code296338_)))
                        _g301568_))
                ((let () (declare (not safe)) (##fx= _g301567_ 3))
                 (apply (lambda (_path296342_ _code296343_ _phi?296344_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path296342_
                             _code296343_
                             _phi?296344_)))
                        _g301568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g301568_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?296230_)
        (let _lp296232_ ((_rest296234_ (gxc#current-compile-gsc-options))
                         (_opts296235_ '()))
          (let* ((_rest296236296256_ _rest296234_)
                 (_else296240296264_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?296230_))
                             (gxc#current-compile-debug))
                        (let ((__tmp301569
                               (let ((__tmp301570 (reverse _opts296235_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp301570))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp301569))
                        (reverse _opts296235_)))))
            (let ((_K296250296307_
                   (lambda (_rest296305_)
                     (let ()
                       (declare (not safe))
                       (_lp296232_ _rest296305_ _opts296235_))))
                  (_K296245296289_
                   (lambda (_rest296287_)
                     (let ()
                       (declare (not safe))
                       (_lp296232_ _rest296287_ _opts296235_))))
                  (_K296242296271_
                   (lambda (_rest296268_ _opt296269_)
                     (let ((__tmp301571
                            (let ()
                              (declare (not safe))
                              (cons _opt296269_ _opts296235_))))
                       (declare (not safe))
                       (_lp296232_ _rest296268_ __tmp301571)))))
              (if (let () (declare (not safe)) (##pair? _rest296236296256_))
                  (let ((_tl296252296312_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest296236296256_)))
                        (_hd296251296310_
                         (let ()
                           (declare (not safe))
                           (##car _rest296236296256_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd296251296310_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl296252296312_))
                            (let* ((_tl296254296315_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl296252296312_)))
                                   (_rest296318_ _tl296254296315_))
                              (declare (not safe))
                              (_K296250296307_ _rest296318_))
                            (let ((_opt296279_ _hd296251296310_)
                                  (_rest296281_ _tl296252296312_))
                              (let ()
                                (declare (not safe))
                                (_K296242296271_ _rest296281_ _opt296279_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd296251296310_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl296252296312_))
                                (let* ((_tl296249296297_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl296252296312_)))
                                       (_rest296300_ _tl296249296297_))
                                  (declare (not safe))
                                  (_K296245296289_ _rest296300_))
                                (let ((_opt296279_ _hd296251296310_)
                                      (_rest296281_ _tl296252296312_))
                                  (let ()
                                    (declare (not safe))
                                    (_K296242296271_
                                     _rest296281_
                                     _opt296279_))))
                            (let ((_opt296279_ _hd296251296310_)
                                  (_rest296281_ _tl296252296312_))
                              (let ()
                                (declare (not safe))
                                (_K296242296271_ _rest296281_ _opt296279_))))))
                  (let () (declare (not safe)) (_else296240296264_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?296324_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?296324_))))
    (define gxc#gsc-link-options
      (lambda _g301573_
        (let ((_g301572_ (let () (declare (not safe)) (##length _g301573_))))
          (cond ((let () (declare (not safe)) (##fx= _g301572_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g301573_))
                ((let () (declare (not safe)) (##fx= _g301572_ 1))
                 (apply (lambda (_phi?296326_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?296326_)))
                        _g301573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g301573_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?296131_)
        (let _lp296133_ ((_rest296135_ (gxc#current-compile-gsc-options))
                         (_opts296136_ '()))
          (let* ((_rest296137296157_ _rest296135_)
                 (_else296141296165_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?296131_))
                             (gxc#current-compile-debug))
                        (let ((__tmp301574
                               (let ((__tmp301575 (reverse _opts296136_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp301575))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp301574))
                        (reverse _opts296136_)))))
            (let ((_K296151296204_
                   (lambda (_rest296201_ _opt296202_)
                     (let ((__tmp301576
                            (let ((__tmp301577
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts296136_))))
                              (declare (not safe))
                              (cons _opt296202_ __tmp301577))))
                       (declare (not safe))
                       (_lp296133_ _rest296201_ __tmp301576))))
                  (_K296146296185_
                   (lambda (_rest296183_)
                     (let ()
                       (declare (not safe))
                       (_lp296133_ _rest296183_ _opts296136_))))
                  (_K296143296171_
                   (lambda (_rest296169_)
                     (let ()
                       (declare (not safe))
                       (_lp296133_ _rest296169_ _opts296136_)))))
              (if (let () (declare (not safe)) (##pair? _rest296137296157_))
                  (let ((_tl296153296209_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest296137296157_)))
                        (_hd296152296207_
                         (let ()
                           (declare (not safe))
                           (##car _rest296137296157_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd296152296207_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl296153296209_))
                            (let ((_tl296155296214_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl296153296209_)))
                                  (_hd296154296212_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl296153296209_))))
                              (let ((_opt296217_ _hd296154296212_)
                                    (_rest296219_ _tl296155296214_))
                                (let ()
                                  (declare (not safe))
                                  (_K296151296204_ _rest296219_ _opt296217_))))
                            (let ((_rest296177_ _tl296153296209_))
                              (declare (not safe))
                              (_K296143296171_ _rest296177_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd296152296207_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl296153296209_))
                                (let* ((_tl296150296193_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl296153296209_)))
                                       (_rest296196_ _tl296150296193_))
                                  (declare (not safe))
                                  (_K296146296185_ _rest296196_))
                                (let ((_rest296177_ _tl296153296209_))
                                  (declare (not safe))
                                  (_K296143296171_ _rest296177_)))
                            (let ((_rest296177_ _tl296153296209_))
                              (declare (not safe))
                              (_K296143296171_ _rest296177_)))))
                  (let () (declare (not safe)) (_else296141296165_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?296225_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?296225_))))
    (define gxc#gsc-cc-options
      (lambda _g301579_
        (let ((_g301578_ (let () (declare (not safe)) (##length _g301579_))))
          (cond ((let () (declare (not safe)) (##fx= _g301578_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g301579_))
                ((let () (declare (not safe)) (##fx= _g301578_ 1))
                 (apply (lambda (_phi?296227_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?296227_)))
                        _g301579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g301579_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir296126_)
        (let* ((_user-staticdir296128_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp301580
                (let ((__tmp301581
                       (string-append
                        '"-I "
                        _staticdir296126_
                        '" -I "
                        _user-staticdir296128_)))
                  (declare (not safe))
                  (cons __tmp301581 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp301580))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp296038_ ((_rest296040_ (gxc#current-compile-gsc-options))
                         (_opts296041_ '()))
          (let* ((_rest296042296062_ _rest296040_)
                 (_else296046296070_ (lambda () _opts296041_)))
            (let ((_K296056296113_
                   (lambda (_rest296111_)
                     (let ()
                       (declare (not safe))
                       (_lp296038_ _rest296111_ _opts296041_))))
                  (_K296051296091_
                   (lambda (_rest296088_ _opt296089_)
                     (let ((__tmp301582
                            (append _opts296041_
                                    (let ((__tmp301583
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt296089_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp301583)))))
                       (declare (not safe))
                       (_lp296038_ _rest296088_ __tmp301582))))
                  (_K296048296076_
                   (lambda (_rest296074_)
                     (let ()
                       (declare (not safe))
                       (_lp296038_ _rest296074_ _opts296041_)))))
              (if (let () (declare (not safe)) (##pair? _rest296042296062_))
                  (let ((_tl296058296118_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest296042296062_)))
                        (_hd296057296116_
                         (let ()
                           (declare (not safe))
                           (##car _rest296042296062_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd296057296116_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl296058296118_))
                            (let* ((_tl296060296121_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl296058296118_)))
                                   (_rest296124_ _tl296060296121_))
                              (declare (not safe))
                              (_K296056296113_ _rest296124_))
                            (let ((_rest296082_ _tl296058296118_))
                              (declare (not safe))
                              (_K296048296076_ _rest296082_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd296057296116_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl296058296118_))
                                (let ((_tl296055296101_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl296058296118_)))
                                      (_hd296054296099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl296058296118_))))
                                  (let ((_opt296104_ _hd296054296099_)
                                        (_rest296106_ _tl296055296101_))
                                    (let ()
                                      (declare (not safe))
                                      (_K296051296091_
                                       _rest296106_
                                       _opt296104_))))
                                (let ((_rest296082_ _tl296058296118_))
                                  (declare (not safe))
                                  (_K296048296076_ _rest296082_)))
                            (let ((_rest296082_ _tl296058296118_))
                              (declare (not safe))
                              (_K296048296076_ _rest296082_)))))
                  (let () (declare (not safe)) (_else296046296070_))))))))
    (define gxc#not-string-empty?
      (lambda (_str296035_)
        (let ((__tmp301584
               (let () (declare (not safe)) (string-empty? _str296035_))))
          (declare (not safe))
          (not __tmp301584))))
    (define gxc#gsc-compile-file
      (lambda (_path296003_ _phi?296004_)
        (letrec ((_gsc-link-path296006_
                  (lambda (_base-path296027_)
                    (let _lp296029_ ((_n296031_ '1))
                      (let ((_path296033_
                             (string-append
                              _base-path296027_
                              '".o"
                              (number->string _n296031_))))
                        (if (file-exists? _path296033_)
                            (let ((__tmp301585
                                   (let ()
                                     (declare (not safe))
                                     (+ _n296031_ '1))))
                              (declare (not safe))
                              (_lp296029_ __tmp301585))
                            _path296033_))))))
          (let* ((_base-path296008_ (path-strip-extension _path296003_))
                 (_path-c296010_ (string-append _base-path296008_ '".c"))
                 (_path-o296012_ (string-append _base-path296008_ '".o"))
                 (_link-path296014_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path296006_ _base-path296008_)))
                 (_link-path-c296016_ (string-append _link-path296014_ '".c"))
                 (_link-path-o296018_ (string-append _link-path296014_ '".o"))
                 (_gsc-link-opts296020_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?296004_)))
                 (_gsc-cc-opts296022_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?296004_)))
                 (_gcc-ld-opts296024_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp301592 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp301586
                   (let ((__tmp301587
                          (let ((__tmp301588
                                 (let ((__tmp301589
                                        (let ((__tmp301590
                                               (let ((__tmp301591
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path296003_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp301591
                                                         _gsc-link-opts296020_))))
                                          (declare (not safe))
                                          (cons _link-path-c296016_
                                                __tmp301590))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp301589))))
                            (declare (not safe))
                            (cons '"-flat" __tmp301588))))
                     (declare (not safe))
                     (cons '"-link" __tmp301587))))
              (declare (not safe))
              (gxc#invoke __tmp301592 __tmp301586 'stdout-redirection: '#t))
            (let ((__tmp301599 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp301593
                   (let ((__tmp301594
                          (let ((__tmp301595
                                 (let ((__tmp301596
                                        (let ((__tmp301597
                                               (let ((__tmp301598
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c296016_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c296010_
                                                       __tmp301598))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp301597
                                                  _gsc-cc-opts296022_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp301596))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp301595))))
                     (declare (not safe))
                     (cons '"-obj" __tmp301594))))
              (declare (not safe))
              (gxc#invoke __tmp301599 __tmp301593 'stdout-redirection: '#t))
            (let ((__tmp301605 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp301600
                   (let ((__tmp301601
                          (let ((__tmp301602
                                 (let ((__tmp301603
                                        (let ((__tmp301604
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o296018_
                                                       _gcc-ld-opts296024_))))
                                          (declare (not safe))
                                          (cons _path-o296012_ __tmp301604))))
                                   (declare (not safe))
                                   (cons _link-path296014_ __tmp301603))))
                            (declare (not safe))
                            (cons '"-o" __tmp301602))))
                     (declare (not safe))
                     (cons '"-shared" __tmp301601))))
              (declare (not safe))
              (gxc#invoke __tmp301605 __tmp301600))
            (for-each
             delete-file
             (let ((__tmp301606
                    (let ((__tmp301607
                           (let ((__tmp301608
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o296018_ '()))))
                             (declare (not safe))
                             (cons _link-path-c296016_ __tmp301608))))
                      (declare (not safe))
                      (cons _path-o296012_ __tmp301607))))
               (declare (not safe))
               (cons _path-c296010_ __tmp301606)))))))
    (define gxc#compile-output-file
      (lambda (_ctx295974_ _n295975_ _ext295976_)
        (letrec ((_module-relative-path295978_
                  (lambda (_ctx296001_)
                    (path-strip-directory
                     (let ((__tmp301609
                            (##structure-ref
                             _ctx296001_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp301609)))))
                 (_module-source-directory295979_
                  (lambda (_ctx295997_)
                    (path-directory
                     (let ((_mpath295999_
                            (##structure-ref
                             _ctx295997_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath295999_))
                           _mpath295999_
                           (let ()
                             (declare (not safe))
                             (last _mpath295999_)))))))
                 (_section-string295980_
                  (lambda (_n295995_)
                    (if (let () (declare (not safe)) (number? _n295995_))
                        (number->string _n295995_)
                        (if (let () (declare (not safe)) (symbol? _n295995_))
                            (symbol->string _n295995_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n295995_))
                                _n295995_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n295995_)))))))
                 (_file-name295981_
                  (lambda (_path295993_)
                    (if _n295975_
                        (string-append
                         _path295993_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string295980_ _n295975_))
                         _ext295976_)
                        (string-append _path295993_ _ext295976_))))
                 (_file-path295982_
                  (lambda ()
                    (let ((_$e295988_ (gxc#current-compile-output-dir)))
                      (if _$e295988_
                          ((lambda (_outdir295991_)
                             (path-expand
                              (let ((__tmp301611
                                     (let ((__tmp301612
                                            (##structure-ref
                                             _ctx295974_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp301612))))
                                (declare (not safe))
                                (_file-name295981_ __tmp301611))
                              _outdir295991_))
                           _$e295988_)
                          (path-expand
                           (let ((__tmp301610
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path295978_
                                     _ctx295974_))))
                             (declare (not safe))
                             (_file-name295981_ __tmp301610))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory295979_
                              _ctx295974_))))))))
          (let ((_path295984_
                 (let () (declare (not safe)) (_file-path295982_))))
            (let ((__tmp301613
                   (lambda ()
                     (let ((__tmp301614 (path-directory _path295984_)))
                       (declare (not safe))
                       (create-directory* __tmp301614)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp301613))
            _path295984_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx295956_)
        (letrec ((_file-name295958_
                  (lambda (_id295972_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id295972_))
                     '".scm")))
                 (_file-path295959_
                  (lambda ()
                    (let* ((_file295965_
                            (let ((__tmp301615
                                   (##structure-ref
                                    _ctx295956_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name295958_ __tmp301615)))
                           (_$e295967_ (gxc#current-compile-output-dir)))
                      (if _$e295967_
                          ((lambda (_outdir295970_)
                             (path-expand
                              _file295965_
                              (path-expand '"static" _outdir295970_)))
                           _$e295967_)
                          (path-expand _file295965_ '"static"))))))
          (let ((_path295961_
                 (let () (declare (not safe)) (_file-path295959_))))
            (let ((__tmp301616
                   (lambda ()
                     (let ((__tmp301617 (path-directory _path295961_)))
                       (declare (not safe))
                       (create-directory* __tmp301617)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp301616))
            _path295961_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx295950_ _opts295951_)
        (let ((_$e295953_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts295951_))))
          (if _$e295953_
              (values _$e295953_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx295950_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr295943_)
        (if (let () (declare (not safe)) (string? _idstr295943_))
            (let* ((_str295945_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr295943_)))
                   (_strs295947_
                    (let ()
                      (declare (not safe))
                      (string-split _str295945_ '#\/))))
              (let () (declare (not safe)) (string-join _strs295947_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr295943_))
                (let ((__tmp301618 (symbol->string _idstr295943_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp301618))
                (error '"Bad module id" _idstr295943_)))))
    (define gxc#invoke__%
      (lambda (_g301619_
               _stdout-redirection295904295908_
               _stderr-redirection295905295910_
               _program295912_
               _args295913_)
        (let* ((_stdout-redirection295915_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection295904295908_ absent-value))
                    '#f
                    _stdout-redirection295904295908_))
               (_stderr-redirection295917_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection295905295910_ absent-value))
                    '#f
                    _stderr-redirection295905295910_)))
          (let ((__tmp301620
                 (let ()
                   (declare (not safe))
                   (cons _program295912_ _args295913_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp301620))
          (let* ((_proc295919_
                  (open-process
                   (let ((__tmp301621
                          (let ((__tmp301622
                                 (let ((__tmp301623
                                        (let ((__tmp301624
                                               (let ((__tmp301625
                                                      (let ((__tmp301626
                                                             (let ((__tmp301627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection295917_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp301627))))
                (declare (not safe))
                (cons _stdout-redirection295915_ __tmp301626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp301625))))
                                          (declare (not safe))
                                          (cons _args295913_ __tmp301624))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp301623))))
                            (declare (not safe))
                            (cons _program295912_ __tmp301622))))
                     (declare (not safe))
                     (cons 'path: __tmp301621))))
                 (_output295924_
                  (if (or _stdout-redirection295915_
                          _stderr-redirection295917_)
                      (read-line _proc295919_ '#f)
                      '#f)))
            (let ((_status295927_ (process-status _proc295919_)))
              (close-port _proc295919_)
              (if (let () (declare (not safe)) (zero? _status295927_))
                  '#!void
                  (begin
                    (display _output295924_)
                    (let ((__tmp301628
                           (let ()
                             (declare (not safe))
                             (cons _program295912_ _args295913_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp301628
                       _status295927_)))))))))
    (define gxc#invoke__@
      (lambda (_keys295903295932_ . _args295934_)
        (apply gxc#invoke__%
               _keys295903295932_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys295903295932_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys295903295932_
                  'stderr-redirection:
                  absent-value))
               _args295934_)))
    (define gxc#invoke
      (lambda _args295906295940_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args295906295940_)))
    (define gxc#join!
      (lambda (_thread295897_)
        (let ((__tmp301630
               (lambda (_exn295899_)
                 (if (uncaught-exception? _exn295899_)
                     (raise (uncaught-exception-reason _exn295899_))
                     (raise _exn295899_))))
              (__tmp301629 (lambda () (thread-join! _thread295897_))))
          (declare (not safe))
          (with-catch __tmp301630 __tmp301629))))))
