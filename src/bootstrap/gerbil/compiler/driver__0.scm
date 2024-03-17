(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710694215)
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
      (lambda (_path157193_ _fun157194_)
        (with-output-to-file
         (let ((__tmp157287
                (let ()
                  (declare (not safe))
                  (cons _path157193_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157287))
         _fun157194_)))
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
      (lambda (_gerbil-libdir157188_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157188_)))
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
      (lambda (_dir157186_) (delete-file-or-directory _dir157186_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157160_ _opts157161_)
        (if (let () (declare (not safe)) (string? _srcpath157160_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157160_)))
        (let ((_outdir157163_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157161_)))
              (_invoke-gsc?157164_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157161_)))
              (_gsc-options157165_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157161_)))
              (_keep-scm?157166_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157161_)))
              (_verbosity157167_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157161_)))
              (_optimize157168_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157161_)))
              (_debug157169_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157161_)))
              (_gen-ssxi157170_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157161_))))
          (if _outdir157163_
              (let ((__tmp157288
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157163_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157288))
              '#!void)
          (if _optimize157168_
              (let ((__tmp157289
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157289))
              '#!void)
          (let ((__tmp157293
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157160_))
                   (let ((__tmp157294
                          (let ((__tmp157295
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157160_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157295))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157294))))
                (__tmp157292
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157290
                 (let ((__tmp157291
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157160_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157291))))
            (declare (not safe))
            (call-with-parameters
             __tmp157293
             gxc#current-compile-output-dir
             _outdir157163_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157164_
             gxc#current-compile-gsc-options
             _gsc-options157165_
             gxc#current-compile-keep-scm
             _keep-scm?157166_
             gxc#current-compile-verbose
             _verbosity157167_
             gxc#current-compile-optimize
             _optimize157168_
             gxc#current-compile-debug
             _debug157169_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157170_
             gxc#current-compile-timestamp
             __tmp157292
             gxc#current-compile-context
             __tmp157290
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157179_)
        (let ((_opts157181_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157179_ _opts157181_))))
    (define gxc#compile-module
      (lambda _g157297_
        (let ((_g157296_ (let () (declare (not safe)) (##length _g157297_))))
          (cond ((let () (declare (not safe)) (##fx= _g157296_ 1))
                 (apply (lambda (_srcpath157179_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157179_)))
                        _g157297_))
                ((let () (declare (not safe)) (##fx= _g157296_ 2))
                 (apply (lambda (_srcpath157183_ _opts157184_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157183_
                             _opts157184_)))
                        _g157297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157297_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157136_ _opts157137_)
        (if (let () (declare (not safe)) (string? _srcpath157136_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157136_)))
        (let ((_outdir157139_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157137_)))
              (_invoke-gsc?157140_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157137_)))
              (_gsc-options157141_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157137_)))
              (_keep-scm?157142_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157137_)))
              (_verbosity157143_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157137_)))
              (_debug157144_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157137_))))
          (if _outdir157139_
              (let ((__tmp157298
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157139_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157298))
              '#!void)
          (let ((__tmp157302
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157136_))
                   (let ((__tmp157303
                          (let ((__tmp157304
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157136_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157304))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157303
                      _opts157137_))))
                (__tmp157301
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157299
                 (let ((__tmp157300
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157136_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157300))))
            (declare (not safe))
            (call-with-parameters
             __tmp157302
             gxc#current-compile-output-dir
             _outdir157139_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157140_
             gxc#current-compile-gsc-options
             _gsc-options157141_
             gxc#current-compile-keep-scm
             _keep-scm?157142_
             gxc#current-compile-verbose
             _verbosity157143_
             gxc#current-compile-debug
             _debug157144_
             gxc#current-compile-timestamp
             __tmp157301
             gxc#current-compile-context
             __tmp157299
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157152_)
        (let ((_opts157154_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157152_ _opts157154_))))
    (define gxc#compile-exe
      (lambda _g157306_
        (let ((_g157305_ (let () (declare (not safe)) (##length _g157306_))))
          (cond ((let () (declare (not safe)) (##fx= _g157305_ 1))
                 (apply (lambda (_srcpath157152_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157152_)))
                        _g157306_))
                ((let () (declare (not safe)) (##fx= _g157305_ 2))
                 (apply (lambda (_srcpath157156_ _opts157157_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157156_ _opts157157_)))
                        _g157306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157306_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157132_ _opts157133_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157133_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157132_
               _opts157133_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157132_
               _opts157133_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157015_ _opts157016_)
        (letrec ((_generate-stub157018_
                  (lambda (_builtin-modules157128_)
                    (let ((_mod-main157130_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157015_ 'main))))
                      (write (let ((__tmp157307
                                    (let ((__tmp157308
                                           (let ((__tmp157309
                                                  (let ((__tmp157310
                                                         (let ((__tmp157312
                                                                (let ((__tmp157313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157128_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157313)))
                       (__tmp157311
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157312 __tmp157311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157310))))
                                             (declare (not safe))
                                             (cons __tmp157309 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157308))))
                               (declare (not safe))
                               (cons 'define __tmp157307)))
                      (write (let ((__tmp157314
                                    (let ((__tmp157353
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157315
                                           (let ((__tmp157316
                                                  (let ((__tmp157317
                                                         (let ((__tmp157341
                                                                (let ((__tmp157342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157343
                                      (let ((__tmp157351
                                             (let ((__tmp157352
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157352)))
                                            (__tmp157344
                                             (let ((__tmp157345
                                                    (let ((__tmp157346
                                                           (let ((__tmp157347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157348
                                 (let ((__tmp157349
                                        (let ((__tmp157350
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157350 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157349))))
                            (declare (not safe))
                            (cons __tmp157348 '()))))
                     (declare (not safe))
                     (cons _mod-main157130_ __tmp157347))))
              (declare (not safe))
              (cons 'apply __tmp157346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157345 '()))))
                                        (declare (not safe))
                                        (cons __tmp157351 __tmp157344))))
                                 (declare (not safe))
                                 (cons '() __tmp157343))))
                          (declare (not safe))
                          (cons 'lambda __tmp157342)))
                       (__tmp157318
                        (let ((__tmp157319
                               (let ((__tmp157320
                                      (let ((__tmp157321
                                             (let ((__tmp157332
                                                    (let ((__tmp157333
                                                           (let ((__tmp157334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157335
                                 (let ((__tmp157336
                                        (let ((__tmp157337
                                               (let ((__tmp157338
                                                      (let ((__tmp157339
                                                             (let ((__tmp157340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157340 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157338 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157337))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157336))))
                            (declare (not safe))
                            (cons __tmp157335 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157334))))
              (declare (not safe))
              (cons 'with-catch __tmp157333)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157322
                                                    (let ((__tmp157323
                                                           (let ((__tmp157324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157325
                                 (let ((__tmp157326
                                        (let ((__tmp157327
                                               (let ((__tmp157328
                                                      (let ((__tmp157329
                                                             (let ((__tmp157330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157331
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157331 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157330))))
                (declare (not safe))
                (cons __tmp157329 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157328))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157327))))
                                   (declare (not safe))
                                   (cons __tmp157326 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157325))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157324))))
              (declare (not safe))
              (cons __tmp157323 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157332
                                                     __tmp157322))))
                                        (declare (not safe))
                                        (cons '() __tmp157321))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157320))))
                          (declare (not safe))
                          (cons __tmp157319 '()))))
                   (declare (not safe))
                   (cons __tmp157341 __tmp157318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157317))))
                                             (declare (not safe))
                                             (cons __tmp157316 '()))))
                                      (declare (not safe))
                                      (cons __tmp157353 __tmp157315))))
                               (declare (not safe))
                               (cons 'define __tmp157314)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157019_
                  (lambda (_libgerbil157126_)
                    (call-with-input-file
                     (string-append _libgerbil157126_ '".ldd")
                     read)))
                 (_replace-extension157020_
                  (lambda (_path157123_ _ext157124_)
                    (string-append
                     (path-strip-extension _path157123_)
                     _ext157124_)))
                 (_not-exclude-module?157021_
                  (lambda (_ctx157119_)
                    (let ((_id-str157121_
                           (symbol->string
                            (##structure-ref
                             _ctx157119_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157354
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157121_))))
                            (declare (not safe))
                            (not __tmp157354))
                          (let ((__tmp157355
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157121_))))
                            (declare (not safe))
                            (not __tmp157355))
                          '#f))))
                 (_not-file-empty?157022_
                  (lambda (_path157117_)
                    (let ((__tmp157356
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157117_))))
                      (declare (not safe))
                      (not __tmp157356))))
                 (_compile-stub157023_
                  (lambda (_output-scm157030_ _output-bin157031_)
                    (let* ((_gerbil-home157033_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157035_
                            (path-expand '"lib" _gerbil-home157033_))
                           (_gerbil-staticdir157037_
                            (path-expand '"static" _gerbil-libdir157035_))
                           (_gxlink157039_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157035_))
                           (_tmp157041_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157045_
                            (lambda (_f157043_)
                              (path-expand
                               (path-strip-directory _f157043_)
                               _tmp157041_)))
                           (_deps157047_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157015_)))
                           (_deps157049_
                            (filter _not-exclude-module?157021_ _deps157047_))
                           (_src-deps-scm157051_
                            (map gxc#find-static-module-file _deps157049_))
                           (_src-deps-scm157053_
                            (filter _not-file-empty?157022_
                                    _src-deps-scm157051_))
                           (_src-deps-scm157055_
                            (map path-expand _src-deps-scm157053_))
                           (_deps-scm157057_
                            (map _tmp-path157045_ _src-deps-scm157055_))
                           (_deps-c157063_
                            (map (lambda (_g157058157060_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157020_
                                      _g157058157060_
                                      '".c")))
                                 _deps-scm157057_))
                           (_deps-o157069_
                            (map (lambda (_g157064157066_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157020_
                                      _g157064157066_
                                      '".o")))
                                 _deps-scm157057_))
                           (_src-bin-scm157071_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157015_)))
                           (_src-bin-scm157073_
                            (path-expand _src-bin-scm157071_))
                           (_bin-scm157075_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157045_ _src-bin-scm157073_)))
                           (_bin-c157077_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157020_
                               _bin-scm157075_
                               '".c")))
                           (_bin-o157079_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157020_
                               _bin-scm157075_
                               '".o")))
                           (_output-bin157081_
                            (path-expand _output-bin157031_))
                           (_output-scm157083_
                            (path-expand _output-scm157030_))
                           (_output-c157085_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157020_
                               _output-scm157083_
                               '".c")))
                           (_output-o157087_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157020_
                               _output-scm157083_
                               '".o")))
                           (_output_-c157089_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157020_
                               _output-scm157083_
                               '"_.c")))
                           (_output_-o157091_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157020_
                               _output-scm157083_
                               '"_.o")))
                           (_gsc-link-opts157093_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157095_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157097_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157037_)))
                           (_output-ld-opts157099_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157101_
                            (path-expand '"libgerbil.a" _gerbil-libdir157035_))
                           (_libgerbil.so157103_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157035_))
                           (_libgerbil-ld-opts157105_
                            (if (file-exists? _libgerbil.so157103_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157019_
                                   _libgerbil.so157103_))
                                (if (file-exists? _libgerbil.a157101_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157019_
                                       _libgerbil.a157101_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157101_
                                       _libgerbil.so157103_)))))
                           (_rpath157107_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157035_)))
                           (_builtin-modules157111_
                            (map (lambda (_mod157109_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157109_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157015_ _deps157049_)))))
                      (let ((__tmp157357
                             (lambda ()
                               (let ((__tmp157358
                                      (path-directory _output-bin157081_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157358)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157357))
                      (let ((__tmp157359
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157018_
                                  _builtin-modules157111_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157083_
                         __tmp157359))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157360
                                   (lambda () (create-directory _tmp157041_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157360))
                            (for-each
                             copy-file
                             _src-deps-scm157055_
                             _deps-scm157057_)
                            (copy-file _src-bin-scm157073_ _bin-scm157075_)
                            (let ((__tmp157368
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157361
                                   (let ((__tmp157362
                                          (let ((__tmp157363
                                                 (let ((__tmp157364
                                                        (let ((__tmp157365
                                                               (let ((__tmp157366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157367
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157083_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157075_ __tmp157367))))
                         (declare (not safe))
                         (foldr1 cons __tmp157366 _deps-scm157057_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157365 _gsc-link-opts157093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157039_
                                                         __tmp157364))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157363))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157362))))
                              (declare (not safe))
                              (gxc#invoke __tmp157368 __tmp157361))
                            (let ((__tmp157376
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157369
                                   (let ((__tmp157370
                                          (let ((__tmp157371
                                                 (let ((__tmp157372
                                                        (let ((__tmp157373
                                                               (let ((__tmp157374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157375
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157089_ '()))))
                                (declare (not safe))
                                (cons _output-c157085_ __tmp157375))))
                         (declare (not safe))
                         (cons _bin-c157077_ __tmp157374))))
                  (declare (not safe))
                  (foldr1 cons __tmp157373 _deps-c157063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157372
                                                           _gsc-static-opts157097_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157371
                                                    _gsc-cc-opts157095_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157370))))
                              (declare (not safe))
                              (gxc#invoke __tmp157376 __tmp157369))
                            (let ((__tmp157389
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157377
                                   (let ((__tmp157378
                                          (let ((__tmp157379
                                                 (let ((__tmp157380
                                                        (let ((__tmp157381
                                                               (let ((__tmp157382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157383
                                     (let ((__tmp157384
                                            (let ((__tmp157385
                                                   (let ((__tmp157386
                                                          (let ((__tmp157387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157388
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157105_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157388))))
                    (declare (not safe))
                    (cons _gerbil-libdir157035_ __tmp157387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157386))))
                                              (declare (not safe))
                                              (cons _rpath157107_
                                                    __tmp157385))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157384
                                               _output-ld-opts157099_))))
                                (declare (not safe))
                                (cons _output_-o157091_ __tmp157383))))
                         (declare (not safe))
                         (cons _output-o157087_ __tmp157382))))
                  (declare (not safe))
                  (cons _bin-o157079_ __tmp157381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157380
                                                           _deps-o157069_))))
                                            (declare (not safe))
                                            (cons _output-bin157081_
                                                  __tmp157379))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157378))))
                              (declare (not safe))
                              (gxc#invoke __tmp157389 __tmp157377))
                            (for-each
                             delete-file
                             (let ((__tmp157390
                                    (let ((__tmp157391
                                           (let ((__tmp157392
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157091_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157087_
                                                   __tmp157392))))
                                      (declare (not safe))
                                      (cons _output_-c157089_ __tmp157391))))
                               (declare (not safe))
                               (cons _output-c157085_ __tmp157390)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157041_)))
                          '#!void)))))
          (let* ((_output-bin157025_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157015_ _opts157016_)))
                 (_output-scm157027_
                  (string-append _output-bin157025_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157023_ _output-scm157027_ _output-bin157025_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157027_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx156840_ _opts156841_)
        (letrec ((_reset-declare156843_
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
                 (_generate-stub156844_
                  (lambda (_deps157006_)
                    (let ((_mod-main157008_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx156840_ 'main)))
                          (_reset-decl157009_
                           (let ()
                             (declare (not safe))
                             (_reset-declare156843_)))
                          (_user-decl157010_
                           (let ()
                             (declare (not safe))
                             (_user-declare156845_))))
                      (for-each
                       (lambda (_dep157012_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157009_)
                         (newline)
                         (if _user-decl157010_
                             (begin (write _user-decl157010_) (newline))
                             '#!void)
                         (write (let ((__tmp157393
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157012_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157393)))
                         (newline))
                       _deps157006_)
                      (write (let ((__tmp157394
                                    (let ((__tmp157407
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157395
                                           (let ((__tmp157403
                                                  (let ((__tmp157404
                                                         (let ((__tmp157405
                                                                (let ((__tmp157406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157406))))
                   (declare (not safe))
                   (cons __tmp157405 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157404)))
                                                 (__tmp157396
                                                  (let ((__tmp157397
                                                         (let ((__tmp157398
                                                                (let ((__tmp157399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157400
                                      (let ((__tmp157401
                                             (let ((__tmp157402
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157402 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157401))))
                                 (declare (not safe))
                                 (cons __tmp157400 '()))))
                          (declare (not safe))
                          (cons _mod-main157008_ __tmp157399))))
                   (declare (not safe))
                   (cons 'apply __tmp157398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157397 '()))))
                                             (declare (not safe))
                                             (cons __tmp157403 __tmp157396))))
                                      (declare (not safe))
                                      (cons __tmp157407 __tmp157395))))
                               (declare (not safe))
                               (cons 'define __tmp157394)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare156845_
                  (lambda ()
                    (let* ((_gsc-opts156911_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts156841_)))
                           (_gsc-prelude156913_
                            (if _gsc-opts156911_
                                (member '"-prelude" _gsc-opts156911_)
                                '#f))
                           (_gsc-prelude156915_
                            (if _gsc-prelude156913_
                                (read (open-input-string
                                       (cadr _gsc-prelude156913_)))
                                '#f)))
                      (let _lp156918_ ((_rest156920_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude156915_ '())))
                                       (_user-decls156921_ '()))
                        (let* ((_rest156922156930_ _rest156920_)
                               (_else156924156938_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls156921_))
                                      '#f
                                      (let ((__tmp157408
                                             (reverse _user-decls156921_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157408)))))
                               (_K156926156994_
                                (lambda (_rest156941_ _expr156942_)
                                  (let* ((_expr156943156955_ _expr156942_)
                                         (_else156946156963_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp156918_
                                               _rest156941_
                                               _user-decls156921_)))))
                                    (let ((_K156951156984_
                                           (lambda (_decls156982_)
                                             (let ((__tmp157409
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls156921_
                                                              _decls156982_))))
                                               (declare (not safe))
                                               (_lp156918_
                                                _rest156941_
                                                __tmp157409))))
                                          (_K156948156969_
                                           (lambda (_exprs156967_)
                                             (let ((__tmp157410
                                                    (append _exprs156967_
                                                            _rest156941_)))
                                               (declare (not safe))
                                               (_lp156918_
                                                __tmp157410
                                                _user-decls156921_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr156943156955_))
                                          (let ((_tl156953156989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr156943156955_)))
                                                (_hd156952156987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr156943156955_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd156952156987_
                                                         'declare))
                                                (let ((_decls156992_
                                                       _tl156953156989_))
                                                  (declare (not safe))
                                                  (_K156951156984_
                                                   _decls156992_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd156952156987_
                                                             'begin))
                                                    (let ((_exprs156977_
                                                           _tl156953156989_))
                                                      (declare (not safe))
                                                      (_K156948156969_
                                                       _exprs156977_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else156946156963_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else156946156963_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest156922156930_))
                              (let ((_hd156927156997_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest156922156930_)))
                                    (_tl156928156999_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest156922156930_))))
                                (let* ((_expr157002_ _hd156927156997_)
                                       (_rest157004_ _tl156928156999_))
                                  (declare (not safe))
                                  (_K156926156994_ _rest157004_ _expr157002_)))
                              (let ()
                                (declare (not safe))
                                (_else156924156938_))))))))
                 (_compile-stub156846_
                  (lambda (_output-scm156853_ _output-bin156854_)
                    (let* ((_gerbil-home156856_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir156858_
                            (path-expand '"lib" _gerbil-home156856_))
                           (_runtime156860_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp156862_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home156856_))
                           (_include-gambit-sharp156864_
                            (string-append
                             '"(include \""
                             _gambit-sharp156862_
                             '"\")"))
                           (_bin-scm156866_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx156840_)))
                           (_deps156868_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx156840_)))
                           (_deps156870_
                            (map gxc#find-static-module-file _deps156868_))
                           (_deps156875_
                            (filter (lambda (_$obj156872_)
                                      (let ((__tmp157411
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj156872_))))
                                        (declare (not safe))
                                        (not __tmp157411)))
                                    _deps156870_))
                           (_deps156879_
                            (filter (lambda (_f156877_)
                                      (let ((__tmp157412
                                             (member _f156877_
                                                     _runtime156860_)))
                                        (declare (not safe))
                                        (not __tmp157412)))
                                    _deps156875_))
                           (_output-base156881_
                            (string-append
                             (path-strip-extension _output-scm156853_)))
                           (_output-c156883_
                            (string-append _output-base156881_ '".c"))
                           (_output-o156885_
                            (string-append _output-base156881_ '".o"))
                           (_output-c_156887_
                            (string-append _output-base156881_ '"_.c"))
                           (_output-o_156889_
                            (string-append _output-base156881_ '"_.o"))
                           (_gsc-link-opts156891_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts156893_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts156895_
                            (let ((__tmp157413
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir156858_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157413)))
                           (_output-ld-opts156897_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros156899_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157414
                                       (let ((__tmp157415
                                              (let ((__tmp157416
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp156864_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157416))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157415))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157414))
                                (let ((__tmp157417
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp156864_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157417))))
                           (_gsc-link-opts156901_
                            (append _gsc-link-opts156891_
                                    _gsc-gx-macros156899_))
                           (_rpath156903_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir156858_)))
                           (_default-ld-options156905_
                            (let ((__tmp157418
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157418))))
                      (let ((__tmp157419
                             (lambda ()
                               (let ((__tmp157420
                                      (path-directory _output-bin156854_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157420)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157419))
                      (let ((__tmp157421
                             (lambda ()
                               (let ((__tmp157422
                                      (let ((__tmp157423
                                             (let ((__tmp157424
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm156866_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157424
                                                       _deps156879_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157423
                                                _runtime156860_))))
                                 (declare (not safe))
                                 (_generate-stub156844_ __tmp157422)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm156853_
                         __tmp157421))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157430
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157425
                                   (let ((__tmp157426
                                          (let ((__tmp157427
                                                 (let ((__tmp157428
                                                        (let ((__tmp157429
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm156853_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157429 _gsc-link-opts156901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_156887_
                                                         __tmp157428))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157427))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157426))))
                              (declare (not safe))
                              (gxc#invoke __tmp157430 __tmp157425))
                            (let ((__tmp157436
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157431
                                   (let ((__tmp157432
                                          (let ((__tmp157433
                                                 (let ((__tmp157434
                                                        (let ((__tmp157435
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_156887_ '()))))
                  (declare (not safe))
                  (cons _output-c156883_ __tmp157435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157434
                                                           _gsc-static-opts156895_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157433
                                                    _gsc-cc-opts156893_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157432))))
                              (declare (not safe))
                              (gxc#invoke __tmp157436 __tmp157431))
                            (let ((__tmp157446
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157437
                                   (let ((__tmp157438
                                          (let ((__tmp157439
                                                 (let ((__tmp157440
                                                        (let ((__tmp157441
                                                               (let ((__tmp157442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157443
                                     (let ((__tmp157444
                                            (let ((__tmp157445
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options156905_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir156858_
                                                    __tmp157445))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157444))))
                                (declare (not safe))
                                (cons _rpath156903_ __tmp157443))))
                         (declare (not safe))
                         (foldr1 cons __tmp157442 _output-ld-opts156897_))))
                  (declare (not safe))
                  (cons _output-o_156889_ __tmp157441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o156885_
                                                         __tmp157440))))
                                            (declare (not safe))
                                            (cons _output-bin156854_
                                                  __tmp157439))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157438))))
                              (declare (not safe))
                              (gxc#invoke __tmp157446 __tmp157437)))
                          '#!void)))))
          (let* ((_output-bin156848_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx156840_ _opts156841_)))
                 (_output-scm156850_
                  (string-append _output-bin156848_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub156846_ _output-scm156850_ _output-bin156848_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm156850_))))))
    (define gxc#find-export-binding
      (lambda (_ctx156790_ _id156791_)
        (let ((_$e156837_
               (let ((__tmp157448
                      (lambda (_e156792156794_)
                        (let* ((_g156796156806_ _e156792156794_)
                               (_else156798156814_ (lambda () '#f))
                               (_K156800156818_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g156796156806_
                                 'gx#module-export::t))
                              (let* ((_e156801156821_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156796156806_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e156802156824_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156796156806_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e156803156827_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156796156806_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e156803156827_ '0))
                                    (let ((_e156804156830_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g156796156806_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g156832156834_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g156832156834_
                                                    _id156791_)))
                                           _e156804156830_)
                                          (let ()
                                            (declare (not safe))
                                            (_K156800156818_))
                                          (let ()
                                            (declare (not safe))
                                            (_else156798156814_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else156798156814_))))
                              (let ()
                                (declare (not safe))
                                (_else156798156814_))))))
                     (__tmp157447
                      (##structure-ref
                       _ctx156790_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157448 __tmp157447))))
          (if _$e156837_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e156837_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx156782_ _id156783_)
        (let ((_$e156785_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx156782_ _id156783_))))
          (if _$e156785_
              ((lambda (_bind156788_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind156788_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id156783_)))
                 (##structure-ref _bind156788_ '1 gx#binding::t '#f))
               _$e156785_)
              (let ((__tmp157449
                     (##structure-ref
                      _ctx156782_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157449
                 _id156783_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx156669_)
        (letrec* ((_ht156671_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template156672_
                   (lambda (_in156734_ _phi156735_)
                     (let ((_iphi156737_
                            (fx+ _phi156735_
                                 (##direct-structure-ref
                                  _in156734_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports156738_
                            (##structure-ref
                             (##direct-structure-ref
                              _in156734_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp156740_ ((_rest156742_ _imports156738_)
                                        (_r156743_ '()))
                         (let* ((_rest156744156752_ _rest156742_)
                                (_else156746156760_ (lambda () _r156743_))
                                (_K156748156770_
                                 (lambda (_rest156763_ _in156764_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in156764_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi156737_))
                                           (let ((__tmp157450
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in156764_
                                                          _r156743_))))
                                             (declare (not safe))
                                             (_lp156740_
                                              _rest156763_
                                              __tmp157450))
                                           (let ()
                                             (declare (not safe))
                                             (_lp156740_
                                              _rest156763_
                                              _r156743_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in156764_
                                              'gx#module-import::t))
                                           (let ((_iphi156766_
                                                  (fx+ _phi156735_
                                                       (##direct-structure-ref
                                                        _in156764_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi156766_))
                                                 (let ((__tmp157451
                                                        (let ((__tmp157452
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in156764_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157452 _r156743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp156740_
                                                    _rest156763_
                                                    __tmp157451))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp156740_
                                                    _rest156763_
                                                    _r156743_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in156764_
                                                  'gx#import-set::t))
                                               (let ((_xphi156768_
                                                      (fx+ _iphi156737_
                                                           (##direct-structure-ref
                                                            _in156764_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi156768_))
                                                     (let ((__tmp157453
                                                            (let ((__tmp157454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in156764_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157454 _r156743_))))
               (declare (not safe))
               (_lp156740_ _rest156763_ __tmp157453))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi156768_)
                                                         (let ((__tmp157455
                                                                (let ((__tmp157456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template156672_
                                  _in156764_
                                  _iphi156737_))))
                          (declare (not safe))
                          (foldl1 cons _r156743_ __tmp157456))))
                   (declare (not safe))
                   (_lp156740_ _rest156763_ __tmp157455))
                 (let ()
                   (declare (not safe))
                   (_lp156740_ _rest156763_ _r156743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp156740_
                                                  _rest156763_
                                                  _r156743_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest156744156752_))
                               (let ((_hd156749156773_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest156744156752_)))
                                     (_tl156750156775_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest156744156752_))))
                                 (let* ((_in156778_ _hd156749156773_)
                                        (_rest156780_ _tl156750156775_))
                                   (declare (not safe))
                                   (_K156748156770_ _rest156780_ _in156778_)))
                               (let ()
                                 (declare (not safe))
                                 (_else156746156760_))))))))
                  (_find-deps156673_
                   (lambda (_rest156680_ _deps156681_)
                     (let* ((_rest156682156690_ _rest156680_)
                            (_else156684156698_ (lambda () _deps156681_))
                            (_K156686156722_
                             (lambda (_rest156701_ _hd156702_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd156702_
                                      'gx#module-context::t))
                                   (let ((_id156704_
                                          (##structure-ref
                                           _hd156702_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports156705_
                                          (##structure-ref
                                           _hd156702_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht156671_ _id156704_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps156673_
                                            _rest156701_
                                            _deps156681_))
                                         (let ((_$e156707_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd156702_))))
                                           (if _$e156707_
                                               ((lambda (_pre156710_)
                                                  (let ((_xdeps156712_
                                                         (let ((__tmp157457
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre156710_ _imports156705_))))
                   (declare (not safe))
                   (_find-deps156673_ __tmp157457 _deps156681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht156671_
                                                       _id156704_
                                                       _hd156702_))
                                                    (let ((__tmp157458
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd156702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps156712_))))
              (declare (not safe))
              (_find-deps156673_ _rest156701_ __tmp157458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e156707_)
                                               (let ((_xdeps156714_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps156673_
                                                         _imports156705_
                                                         _deps156681_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht156671_
                                                    _id156704_
                                                    _hd156702_))
                                                 (let ((__tmp157459
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd156702_
                                                                _xdeps156714_))))
                                                   (declare (not safe))
                                                   (_find-deps156673_
                                                    _rest156701_
                                                    __tmp157459)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd156702_
                                          'gx#prelude-context::t))
                                       (let ((_id156716_
                                              (##structure-ref
                                               _hd156702_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht156671_
                                                _id156716_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps156673_
                                                _rest156701_
                                                _deps156681_))
                                             (let ((_xdeps156718_
                                                    (let ((__tmp157460
                                                           (##structure-ref
                                                            _hd156702_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps156673_
                                                       __tmp157460
                                                       _deps156681_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht156671_
                                                      _id156716_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps156673_
                                                      _rest156701_
                                                      _xdeps156718_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht156671_
                                                        _id156716_
                                                        _hd156702_))
                                                     (let ((__tmp157461
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd156702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps156718_))))
               (declare (not safe))
               (_find-deps156673_ _rest156701_ __tmp157461)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd156702_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157462
                                                      (##direct-structure-ref
                                                       _hd156702_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157462))
                                               (let ((__tmp157463
                                                      (let ((__tmp157464
                                                             (##direct-structure-ref
                                                              _hd156702_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157464
                                                              _rest156701_))))
                                                 (declare (not safe))
                                                 (_find-deps156673_
                                                  __tmp157463
                                                  _deps156681_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps156673_
                                                  _rest156701_
                                                  _deps156681_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd156702_
                                                  'gx#module-export::t))
                                               (let ((__tmp157465
                                                      (let ((__tmp157466
                                                             (##direct-structure-ref
                                                              _hd156702_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157466
                                                              _rest156701_))))
                                                 (declare (not safe))
                                                 (_find-deps156673_
                                                  __tmp157465
                                                  _deps156681_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd156702_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157467
                                                              (##direct-structure-ref
                                                               _hd156702_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157467))
                                                       (let ((__tmp157468
                                                              (let ((__tmp157469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd156702_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157469 _rest156701_))))
                 (declare (not safe))
                 (_find-deps156673_ __tmp157468 _deps156681_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd156702_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps156720_
                           (let ()
                             (declare (not safe))
                             (_import-set-template156672_ _hd156702_ '0)))
                          (__tmp157470
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest156701_ _xdeps156720_))))
                     (declare (not safe))
                     (_find-deps156673_ __tmp157470 _deps156681_))
                   (let ()
                     (declare (not safe))
                     (_find-deps156673_ _rest156701_ _deps156681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd156702_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest156682156690_))
                           (let ((_hd156687156725_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest156682156690_)))
                                 (_tl156688156727_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest156682156690_))))
                             (let* ((_hd156730_ _hd156687156725_)
                                    (_rest156732_ _tl156688156727_))
                               (declare (not safe))
                               (_K156686156722_ _rest156732_ _hd156730_)))
                           (let ()
                             (declare (not safe))
                             (_else156684156698_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp157471
                                  (let ((_$e156675_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx156669_))))
                                    (if _$e156675_
                                        ((lambda (_pre156678_)
                                           (let ((__tmp157472
                                                  (##structure-ref
                                                   _ctx156669_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre156678_ __tmp157472)))
                                         _$e156675_)
                                        (##structure-ref
                                         _ctx156669_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps156673_ __tmp157471 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx156600_)
        (let* ((_context-id156602_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx156600_
                       'gx#module-context::t))
                    (##structure-ref _ctx156600_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx156600_)))
               (_scm156604_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id156602_))
                 '".scm"))
               (_dirs156606_ (let () (declare (not safe)) (load-path)))
               (_dirs156612_
                (let ((_user-libpath156608_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath156608_
                      (let ((_user-libpath156610_
                             (path-expand '"lib" _user-libpath156608_)))
                        (if (member _user-libpath156610_ _dirs156606_)
                            _dirs156606_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath156610_ _dirs156606_))))
                      _dirs156606_)))
               (_dirs156621_
                (let ((_$e156614_ (gxc#current-compile-output-dir)))
                  (if _$e156614_
                      ((lambda (_g156616156618_)
                         (let ()
                           (declare (not safe))
                           (cons _g156616156618_ _dirs156612_)))
                       _$e156614_)
                      _dirs156612_)))
               (_dirs156627_
                (map (lambda (_g156622156624_)
                       (path-expand '"static" _g156622156624_))
                     _dirs156621_)))
          (let _lp156630_ ((_rest156632_ _dirs156627_))
            (let* ((_rest156633156641_ _rest156632_)
                   (_else156635156649_
                    (lambda ()
                      (let ((__tmp157473
                             (##structure-ref
                              _ctx156600_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157473
                         _scm156604_))))
                   (_K156637156657_
                    (lambda (_rest156652_ _dir156653_)
                      (let ((_path156655_
                             (path-expand _scm156604_ _dir156653_)))
                        (if (file-exists? _path156655_)
                            _path156655_
                            (let ()
                              (declare (not safe))
                              (_lp156630_ _rest156652_)))))))
              (if (let () (declare (not safe)) (##pair? _rest156633156641_))
                  (let ((_hd156638156660_
                         (let ()
                           (declare (not safe))
                           (##car _rest156633156641_)))
                        (_tl156639156662_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156633156641_))))
                    (let* ((_dir156665_ _hd156638156660_)
                           (_rest156667_ _tl156639156662_))
                      (declare (not safe))
                      (_K156637156657_ _rest156667_ _dir156665_)))
                  (let () (declare (not safe)) (_else156635156649_))))))))
    (define gxc#file-empty?
      (lambda (_path156598_)
        (let ((__tmp157474 (file-info-size (file-info _path156598_ '#t))))
          (declare (not safe))
          (zero? __tmp157474))))
    (define gxc#compile-top-module
      (lambda (_ctx156587_)
        (let ((__tmp157478
               (lambda ()
                 (let ((__tmp157479
                        (##structure-ref
                         _ctx156587_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157479))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157480
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156587_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157480))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156587_))
                 (if (let ((__tmp157481
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156587_))))
                       (declare (not safe))
                       (null? __tmp157481))
                     (let* ((_thr1156592_
                             (let ((__tmp157482
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156587_)))))
                               (declare (not safe))
                               (spawn __tmp157482)))
                            (_thr2156595_
                             (let ((__tmp157483
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156587_)))))
                               (declare (not safe))
                               (spawn __tmp157483))))
                       (let () (declare (not safe)) (gxc#join! _thr1156592_))
                       (let () (declare (not safe)) (gxc#join! _thr2156595_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156587_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156587_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156587_))
                     '#!void)))
              (__tmp157477
               (let ((__obj157285
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157285)
                 __obj157285))
              (__tmp157476 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157475 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157478
           gx#current-expander-context
           _ctx156587_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157477
           gxc#current-compile-runtime-sections
           __tmp157476
           gxc#current-compile-runtime-names
           __tmp157475))))
    (define gxc#collect-bindings
      (lambda (_ctx156585_)
        (let ((__tmp157484
               (##structure-ref _ctx156585_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157484))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156531_)
        (letrec ((_compile1156533_
                  (lambda (_ctx156574_)
                    (let* ((_code156576_
                            (##structure-ref
                             _ctx156574_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156580_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156576_))
                                (let ((_idstr156578_
                                       (let ((__tmp157485
                                              (##structure-ref
                                               _ctx156574_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157485))))
                                  (string-append _idstr156578_ '"__0"))
                                '#f)))
                      (if _rt156580_
                          (begin
                            (let ((__tmp157486
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157486 _ctx156574_ _rt156580_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156535_
                               _ctx156574_
                               _code156576_)))
                          (let ((_path156583_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156574_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156583_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156536_
                         _ctx156574_
                         _code156576_
                         _rt156580_)))))
                 (_context-timestamp156534_
                  (lambda (_ctx156572_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156572_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156535_
                  (lambda (_ctx156554_ _code156555_)
                    (let* ((_lifts156557_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156560_
                            (let ((__tmp157489
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156555_))))
                                  (__tmp157488
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157487
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157489
                               gx#current-expander-context
                               _ctx156554_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156557_
                               gxc#current-compile-marks
                               __tmp157488
                               gxc#current-compile-identifiers
                               __tmp157487)))
                           (_runtime-code156562_
                            (if (let ((__tmp157490 (unbox _lifts156557_)))
                                  (declare (not safe))
                                  (null? __tmp157490))
                                _runtime-code156560_
                                (let ((__tmp157491
                                       (let ((__tmp157493
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156560_
                                                      '())))
                                             (__tmp157492
                                              (reverse (unbox _lifts156557_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157493
                                                 __tmp157492))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157491))))
                           (_runtime-code156564_
                            (let ((__tmp157494
                                   (let ((__tmp157496
                                          (let ((__tmp157497
                                                 (let ((__tmp157500
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156534_
                                                           _ctx156554_)))
                                                       (__tmp157498
                                                        (let ((__tmp157499
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157499
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157500
                                                         __tmp157498))))
                                            (declare (not safe))
                                            (cons 'define __tmp157497)))
                                         (__tmp157495
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156562_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157496 __tmp157495))))
                              (declare (not safe))
                              (cons 'begin __tmp157494)))
                           (_scm0156566_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156554_
                               '0
                               '".scm"))))
                      (let ((_scms156569_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156554_))))
                        (let ((__tmp157501
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156566_
                                    _runtime-code156564_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157501
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156569_)
                            (delete-file _scms156569_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156566_
                           '" => "
                           _scms156569_))
                        (copy-file _scm0156566_ _scms156569_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156566_))))))
                 (_generate-loader-code156536_
                  (lambda (_ctx156543_ _code156544_ _rt156545_)
                    (let* ((_loader-code156548_
                            (let ((__tmp157502
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156544_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157502
                               gx#current-expander-context
                               _ctx156543_)))
                           (_loader-code156550_
                            (if _rt156545_
                                (let ((__tmp157503
                                       (let ((__tmp157504
                                              (let ((__tmp157505
                                                     (let ((__tmp157506
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157505 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156548_
                                               __tmp157504))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157503))
                                _loader-code156548_)))
                      (let ((__tmp157507
                             (lambda ()
                               (let ((__tmp157508
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156543_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157508
                                  _loader-code156550_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157507
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156538_
                 (let ((__tmp157509
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156531_))))
                   (declare (not safe))
                   (cons _ctx156531_ __tmp157509))))
            (for-each
             (lambda (_ctx156540_)
               (let ((__tmp157510
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156533_ _ctx156540_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157510
                  gxc#current-compile-decls
                  '())))
             _all-modules156538_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156428_)
        (letrec ((_compile-ssi156430_
                  (lambda (_code156501_)
                    (let* ((_path156503_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156428_
                               '#f
                               '".ssi")))
                           (_prelude156514_
                            (let* ((_super156505_
                                    (##structure-ref
                                     _ctx156428_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156507_
                                    (##structure-ref
                                     _super156505_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156507_
                                  ((lambda (_g156509156511_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156509156511_)))
                                   _$e156507_)
                                  ':<root>)))
                           (_ns156516_
                            (##structure-ref
                             _ctx156428_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156518_
                            (symbol->string
                             (##structure-ref
                              _ctx156428_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156525_
                            (let ((_$e156520_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156518_ '#\/))))
                              (if _$e156520_
                                  ((lambda (_x156523_)
                                     (string->symbol
                                      (substring _idstr156518_ '0 _x156523_)))
                                   _$e156520_)
                                  '#f)))
                           (_rt156527_
                            (let ((__tmp157511
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157511 _ctx156428_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156503_))
                      (let ((__tmp157512
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156514_))
                               (if _pkg156525_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156525_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156516_))
                               (newline)
                               (pretty-print _code156501_)
                               (if _rt156527_
                                   (pretty-print
                                    (let ((__tmp157513
                                           (let ((__tmp157517
                                                  (let ((__tmp157518
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157518)))
                                                 (__tmp157514
                                                  (let ((__tmp157515
                                                         (let ((__tmp157516
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156527_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157515 '()))))
                                             (declare (not safe))
                                             (cons __tmp157517 __tmp157514))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157513)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156503_
                         __tmp157512)))))
                 (_compile-phi156431_
                  (lambda (_part156441_)
                    (let* ((_part156442156455_ _part156441_)
                           (_E156444156459_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156442156455_))))
                           (_K156445156470_
                            (lambda (_code156462_
                                     _n156463_
                                     _phi156464_
                                     _phi-ctx156465_)
                              (let* ((_code156468_
                                      (let ((__tmp157519
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156462_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157519
                                         gx#current-expander-context
                                         _phi-ctx156465_
                                         gx#current-expander-phi
                                         _phi156464_)))
                                     (__tmp157520
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156428_
                                         _n156463_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157520
                                 _code156468_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156442156455_))
                          (let ((_hd156446156473_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156442156455_)))
                                (_tl156447156475_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156442156455_))))
                            (let ((_phi-ctx156478_ _hd156446156473_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156447156475_))
                                  (let ((_hd156448156480_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156447156475_)))
                                        (_tl156449156482_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156447156475_))))
                                    (let ((_phi156485_ _hd156448156480_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156449156482_))
                                          (let ((_hd156450156487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156449156482_)))
                                                (_tl156451156489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156449156482_))))
                                            (let ((_n156492_ _hd156450156487_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156451156489_))
                                                  (let ((_hd156452156494_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156451156489_)))
                                                        (_tl156453156496_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156451156489_))))
                                                    (let ((_code156499_
                                                           _hd156452156494_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156453156496_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156445156470_
                                                             _code156499_
                                                             _n156492_
                                                             _phi156485_
                                                             _phi-ctx156478_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156444156459_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156444156459_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156444156459_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156444156459_)))))
                          (let () (declare (not safe)) (_E156444156459_)))))))
          (let ((_g157521_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156428_))))
            (begin
              (let ((_g157522_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157521_)
                           (##vector-length _g157521_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157522_ 2)))
                    (error "Context expects 2 values" _g157522_)))
              (let ((_ssi-code156433_
                     (let () (declare (not safe)) (##vector-ref _g157521_ 0)))
                    (_phi-code156434_
                     (let () (declare (not safe)) (##vector-ref _g157521_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156430_ _ssi-code156433_))
                  (let ((_threads156439_
                         (map (lambda (_code156436_)
                                (let ((__tmp157523
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156431_
                                            _code156436_)))))
                                  (declare (not safe))
                                  (spawn __tmp157523)))
                              _phi-code156434_)))
                    (for-each gxc#join! _threads156439_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156411_)
        (let* ((_path156413_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156411_ '#f '".ssxi.ss")))
               (_code156415_
                (let ((__tmp157524
                       (##structure-ref
                        _ctx156411_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157524)))
               (_idstr156417_
                (symbol->string
                 (##structure-ref _ctx156411_ '1 gx#expander-context::t '#f)))
               (_pkg156424_
                (let ((_$e156419_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156417_ '#\/))))
                  (if _$e156419_
                      ((lambda (_x156422_)
                         (string->symbol
                          (substring _idstr156417_ '0 _x156422_)))
                       _$e156419_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156413_))
          (let ((__tmp157525
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156424_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156424_))
                       '#!void)
                   (newline)
                   (pretty-print _code156415_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156413_ __tmp157525)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156404_)
        (let* ((_state156406_
                (let ((__obj157286
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157286 _ctx156404_)
                  __obj157286))
               (_ssi-code156408_
                (let ((__tmp157526
                       (##structure-ref
                        _ctx156404_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp157526
                   'state:
                   _state156406_))))
          (values _ssi-code156408_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156406_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156397_)
        (let ((_lifts156399_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157529
                 (lambda ()
                   (let ((_code156402_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156397_))))
                     (if (let ((__tmp157530 (unbox _lifts156399_)))
                           (declare (not safe))
                           (null? __tmp157530))
                         _code156402_
                         (let ((__tmp157531
                                (let ((__tmp157533
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156402_ '())))
                                      (__tmp157532
                                       (reverse (unbox _lifts156399_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157533 __tmp157532))))
                           (declare (not safe))
                           (cons 'begin __tmp157531))))))
                (__tmp157528
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157527
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157529
             gxc#current-compile-lift
             _lifts156399_
             gxc#current-compile-marks
             __tmp157528
             gxc#current-compile-identifiers
             __tmp157527)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156393_)
        (let ((_modules156395_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157534
                 (##structure-ref _ctx156393_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157534 'modules: _modules156395_))
          (reverse (unbox _modules156395_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156376_ _code156377_ _phi?156378_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156376_))
        (let ((__tmp157535
               (lambda ()
                 (pretty-print
                  (let ((__tmp157536
                         (let ((__tmp157543
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157537
                                (let ((__tmp157542
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157538
                                       (let ((__tmp157541
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157539
                                              (let ((__tmp157540
                                                     (if _phi?156378_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157540))))
                                         (declare (not safe))
                                         (cons __tmp157541 __tmp157539))))
                                  (declare (not safe))
                                  (cons __tmp157542 __tmp157538))))
                           (declare (not safe))
                           (cons __tmp157543 __tmp157537))))
                    (declare (not safe))
                    (cons 'declare __tmp157536)))
                 (pretty-print _code156377_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156376_ __tmp157535))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156376_ _phi?156378_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156376_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156384_ _code156385_)
        (let ((_phi?156387_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156384_ _code156385_ _phi?156387_))))
    (define gxc#compile-scm-file
      (lambda _g157545_
        (let ((_g157544_ (let () (declare (not safe)) (##length _g157545_))))
          (cond ((let () (declare (not safe)) (##fx= _g157544_ 2))
                 (apply (lambda (_path156384_ _code156385_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156384_
                             _code156385_)))
                        _g157545_))
                ((let () (declare (not safe)) (##fx= _g157544_ 3))
                 (apply (lambda (_path156389_ _code156390_ _phi?156391_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156389_
                             _code156390_
                             _phi?156391_)))
                        _g157545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157545_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156277_)
        (let _lp156279_ ((_rest156281_ (gxc#current-compile-gsc-options))
                         (_opts156282_ '()))
          (let* ((_rest156283156303_ _rest156281_)
                 (_else156287156311_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156277_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157546
                               (let ((__tmp157547 (reverse _opts156282_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157547))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157546))
                        (reverse _opts156282_)))))
            (let ((_K156297156354_
                   (lambda (_rest156352_)
                     (let ()
                       (declare (not safe))
                       (_lp156279_ _rest156352_ _opts156282_))))
                  (_K156292156336_
                   (lambda (_rest156334_)
                     (let ()
                       (declare (not safe))
                       (_lp156279_ _rest156334_ _opts156282_))))
                  (_K156289156318_
                   (lambda (_rest156315_ _opt156316_)
                     (let ((__tmp157548
                            (let ()
                              (declare (not safe))
                              (cons _opt156316_ _opts156282_))))
                       (declare (not safe))
                       (_lp156279_ _rest156315_ __tmp157548)))))
              (if (let () (declare (not safe)) (##pair? _rest156283156303_))
                  (let ((_tl156299156359_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156283156303_)))
                        (_hd156298156357_
                         (let ()
                           (declare (not safe))
                           (##car _rest156283156303_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156298156357_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156299156359_))
                            (let* ((_tl156301156362_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156299156359_)))
                                   (_rest156365_ _tl156301156362_))
                              (declare (not safe))
                              (_K156297156354_ _rest156365_))
                            (let ((_opt156326_ _hd156298156357_)
                                  (_rest156328_ _tl156299156359_))
                              (let ()
                                (declare (not safe))
                                (_K156289156318_ _rest156328_ _opt156326_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156298156357_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156299156359_))
                                (let* ((_tl156296156344_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156299156359_)))
                                       (_rest156347_ _tl156296156344_))
                                  (declare (not safe))
                                  (_K156292156336_ _rest156347_))
                                (let ((_opt156326_ _hd156298156357_)
                                      (_rest156328_ _tl156299156359_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156289156318_
                                     _rest156328_
                                     _opt156326_))))
                            (let ((_opt156326_ _hd156298156357_)
                                  (_rest156328_ _tl156299156359_))
                              (let ()
                                (declare (not safe))
                                (_K156289156318_ _rest156328_ _opt156326_))))))
                  (let () (declare (not safe)) (_else156287156311_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156371_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156371_))))
    (define gxc#gsc-link-options
      (lambda _g157550_
        (let ((_g157549_ (let () (declare (not safe)) (##length _g157550_))))
          (cond ((let () (declare (not safe)) (##fx= _g157549_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157550_))
                ((let () (declare (not safe)) (##fx= _g157549_ 1))
                 (apply (lambda (_phi?156373_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156373_)))
                        _g157550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157550_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156178_)
        (let _lp156180_ ((_rest156182_ (gxc#current-compile-gsc-options))
                         (_opts156183_ '()))
          (let* ((_rest156184156204_ _rest156182_)
                 (_else156188156212_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156178_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157551
                               (let ((__tmp157552 (reverse _opts156183_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157552))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157551))
                        (reverse _opts156183_)))))
            (let ((_K156198156251_
                   (lambda (_rest156248_ _opt156249_)
                     (let ((__tmp157553
                            (let ((__tmp157554
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156183_))))
                              (declare (not safe))
                              (cons _opt156249_ __tmp157554))))
                       (declare (not safe))
                       (_lp156180_ _rest156248_ __tmp157553))))
                  (_K156193156232_
                   (lambda (_rest156230_)
                     (let ()
                       (declare (not safe))
                       (_lp156180_ _rest156230_ _opts156183_))))
                  (_K156190156218_
                   (lambda (_rest156216_)
                     (let ()
                       (declare (not safe))
                       (_lp156180_ _rest156216_ _opts156183_)))))
              (if (let () (declare (not safe)) (##pair? _rest156184156204_))
                  (let ((_tl156200156256_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156184156204_)))
                        (_hd156199156254_
                         (let ()
                           (declare (not safe))
                           (##car _rest156184156204_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156199156254_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156200156256_))
                            (let ((_tl156202156261_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156200156256_)))
                                  (_hd156201156259_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156200156256_))))
                              (let ((_opt156264_ _hd156201156259_)
                                    (_rest156266_ _tl156202156261_))
                                (let ()
                                  (declare (not safe))
                                  (_K156198156251_ _rest156266_ _opt156264_))))
                            (let ((_rest156224_ _tl156200156256_))
                              (declare (not safe))
                              (_K156190156218_ _rest156224_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156199156254_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156200156256_))
                                (let* ((_tl156197156240_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156200156256_)))
                                       (_rest156243_ _tl156197156240_))
                                  (declare (not safe))
                                  (_K156193156232_ _rest156243_))
                                (let ((_rest156224_ _tl156200156256_))
                                  (declare (not safe))
                                  (_K156190156218_ _rest156224_)))
                            (let ((_rest156224_ _tl156200156256_))
                              (declare (not safe))
                              (_K156190156218_ _rest156224_)))))
                  (let () (declare (not safe)) (_else156188156212_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156272_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156272_))))
    (define gxc#gsc-cc-options
      (lambda _g157556_
        (let ((_g157555_ (let () (declare (not safe)) (##length _g157556_))))
          (cond ((let () (declare (not safe)) (##fx= _g157555_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157556_))
                ((let () (declare (not safe)) (##fx= _g157555_ 1))
                 (apply (lambda (_phi?156274_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156274_)))
                        _g157556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157556_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156173_)
        (let* ((_user-staticdir156175_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157557
                (let ((__tmp157558
                       (string-append
                        '"-I "
                        _staticdir156173_
                        '" -I "
                        _user-staticdir156175_)))
                  (declare (not safe))
                  (cons __tmp157558 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157557))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156085_ ((_rest156087_ (gxc#current-compile-gsc-options))
                         (_opts156088_ '()))
          (let* ((_rest156089156109_ _rest156087_)
                 (_else156093156117_ (lambda () _opts156088_)))
            (let ((_K156103156160_
                   (lambda (_rest156158_)
                     (let ()
                       (declare (not safe))
                       (_lp156085_ _rest156158_ _opts156088_))))
                  (_K156098156138_
                   (lambda (_rest156135_ _opt156136_)
                     (let ((__tmp157559
                            (append _opts156088_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt156136_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp156085_ _rest156135_ __tmp157559))))
                  (_K156095156123_
                   (lambda (_rest156121_)
                     (let ()
                       (declare (not safe))
                       (_lp156085_ _rest156121_ _opts156088_)))))
              (if (let () (declare (not safe)) (##pair? _rest156089156109_))
                  (let ((_tl156105156165_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156089156109_)))
                        (_hd156104156163_
                         (let ()
                           (declare (not safe))
                           (##car _rest156089156109_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156104156163_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156105156165_))
                            (let* ((_tl156107156168_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156105156165_)))
                                   (_rest156171_ _tl156107156168_))
                              (declare (not safe))
                              (_K156103156160_ _rest156171_))
                            (let ((_rest156129_ _tl156105156165_))
                              (declare (not safe))
                              (_K156095156123_ _rest156129_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156104156163_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156105156165_))
                                (let ((_tl156102156148_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156105156165_)))
                                      (_hd156101156146_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156105156165_))))
                                  (let ((_opt156151_ _hd156101156146_)
                                        (_rest156153_ _tl156102156148_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156098156138_
                                       _rest156153_
                                       _opt156151_))))
                                (let ((_rest156129_ _tl156105156165_))
                                  (declare (not safe))
                                  (_K156095156123_ _rest156129_)))
                            (let ((_rest156129_ _tl156105156165_))
                              (declare (not safe))
                              (_K156095156123_ _rest156129_)))))
                  (let () (declare (not safe)) (_else156093156117_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156082_)
        (let ((__tmp157560
               (let () (declare (not safe)) (string-empty? _str156082_))))
          (declare (not safe))
          (not __tmp157560))))
    (define gxc#gsc-compile-file
      (lambda (_path156050_ _phi?156051_)
        (letrec ((_gsc-link-path156053_
                  (lambda (_base-path156074_)
                    (let _lp156076_ ((_n156078_ '1))
                      (let ((_path156080_
                             (string-append
                              _base-path156074_
                              '".o"
                              (number->string _n156078_))))
                        (if (file-exists? _path156080_)
                            (let ((__tmp157561
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156078_ '1))))
                              (declare (not safe))
                              (_lp156076_ __tmp157561))
                            _path156080_))))))
          (let* ((_base-path156055_ (path-strip-extension _path156050_))
                 (_path-c156057_ (string-append _base-path156055_ '".c"))
                 (_path-o156059_ (string-append _base-path156055_ '".o"))
                 (_link-path156061_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156053_ _base-path156055_)))
                 (_link-path-c156063_ (string-append _link-path156061_ '".c"))
                 (_link-path-o156065_ (string-append _link-path156061_ '".o"))
                 (_gsc-link-opts156067_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156051_)))
                 (_gsc-cc-opts156069_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156051_)))
                 (_gcc-ld-opts156071_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157568 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157562
                   (let ((__tmp157563
                          (let ((__tmp157564
                                 (let ((__tmp157565
                                        (let ((__tmp157566
                                               (let ((__tmp157567
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156050_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157567
                                                         _gsc-link-opts156067_))))
                                          (declare (not safe))
                                          (cons _link-path-c156063_
                                                __tmp157566))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157565))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157564))))
                     (declare (not safe))
                     (cons '"-link" __tmp157563))))
              (declare (not safe))
              (gxc#invoke __tmp157568 __tmp157562 'stdout-redirection: '#t))
            (let ((__tmp157575 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157569
                   (let ((__tmp157570
                          (let ((__tmp157571
                                 (let ((__tmp157572
                                        (let ((__tmp157573
                                               (let ((__tmp157574
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156063_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156057_
                                                       __tmp157574))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157573
                                                  _gsc-cc-opts156069_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157572))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157571))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157570))))
              (declare (not safe))
              (gxc#invoke __tmp157575 __tmp157569 'stdout-redirection: '#t))
            (let ((__tmp157581 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157576
                   (let ((__tmp157577
                          (let ((__tmp157578
                                 (let ((__tmp157579
                                        (let ((__tmp157580
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156065_
                                                       _gcc-ld-opts156071_))))
                                          (declare (not safe))
                                          (cons _path-o156059_ __tmp157580))))
                                   (declare (not safe))
                                   (cons _link-path156061_ __tmp157579))))
                            (declare (not safe))
                            (cons '"-o" __tmp157578))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157577))))
              (declare (not safe))
              (gxc#invoke __tmp157581 __tmp157576))
            (for-each
             delete-file
             (let ((__tmp157582
                    (let ((__tmp157583
                           (let ((__tmp157584
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156065_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156063_ __tmp157584))))
                      (declare (not safe))
                      (cons _path-o156059_ __tmp157583))))
               (declare (not safe))
               (cons _path-c156057_ __tmp157582)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156021_ _n156022_ _ext156023_)
        (letrec ((_module-relative-path156025_
                  (lambda (_ctx156048_)
                    (path-strip-directory
                     (let ((__tmp157585
                            (##structure-ref
                             _ctx156048_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157585)))))
                 (_module-source-directory156026_
                  (lambda (_ctx156044_)
                    (path-directory
                     (let ((_mpath156046_
                            (##structure-ref
                             _ctx156044_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156046_))
                           _mpath156046_
                           (last _mpath156046_))))))
                 (_section-string156027_
                  (lambda (_n156042_)
                    (if (let () (declare (not safe)) (number? _n156042_))
                        (number->string _n156042_)
                        (if (let () (declare (not safe)) (symbol? _n156042_))
                            (symbol->string _n156042_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156042_))
                                _n156042_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156042_)))))))
                 (_file-name156028_
                  (lambda (_path156040_)
                    (if _n156022_
                        (string-append
                         _path156040_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156027_ _n156022_))
                         _ext156023_)
                        (string-append _path156040_ _ext156023_))))
                 (_file-path156029_
                  (lambda ()
                    (let ((_$e156035_ (gxc#current-compile-output-dir)))
                      (if _$e156035_
                          ((lambda (_outdir156038_)
                             (path-expand
                              (let ((__tmp157586
                                     (let ((__tmp157587
                                            (##structure-ref
                                             _ctx156021_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157587))))
                                (declare (not safe))
                                (_file-name156028_ __tmp157586))
                              _outdir156038_))
                           _$e156035_)
                          (path-expand
                           (let ((__tmp157588
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156025_
                                     _ctx156021_))))
                             (declare (not safe))
                             (_file-name156028_ __tmp157588))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156026_
                              _ctx156021_))))))))
          (let ((_path156031_
                 (let () (declare (not safe)) (_file-path156029_))))
            (let ((__tmp157589
                   (lambda ()
                     (let ((__tmp157590 (path-directory _path156031_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157590)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157589))
            _path156031_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156003_)
        (letrec ((_file-name156005_
                  (lambda (_id156019_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156019_))
                     '".scm")))
                 (_file-path156006_
                  (lambda ()
                    (let* ((_file156012_
                            (let ((__tmp157591
                                   (##structure-ref
                                    _ctx156003_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156005_ __tmp157591)))
                           (_$e156014_ (gxc#current-compile-output-dir)))
                      (if _$e156014_
                          ((lambda (_outdir156017_)
                             (path-expand
                              _file156012_
                              (path-expand '"static" _outdir156017_)))
                           _$e156014_)
                          (path-expand _file156012_ '"static"))))))
          (let ((_path156008_
                 (let () (declare (not safe)) (_file-path156006_))))
            (let ((__tmp157592
                   (lambda ()
                     (let ((__tmp157593 (path-directory _path156008_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157593)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157592))
            _path156008_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx155997_ _opts155998_)
        (let ((_$e156000_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts155998_))))
          (if _$e156000_
              (values _$e156000_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx155997_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr155990_)
        (if (let () (declare (not safe)) (string? _idstr155990_))
            (let* ((_str155992_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr155990_)))
                   (_strs155994_
                    (let ()
                      (declare (not safe))
                      (string-split _str155992_ '#\/))))
              (let () (declare (not safe)) (string-join _strs155994_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr155990_))
                (let ((__tmp157594 (symbol->string _idstr155990_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157594))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr155990_))))))
    (define gxc#invoke__%
      (lambda (_g157595_
               _stdout-redirection155951155955_
               _stderr-redirection155952155957_
               _program155959_
               _args155960_)
        (let* ((_stdout-redirection155962_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection155951155955_ absent-value))
                    '#f
                    _stdout-redirection155951155955_))
               (_stderr-redirection155964_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection155952155957_ absent-value))
                    '#f
                    _stderr-redirection155952155957_)))
          (let ((__tmp157596
                 (let ()
                   (declare (not safe))
                   (cons _program155959_ _args155960_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157596))
          (let* ((_proc155966_
                  (open-process
                   (let ((__tmp157597
                          (let ((__tmp157598
                                 (let ((__tmp157599
                                        (let ((__tmp157600
                                               (let ((__tmp157601
                                                      (let ((__tmp157602
                                                             (let ((__tmp157603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection155964_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp157603))))
                (declare (not safe))
                (cons _stdout-redirection155962_ __tmp157602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp157601))))
                                          (declare (not safe))
                                          (cons _args155960_ __tmp157600))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp157599))))
                            (declare (not safe))
                            (cons _program155959_ __tmp157598))))
                     (declare (not safe))
                     (cons 'path: __tmp157597))))
                 (_output155971_
                  (if (or _stdout-redirection155962_
                          _stderr-redirection155964_)
                      (read-line _proc155966_ '#f)
                      '#f)))
            (let ((_status155974_ (process-status _proc155966_)))
              (close-port _proc155966_)
              (if (let () (declare (not safe)) (zero? _status155974_))
                  '#!void
                  (begin
                    (display _output155971_)
                    (let ((__tmp157604
                           (let ()
                             (declare (not safe))
                             (cons _program155959_ _args155960_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp157604
                       _status155974_)))))))))
    (define gxc#invoke__@
      (lambda (_keys155950155979_ . _args155981_)
        (apply gxc#invoke__%
               _keys155950155979_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys155950155979_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys155950155979_
                  'stderr-redirection:
                  absent-value))
               _args155981_)))
    (define gxc#invoke
      (lambda _args155953155987_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args155953155987_)))
    (define gxc#join!
      (lambda (_thread155944_)
        (let ((__tmp157606
               (lambda (_exn155946_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn155946_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn155946_)))
                     (raise _exn155946_))))
              (__tmp157605 (lambda () (thread-join! _thread155944_))))
          (declare (not safe))
          (with-catch __tmp157606 __tmp157605))))))
