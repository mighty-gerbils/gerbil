(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708271191)
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
      (lambda (_path296185_ _fun296186_)
        (with-output-to-file
         (let ((__tmp300346
                (let ()
                  (declare (not safe))
                  (cons _path296185_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp300346))
         _fun296186_)))
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
      (lambda (_gerbil-libdir296180_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir296180_)))
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
      (lambda (_dir296178_) (delete-file-or-directory _dir296178_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath296152_ _opts296153_)
        (if (let () (declare (not safe)) (string? _srcpath296152_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath296152_)))
        (let ((_outdir296155_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts296153_)))
              (_invoke-gsc?296156_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts296153_)))
              (_gsc-options296157_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts296153_)))
              (_keep-scm?296158_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts296153_)))
              (_verbosity296159_
               (let () (declare (not safe)) (pgetq 'verbose: _opts296153_)))
              (_optimize296160_
               (let () (declare (not safe)) (pgetq 'optimize: _opts296153_)))
              (_debug296161_
               (let () (declare (not safe)) (pgetq 'debug: _opts296153_)))
              (_gen-ssxi296162_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts296153_))))
          (if _outdir296155_
              (let ((__tmp300347
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir296155_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp300347))
              '#!void)
          (if _optimize296160_
              (let ((__tmp300348
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp300348))
              '#!void)
          (let ((__tmp300352
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath296152_))
                   (let ((__tmp300353
                          (let ((__tmp300354
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath296152_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp300354))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp300353))))
                (__tmp300351
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp300349
                 (let ((__tmp300350
                        (let ()
                          (declare (not safe))
                          (cons _srcpath296152_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp300350))))
            (declare (not safe))
            (call-with-parameters
             __tmp300352
             gxc#current-compile-output-dir
             _outdir296155_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?296156_
             gxc#current-compile-gsc-options
             _gsc-options296157_
             gxc#current-compile-keep-scm
             _keep-scm?296158_
             gxc#current-compile-verbose
             _verbosity296159_
             gxc#current-compile-optimize
             _optimize296160_
             gxc#current-compile-debug
             _debug296161_
             gxc#current-compile-generate-ssxi
             _gen-ssxi296162_
             gxc#current-compile-timestamp
             __tmp300351
             gxc#current-compile-context
             __tmp300349
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath296171_)
        (let ((_opts296173_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath296171_ _opts296173_))))
    (define gxc#compile-module
      (lambda _g300356_
        (let ((_g300355_ (let () (declare (not safe)) (##length _g300356_))))
          (cond ((let () (declare (not safe)) (##fx= _g300355_ 1))
                 (apply (lambda (_srcpath296171_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath296171_)))
                        _g300356_))
                ((let () (declare (not safe)) (##fx= _g300355_ 2))
                 (apply (lambda (_srcpath296175_ _opts296176_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath296175_
                             _opts296176_)))
                        _g300356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g300356_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath296128_ _opts296129_)
        (if (let () (declare (not safe)) (string? _srcpath296128_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath296128_)))
        (let ((_outdir296131_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts296129_)))
              (_invoke-gsc?296132_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts296129_)))
              (_gsc-options296133_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts296129_)))
              (_keep-scm?296134_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts296129_)))
              (_verbosity296135_
               (let () (declare (not safe)) (pgetq 'verbose: _opts296129_)))
              (_debug296136_
               (let () (declare (not safe)) (pgetq 'debug: _opts296129_))))
          (if _outdir296131_
              (let ((__tmp300357
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir296131_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp300357))
              '#!void)
          (let ((__tmp300361
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath296128_))
                   (let ((__tmp300362
                          (let ((__tmp300363
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath296128_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp300363))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp300362
                      _opts296129_))))
                (__tmp300360
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp300358
                 (let ((__tmp300359
                        (let ()
                          (declare (not safe))
                          (cons _srcpath296128_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp300359))))
            (declare (not safe))
            (call-with-parameters
             __tmp300361
             gxc#current-compile-output-dir
             _outdir296131_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?296132_
             gxc#current-compile-gsc-options
             _gsc-options296133_
             gxc#current-compile-keep-scm
             _keep-scm?296134_
             gxc#current-compile-verbose
             _verbosity296135_
             gxc#current-compile-debug
             _debug296136_
             gxc#current-compile-timestamp
             __tmp300360
             gxc#current-compile-context
             __tmp300358
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath296144_)
        (let ((_opts296146_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath296144_ _opts296146_))))
    (define gxc#compile-exe
      (lambda _g300365_
        (let ((_g300364_ (let () (declare (not safe)) (##length _g300365_))))
          (cond ((let () (declare (not safe)) (##fx= _g300364_ 1))
                 (apply (lambda (_srcpath296144_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath296144_)))
                        _g300365_))
                ((let () (declare (not safe)) (##fx= _g300364_ 2))
                 (apply (lambda (_srcpath296148_ _opts296149_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath296148_ _opts296149_)))
                        _g300365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g300365_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx296124_ _opts296125_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts296125_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx296124_
               _opts296125_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx296124_
               _opts296125_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx296007_ _opts296008_)
        (letrec ((_generate-stub296010_
                  (lambda (_builtin-modules296120_)
                    (let ((_mod-main296122_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx296007_ 'main))))
                      (write (let ((__tmp300366
                                    (let ((__tmp300367
                                           (let ((__tmp300368
                                                  (let ((__tmp300369
                                                         (let ((__tmp300371
                                                                (let ((__tmp300372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules296120_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp300372)))
                       (__tmp300370
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp300371 __tmp300370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp300369))))
                                             (declare (not safe))
                                             (cons __tmp300368 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp300367))))
                               (declare (not safe))
                               (cons 'define __tmp300366)))
                      (write (let ((__tmp300373
                                    (let ((__tmp300412
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp300374
                                           (let ((__tmp300375
                                                  (let ((__tmp300376
                                                         (let ((__tmp300400
                                                                (let ((__tmp300401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp300402
                                      (let ((__tmp300410
                                             (let ((__tmp300411
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp300411)))
                                            (__tmp300403
                                             (let ((__tmp300404
                                                    (let ((__tmp300405
                                                           (let ((__tmp300406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp300407
                                 (let ((__tmp300408
                                        (let ((__tmp300409
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp300409 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp300408))))
                            (declare (not safe))
                            (cons __tmp300407 '()))))
                     (declare (not safe))
                     (cons _mod-main296122_ __tmp300406))))
              (declare (not safe))
              (cons 'apply __tmp300405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp300404 '()))))
                                        (declare (not safe))
                                        (cons __tmp300410 __tmp300403))))
                                 (declare (not safe))
                                 (cons '() __tmp300402))))
                          (declare (not safe))
                          (cons 'lambda __tmp300401)))
                       (__tmp300377
                        (let ((__tmp300378
                               (let ((__tmp300379
                                      (let ((__tmp300380
                                             (let ((__tmp300391
                                                    (let ((__tmp300392
                                                           (let ((__tmp300393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp300394
                                 (let ((__tmp300395
                                        (let ((__tmp300396
                                               (let ((__tmp300397
                                                      (let ((__tmp300398
                                                             (let ((__tmp300399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp300399 '()))))
                (declare (not safe))
                (cons 'force-output __tmp300398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp300397 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp300396))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp300395))))
                            (declare (not safe))
                            (cons __tmp300394 '()))))
                     (declare (not safe))
                     (cons 'void __tmp300393))))
              (declare (not safe))
              (cons 'with-catch __tmp300392)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp300381
                                                    (let ((__tmp300382
                                                           (let ((__tmp300383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp300384
                                 (let ((__tmp300385
                                        (let ((__tmp300386
                                               (let ((__tmp300387
                                                      (let ((__tmp300388
                                                             (let ((__tmp300389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp300390
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp300390 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp300389))))
                (declare (not safe))
                (cons __tmp300388 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp300387))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp300386))))
                                   (declare (not safe))
                                   (cons __tmp300385 '()))))
                            (declare (not safe))
                            (cons 'void __tmp300384))))
                     (declare (not safe))
                     (cons 'with-catch __tmp300383))))
              (declare (not safe))
              (cons __tmp300382 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp300391
                                                     __tmp300381))))
                                        (declare (not safe))
                                        (cons '() __tmp300380))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp300379))))
                          (declare (not safe))
                          (cons __tmp300378 '()))))
                   (declare (not safe))
                   (cons __tmp300400 __tmp300377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp300376))))
                                             (declare (not safe))
                                             (cons __tmp300375 '()))))
                                      (declare (not safe))
                                      (cons __tmp300412 __tmp300374))))
                               (declare (not safe))
                               (cons 'define __tmp300373)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts296011_
                  (lambda (_libgerbil296118_)
                    (call-with-input-file
                     (string-append _libgerbil296118_ '".ldd")
                     read)))
                 (_replace-extension296012_
                  (lambda (_path296115_ _ext296116_)
                    (string-append
                     (path-strip-extension _path296115_)
                     _ext296116_)))
                 (_not-exclude-module?296013_
                  (lambda (_ctx296111_)
                    (let ((_id-str296113_
                           (symbol->string
                            (##structure-ref
                             _ctx296111_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp300413
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str296113_))))
                            (declare (not safe))
                            (not __tmp300413))
                          (let ((__tmp300414
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str296113_))))
                            (declare (not safe))
                            (not __tmp300414))
                          '#f))))
                 (_not-file-empty?296014_
                  (lambda (_path296109_)
                    (let ((__tmp300415
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path296109_))))
                      (declare (not safe))
                      (not __tmp300415))))
                 (_compile-stub296015_
                  (lambda (_output-scm296022_ _output-bin296023_)
                    (let* ((_gerbil-home296025_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir296027_
                            (path-expand '"lib" _gerbil-home296025_))
                           (_gerbil-staticdir296029_
                            (path-expand '"static" _gerbil-libdir296027_))
                           (_gxlink296031_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir296027_))
                           (_tmp296033_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path296037_
                            (lambda (_f296035_)
                              (path-expand
                               (path-strip-directory _f296035_)
                               _tmp296033_)))
                           (_deps296039_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx296007_)))
                           (_deps296041_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?296013_
                                      _deps296039_)))
                           (_src-deps-scm296043_
                            (map gxc#find-static-module-file _deps296041_))
                           (_src-deps-scm296045_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?296014_
                                      _src-deps-scm296043_)))
                           (_src-deps-scm296047_
                            (map path-expand _src-deps-scm296045_))
                           (_deps-scm296049_
                            (map _tmp-path296037_ _src-deps-scm296047_))
                           (_deps-c296055_
                            (map (lambda (_g296050296052_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension296012_
                                      _g296050296052_
                                      '".c")))
                                 _deps-scm296049_))
                           (_deps-o296061_
                            (map (lambda (_g296056296058_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension296012_
                                      _g296056296058_
                                      '".o")))
                                 _deps-scm296049_))
                           (_src-bin-scm296063_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx296007_)))
                           (_src-bin-scm296065_
                            (path-expand _src-bin-scm296063_))
                           (_bin-scm296067_
                            (let ()
                              (declare (not safe))
                              (_tmp-path296037_ _src-bin-scm296065_)))
                           (_bin-c296069_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296012_
                               _bin-scm296067_
                               '".c")))
                           (_bin-o296071_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296012_
                               _bin-scm296067_
                               '".o")))
                           (_output-bin296073_
                            (path-expand _output-bin296023_))
                           (_output-scm296075_
                            (path-expand _output-scm296022_))
                           (_output-c296077_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296012_
                               _output-scm296075_
                               '".c")))
                           (_output-o296079_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296012_
                               _output-scm296075_
                               '".o")))
                           (_output_-c296081_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296012_
                               _output-scm296075_
                               '"_.c")))
                           (_output_-o296083_
                            (let ()
                              (declare (not safe))
                              (_replace-extension296012_
                               _output-scm296075_
                               '"_.o")))
                           (_gsc-link-opts296085_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts296087_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts296089_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir296029_)))
                           (_output-ld-opts296091_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a296093_
                            (path-expand '"libgerbil.a" _gerbil-libdir296027_))
                           (_libgerbil.so296095_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir296027_))
                           (_libgerbil-ld-opts296097_
                            (if (file-exists? _libgerbil.so296095_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts296011_
                                   _libgerbil.so296095_))
                                (if (file-exists? _libgerbil.a296093_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts296011_
                                       _libgerbil.a296093_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a296093_
                                       _libgerbil.so296095_)))))
                           (_rpath296099_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir296027_)))
                           (_builtin-modules296103_
                            (map (lambda (_mod296101_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod296101_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx296007_ _deps296041_)))))
                      (let ((__tmp300416
                             (lambda ()
                               (let ((__tmp300417
                                      (path-directory _output-bin296073_)))
                                 (declare (not safe))
                                 (create-directory* __tmp300417)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp300416))
                      (let ((__tmp300418
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub296010_
                                  _builtin-modules296103_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm296075_
                         __tmp300418))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp300419
                                   (lambda () (create-directory _tmp296033_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp300419))
                            (for-each
                             copy-file
                             _src-deps-scm296047_
                             _deps-scm296049_)
                            (copy-file _src-bin-scm296065_ _bin-scm296067_)
                            (let ((__tmp300427
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp300420
                                   (let ((__tmp300421
                                          (let ((__tmp300422
                                                 (let ((__tmp300423
                                                        (let ((__tmp300424
                                                               (let ((__tmp300425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp300426
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm296075_ '()))))
                                (declare (not safe))
                                (cons _bin-scm296067_ __tmp300426))))
                         (declare (not safe))
                         (foldr1 cons __tmp300425 _deps-scm296049_))))
                  (declare (not safe))
                  (foldr1 cons __tmp300424 _gsc-link-opts296085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink296031_
                                                         __tmp300423))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp300422))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp300421))))
                              (declare (not safe))
                              (gxc#invoke __tmp300427 __tmp300420))
                            (let ((__tmp300435
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp300428
                                   (let ((__tmp300429
                                          (let ((__tmp300430
                                                 (let ((__tmp300431
                                                        (let ((__tmp300432
                                                               (let ((__tmp300433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp300434
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c296081_ '()))))
                                (declare (not safe))
                                (cons _output-c296077_ __tmp300434))))
                         (declare (not safe))
                         (cons _bin-c296069_ __tmp300433))))
                  (declare (not safe))
                  (foldr1 cons __tmp300432 _deps-c296055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp300431
                                                           _gsc-static-opts296089_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp300430
                                                    _gsc-cc-opts296087_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp300429))))
                              (declare (not safe))
                              (gxc#invoke __tmp300435 __tmp300428))
                            (let ((__tmp300448
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp300436
                                   (let ((__tmp300437
                                          (let ((__tmp300438
                                                 (let ((__tmp300439
                                                        (let ((__tmp300440
                                                               (let ((__tmp300441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp300442
                                     (let ((__tmp300443
                                            (let ((__tmp300444
                                                   (let ((__tmp300445
                                                          (let ((__tmp300446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp300447
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts296097_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp300447))))
                    (declare (not safe))
                    (cons _gerbil-libdir296027_ __tmp300446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp300445))))
                                              (declare (not safe))
                                              (cons _rpath296099_
                                                    __tmp300444))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp300443
                                               _output-ld-opts296091_))))
                                (declare (not safe))
                                (cons _output_-o296083_ __tmp300442))))
                         (declare (not safe))
                         (cons _output-o296079_ __tmp300441))))
                  (declare (not safe))
                  (cons _bin-o296071_ __tmp300440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp300439
                                                           _deps-o296061_))))
                                            (declare (not safe))
                                            (cons _output-bin296073_
                                                  __tmp300438))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp300437))))
                              (declare (not safe))
                              (gxc#invoke __tmp300448 __tmp300436))
                            (for-each
                             delete-file
                             (let ((__tmp300449
                                    (let ((__tmp300450
                                           (let ((__tmp300451
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o296083_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o296079_
                                                   __tmp300451))))
                                      (declare (not safe))
                                      (cons _output_-c296081_ __tmp300450))))
                               (declare (not safe))
                               (cons _output-c296077_ __tmp300449)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp296033_)))
                          '#!void)))))
          (let* ((_output-bin296017_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx296007_ _opts296008_)))
                 (_output-scm296019_
                  (string-append _output-bin296017_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub296015_ _output-scm296019_ _output-bin296017_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm296019_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx295832_ _opts295833_)
        (letrec ((_reset-declare295835_
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
                 (_generate-stub295836_
                  (lambda (_deps295998_)
                    (let ((_mod-main296000_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx295832_ 'main)))
                          (_reset-decl296001_
                           (let ()
                             (declare (not safe))
                             (_reset-declare295835_)))
                          (_user-decl296002_
                           (let ()
                             (declare (not safe))
                             (_user-declare295837_))))
                      (for-each
                       (lambda (_dep296004_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl296001_)
                         (newline)
                         (if _user-decl296002_
                             (begin (write _user-decl296002_) (newline))
                             '#!void)
                         (write (let ((__tmp300452
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep296004_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp300452)))
                         (newline))
                       _deps295998_)
                      (write (let ((__tmp300453
                                    (let ((__tmp300466
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp300454
                                           (let ((__tmp300462
                                                  (let ((__tmp300463
                                                         (let ((__tmp300464
                                                                (let ((__tmp300465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp300465))))
                   (declare (not safe))
                   (cons __tmp300464 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp300463)))
                                                 (__tmp300455
                                                  (let ((__tmp300456
                                                         (let ((__tmp300457
                                                                (let ((__tmp300458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp300459
                                      (let ((__tmp300460
                                             (let ((__tmp300461
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp300461 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp300460))))
                                 (declare (not safe))
                                 (cons __tmp300459 '()))))
                          (declare (not safe))
                          (cons _mod-main296000_ __tmp300458))))
                   (declare (not safe))
                   (cons 'apply __tmp300457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp300456 '()))))
                                             (declare (not safe))
                                             (cons __tmp300462 __tmp300455))))
                                      (declare (not safe))
                                      (cons __tmp300466 __tmp300454))))
                               (declare (not safe))
                               (cons 'define __tmp300453)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare295837_
                  (lambda ()
                    (let* ((_gsc-opts295903_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts295833_)))
                           (_gsc-prelude295905_
                            (if _gsc-opts295903_
                                (member '"-prelude" _gsc-opts295903_)
                                '#f))
                           (_gsc-prelude295907_
                            (if _gsc-prelude295905_
                                (read (open-input-string
                                       (cadr _gsc-prelude295905_)))
                                '#f)))
                      (let _lp295910_ ((_rest295912_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude295907_ '())))
                                       (_user-decls295913_ '()))
                        (let* ((_rest295914295922_ _rest295912_)
                               (_else295916295930_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls295913_))
                                      '#f
                                      (let ((__tmp300467
                                             (reverse _user-decls295913_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp300467)))))
                               (_K295918295986_
                                (lambda (_rest295933_ _expr295934_)
                                  (let* ((_expr295935295947_ _expr295934_)
                                         (_else295938295955_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp295910_
                                               _rest295933_
                                               _user-decls295913_)))))
                                    (let ((_K295943295976_
                                           (lambda (_decls295974_)
                                             (let ((__tmp300468
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls295913_
                                                              _decls295974_))))
                                               (declare (not safe))
                                               (_lp295910_
                                                _rest295933_
                                                __tmp300468))))
                                          (_K295940295961_
                                           (lambda (_exprs295959_)
                                             (let ((__tmp300469
                                                    (append _exprs295959_
                                                            _rest295933_)))
                                               (declare (not safe))
                                               (_lp295910_
                                                __tmp300469
                                                _user-decls295913_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr295935295947_))
                                          (let ((_tl295945295981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr295935295947_)))
                                                (_hd295944295979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr295935295947_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd295944295979_
                                                         'declare))
                                                (let ((_decls295984_
                                                       _tl295945295981_))
                                                  (declare (not safe))
                                                  (_K295943295976_
                                                   _decls295984_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd295944295979_
                                                             'begin))
                                                    (let ((_exprs295969_
                                                           _tl295945295981_))
                                                      (declare (not safe))
                                                      (_K295940295961_
                                                       _exprs295969_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else295938295955_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else295938295955_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest295914295922_))
                              (let ((_hd295919295989_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest295914295922_)))
                                    (_tl295920295991_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest295914295922_))))
                                (let* ((_expr295994_ _hd295919295989_)
                                       (_rest295996_ _tl295920295991_))
                                  (declare (not safe))
                                  (_K295918295986_ _rest295996_ _expr295994_)))
                              (let ()
                                (declare (not safe))
                                (_else295916295930_))))))))
                 (_compile-stub295838_
                  (lambda (_output-scm295845_ _output-bin295846_)
                    (let* ((_gerbil-home295848_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir295850_
                            (path-expand '"lib" _gerbil-home295848_))
                           (_runtime295852_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp295854_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home295848_))
                           (_include-gambit-sharp295856_
                            (string-append
                             '"(include \""
                             _gambit-sharp295854_
                             '"\")"))
                           (_bin-scm295858_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx295832_)))
                           (_deps295860_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx295832_)))
                           (_deps295862_
                            (map gxc#find-static-module-file _deps295860_))
                           (_deps295867_
                            (let ((__tmp300470
                                   (lambda (_$obj295864_)
                                     (let ((__tmp300471
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj295864_))))
                                       (declare (not safe))
                                       (not __tmp300471)))))
                              (declare (not safe))
                              (filter __tmp300470 _deps295862_)))
                           (_deps295871_
                            (let ((__tmp300472
                                   (lambda (_f295869_)
                                     (let ((__tmp300473
                                            (member _f295869_
                                                    _runtime295852_)))
                                       (declare (not safe))
                                       (not __tmp300473)))))
                              (declare (not safe))
                              (filter __tmp300472 _deps295867_)))
                           (_output-base295873_
                            (string-append
                             (path-strip-extension _output-scm295845_)))
                           (_output-c295875_
                            (string-append _output-base295873_ '".c"))
                           (_output-o295877_
                            (string-append _output-base295873_ '".o"))
                           (_output-c_295879_
                            (string-append _output-base295873_ '"_.c"))
                           (_output-o_295881_
                            (string-append _output-base295873_ '"_.o"))
                           (_gsc-link-opts295883_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts295885_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts295887_
                            (let ((__tmp300474
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir295850_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp300474)))
                           (_output-ld-opts295889_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros295891_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp300475
                                       (let ((__tmp300476
                                              (let ((__tmp300477
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp295856_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp300477))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp300476))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp300475))
                                (let ((__tmp300478
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp295856_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp300478))))
                           (_gsc-link-opts295893_
                            (append _gsc-link-opts295883_
                                    _gsc-gx-macros295891_))
                           (_rpath295895_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir295850_)))
                           (_default-ld-options295897_
                            (let ((__tmp300479
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp300479))))
                      (let ((__tmp300480
                             (lambda ()
                               (let ((__tmp300481
                                      (path-directory _output-bin295846_)))
                                 (declare (not safe))
                                 (create-directory* __tmp300481)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp300480))
                      (let ((__tmp300482
                             (lambda ()
                               (let ((__tmp300483
                                      (let ((__tmp300484
                                             (let ((__tmp300485
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm295858_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp300485
                                                       _deps295871_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp300484
                                                _runtime295852_))))
                                 (declare (not safe))
                                 (_generate-stub295836_ __tmp300483)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm295845_
                         __tmp300482))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp300491
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp300486
                                   (let ((__tmp300487
                                          (let ((__tmp300488
                                                 (let ((__tmp300489
                                                        (let ((__tmp300490
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm295845_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp300490 _gsc-link-opts295893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_295879_
                                                         __tmp300489))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp300488))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp300487))))
                              (declare (not safe))
                              (gxc#invoke __tmp300491 __tmp300486))
                            (let ((__tmp300497
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp300492
                                   (let ((__tmp300493
                                          (let ((__tmp300494
                                                 (let ((__tmp300495
                                                        (let ((__tmp300496
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_295879_ '()))))
                  (declare (not safe))
                  (cons _output-c295875_ __tmp300496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp300495
                                                           _gsc-static-opts295887_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp300494
                                                    _gsc-cc-opts295885_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp300493))))
                              (declare (not safe))
                              (gxc#invoke __tmp300497 __tmp300492))
                            (let ((__tmp300507
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp300498
                                   (let ((__tmp300499
                                          (let ((__tmp300500
                                                 (let ((__tmp300501
                                                        (let ((__tmp300502
                                                               (let ((__tmp300503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp300504
                                     (let ((__tmp300505
                                            (let ((__tmp300506
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options295897_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir295850_
                                                    __tmp300506))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp300505))))
                                (declare (not safe))
                                (cons _rpath295895_ __tmp300504))))
                         (declare (not safe))
                         (foldr1 cons __tmp300503 _output-ld-opts295889_))))
                  (declare (not safe))
                  (cons _output-o_295881_ __tmp300502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o295877_
                                                         __tmp300501))))
                                            (declare (not safe))
                                            (cons _output-bin295846_
                                                  __tmp300500))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp300499))))
                              (declare (not safe))
                              (gxc#invoke __tmp300507 __tmp300498)))
                          '#!void)))))
          (let* ((_output-bin295840_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx295832_ _opts295833_)))
                 (_output-scm295842_
                  (string-append _output-bin295840_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub295838_ _output-scm295842_ _output-bin295840_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm295842_))))))
    (define gxc#find-export-binding
      (lambda (_ctx295782_ _id295783_)
        (let ((_$e295829_
               (let ((__tmp300509
                      (lambda (_e295784295786_)
                        (let* ((_g295788295798_ _e295784295786_)
                               (_else295790295806_ (lambda () '#f))
                               (_K295792295810_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g295788295798_
                                 'gx#module-export::t))
                              (let* ((_e295793295813_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g295788295798_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e295794295816_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g295788295798_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e295795295819_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g295788295798_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e295795295819_ '0))
                                    (let ((_e295796295822_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g295788295798_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g295824295826_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g295824295826_
                                                    _id295783_)))
                                           _e295796295822_)
                                          (let ()
                                            (declare (not safe))
                                            (_K295792295810_))
                                          (let ()
                                            (declare (not safe))
                                            (_else295790295806_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else295790295806_))))
                              (let ()
                                (declare (not safe))
                                (_else295790295806_))))))
                     (__tmp300508
                      (##structure-ref
                       _ctx295782_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp300509 __tmp300508))))
          (if _$e295829_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e295829_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx295774_ _id295775_)
        (let ((_$e295777_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx295774_ _id295775_))))
          (if _$e295777_
              ((lambda (_bind295780_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind295780_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id295775_)))
                 (##structure-ref _bind295780_ '1 gx#binding::t '#f))
               _$e295777_)
              (let ((__tmp300510
                     (##structure-ref
                      _ctx295774_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp300510
                 _id295775_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx295661_)
        (letrec* ((_ht295663_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template295664_
                   (lambda (_in295726_ _phi295727_)
                     (let ((_iphi295729_
                            (fx+ _phi295727_
                                 (##direct-structure-ref
                                  _in295726_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports295730_
                            (##structure-ref
                             (##direct-structure-ref
                              _in295726_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp295732_ ((_rest295734_ _imports295730_)
                                        (_r295735_ '()))
                         (let* ((_rest295736295744_ _rest295734_)
                                (_else295738295752_ (lambda () _r295735_))
                                (_K295740295762_
                                 (lambda (_rest295755_ _in295756_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in295756_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi295729_))
                                           (let ((__tmp300511
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in295756_
                                                          _r295735_))))
                                             (declare (not safe))
                                             (_lp295732_
                                              _rest295755_
                                              __tmp300511))
                                           (let ()
                                             (declare (not safe))
                                             (_lp295732_
                                              _rest295755_
                                              _r295735_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in295756_
                                              'gx#module-import::t))
                                           (let ((_iphi295758_
                                                  (fx+ _phi295727_
                                                       (##direct-structure-ref
                                                        _in295756_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi295758_))
                                                 (let ((__tmp300512
                                                        (let ((__tmp300513
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in295756_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp300513 _r295735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp295732_
                                                    _rest295755_
                                                    __tmp300512))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp295732_
                                                    _rest295755_
                                                    _r295735_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in295756_
                                                  'gx#import-set::t))
                                               (let ((_xphi295760_
                                                      (fx+ _iphi295729_
                                                           (##direct-structure-ref
                                                            _in295756_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi295760_))
                                                     (let ((__tmp300514
                                                            (let ((__tmp300515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in295756_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp300515 _r295735_))))
               (declare (not safe))
               (_lp295732_ _rest295755_ __tmp300514))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi295760_)
                                                         (let ((__tmp300516
                                                                (let ((__tmp300517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template295664_
                                  _in295756_
                                  _iphi295729_))))
                          (declare (not safe))
                          (foldl1 cons _r295735_ __tmp300517))))
                   (declare (not safe))
                   (_lp295732_ _rest295755_ __tmp300516))
                 (let ()
                   (declare (not safe))
                   (_lp295732_ _rest295755_ _r295735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp295732_
                                                  _rest295755_
                                                  _r295735_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest295736295744_))
                               (let ((_hd295741295765_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest295736295744_)))
                                     (_tl295742295767_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest295736295744_))))
                                 (let* ((_in295770_ _hd295741295765_)
                                        (_rest295772_ _tl295742295767_))
                                   (declare (not safe))
                                   (_K295740295762_ _rest295772_ _in295770_)))
                               (let ()
                                 (declare (not safe))
                                 (_else295738295752_))))))))
                  (_find-deps295665_
                   (lambda (_rest295672_ _deps295673_)
                     (let* ((_rest295674295682_ _rest295672_)
                            (_else295676295690_ (lambda () _deps295673_))
                            (_K295678295714_
                             (lambda (_rest295693_ _hd295694_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd295694_
                                      'gx#module-context::t))
                                   (let ((_id295696_
                                          (##structure-ref
                                           _hd295694_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports295697_
                                          (##structure-ref
                                           _hd295694_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht295663_ _id295696_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps295665_
                                            _rest295693_
                                            _deps295673_))
                                         (let ((_$e295699_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd295694_))))
                                           (if _$e295699_
                                               ((lambda (_pre295702_)
                                                  (let ((_xdeps295704_
                                                         (let ((__tmp300518
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre295702_ _imports295697_))))
                   (declare (not safe))
                   (_find-deps295665_ __tmp300518 _deps295673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht295663_
                                                       _id295696_
                                                       _hd295694_))
                                                    (let ((__tmp300519
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd295694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps295704_))))
              (declare (not safe))
              (_find-deps295665_ _rest295693_ __tmp300519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e295699_)
                                               (let ((_xdeps295706_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps295665_
                                                         _imports295697_
                                                         _deps295673_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht295663_
                                                    _id295696_
                                                    _hd295694_))
                                                 (let ((__tmp300520
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd295694_
                                                                _xdeps295706_))))
                                                   (declare (not safe))
                                                   (_find-deps295665_
                                                    _rest295693_
                                                    __tmp300520)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd295694_
                                          'gx#prelude-context::t))
                                       (let ((_id295708_
                                              (##structure-ref
                                               _hd295694_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht295663_
                                                _id295708_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps295665_
                                                _rest295693_
                                                _deps295673_))
                                             (let ((_xdeps295710_
                                                    (let ((__tmp300521
                                                           (##structure-ref
                                                            _hd295694_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps295665_
                                                       __tmp300521
                                                       _deps295673_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht295663_
                                                      _id295708_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps295665_
                                                      _rest295693_
                                                      _xdeps295710_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht295663_
                                                        _id295708_
                                                        _hd295694_))
                                                     (let ((__tmp300522
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd295694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps295710_))))
               (declare (not safe))
               (_find-deps295665_ _rest295693_ __tmp300522)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd295694_
                                              'gx#module-import::t))
                                           (if (let ((__tmp300523
                                                      (##direct-structure-ref
                                                       _hd295694_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp300523))
                                               (let ((__tmp300524
                                                      (let ((__tmp300525
                                                             (##direct-structure-ref
                                                              _hd295694_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp300525
                                                              _rest295693_))))
                                                 (declare (not safe))
                                                 (_find-deps295665_
                                                  __tmp300524
                                                  _deps295673_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps295665_
                                                  _rest295693_
                                                  _deps295673_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd295694_
                                                  'gx#module-export::t))
                                               (let ((__tmp300526
                                                      (let ((__tmp300527
                                                             (##direct-structure-ref
                                                              _hd295694_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp300527
                                                              _rest295693_))))
                                                 (declare (not safe))
                                                 (_find-deps295665_
                                                  __tmp300526
                                                  _deps295673_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd295694_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp300528
                                                              (##direct-structure-ref
                                                               _hd295694_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp300528))
                                                       (let ((__tmp300529
                                                              (let ((__tmp300530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd295694_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp300530 _rest295693_))))
                 (declare (not safe))
                 (_find-deps295665_ __tmp300529 _deps295673_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd295694_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps295712_
                           (let ()
                             (declare (not safe))
                             (_import-set-template295664_ _hd295694_ '0)))
                          (__tmp300531
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest295693_ _xdeps295712_))))
                     (declare (not safe))
                     (_find-deps295665_ __tmp300531 _deps295673_))
                   (let ()
                     (declare (not safe))
                     (_find-deps295665_ _rest295693_ _deps295673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd295694_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest295674295682_))
                           (let ((_hd295679295717_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest295674295682_)))
                                 (_tl295680295719_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest295674295682_))))
                             (let* ((_hd295722_ _hd295679295717_)
                                    (_rest295724_ _tl295680295719_))
                               (declare (not safe))
                               (_K295678295714_ _rest295724_ _hd295722_)))
                           (let ()
                             (declare (not safe))
                             (_else295676295690_)))))))
          (reverse (let ((__tmp300532
                          (let ((__tmp300533
                                 (let ((_$e295667_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx295661_))))
                                   (if _$e295667_
                                       ((lambda (_pre295670_)
                                          (let ((__tmp300534
                                                 (##structure-ref
                                                  _ctx295661_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre295670_ __tmp300534)))
                                        _$e295667_)
                                       (##structure-ref
                                        _ctx295661_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps295665_ __tmp300533 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp300532))))))
    (define gxc#find-static-module-file
      (lambda (_ctx295592_)
        (let* ((_context-id295594_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx295592_
                       'gx#module-context::t))
                    (##structure-ref _ctx295592_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx295592_)))
               (_scm295596_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id295594_))
                 '".scm"))
               (_dirs295598_ (gx#current-expander-module-library-path))
               (_dirs295604_
                (let ((_user-libpath295600_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath295600_
                      (let ((_user-libpath295602_
                             (path-expand '"lib" _user-libpath295600_)))
                        (if (member _user-libpath295602_ _dirs295598_)
                            _dirs295598_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath295602_ _dirs295598_))))
                      _dirs295598_)))
               (_dirs295613_
                (let ((_$e295606_ (gxc#current-compile-output-dir)))
                  (if _$e295606_
                      ((lambda (_g295608295610_)
                         (let ()
                           (declare (not safe))
                           (cons _g295608295610_ _dirs295604_)))
                       _$e295606_)
                      _dirs295604_)))
               (_dirs295619_
                (map (lambda (_g295614295616_)
                       (path-expand '"static" _g295614295616_))
                     _dirs295613_)))
          (let _lp295622_ ((_rest295624_ _dirs295619_))
            (let* ((_rest295625295633_ _rest295624_)
                   (_else295627295641_
                    (lambda ()
                      (let ((__tmp300535
                             (##structure-ref
                              _ctx295592_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp300535
                         _scm295596_))))
                   (_K295629295649_
                    (lambda (_rest295644_ _dir295645_)
                      (let ((_path295647_
                             (path-expand _scm295596_ _dir295645_)))
                        (if (file-exists? _path295647_)
                            _path295647_
                            (let ()
                              (declare (not safe))
                              (_lp295622_ _rest295644_)))))))
              (if (let () (declare (not safe)) (##pair? _rest295625295633_))
                  (let ((_hd295630295652_
                         (let ()
                           (declare (not safe))
                           (##car _rest295625295633_)))
                        (_tl295631295654_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest295625295633_))))
                    (let* ((_dir295657_ _hd295630295652_)
                           (_rest295659_ _tl295631295654_))
                      (declare (not safe))
                      (_K295629295649_ _rest295659_ _dir295657_)))
                  (let () (declare (not safe)) (_else295627295641_))))))))
    (define gxc#file-empty?
      (lambda (_path295590_)
        (let ((__tmp300536 (file-info-size (file-info _path295590_ '#t))))
          (declare (not safe))
          (zero? __tmp300536))))
    (define gxc#compile-top-module
      (lambda (_ctx295579_)
        (let ((__tmp300540
               (lambda ()
                 (let ((__tmp300541
                        (##structure-ref
                         _ctx295579_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp300541))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp300542
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx295579_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp300542))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx295579_))
                 (if (let ((__tmp300543
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx295579_))))
                       (declare (not safe))
                       (null? __tmp300543))
                     (let* ((_thr1295584_
                             (let ((__tmp300544
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx295579_)))))
                               (declare (not safe))
                               (spawn __tmp300544)))
                            (_thr2295587_
                             (let ((__tmp300545
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx295579_)))))
                               (declare (not safe))
                               (spawn __tmp300545))))
                       (let () (declare (not safe)) (gxc#join! _thr1295584_))
                       (let () (declare (not safe)) (gxc#join! _thr2295587_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx295579_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx295579_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx295579_))
                     '#!void)))
              (__tmp300539
               (let ((__obj300344
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj300344)
                 __obj300344))
              (__tmp300538 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp300537 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp300540
           gx#current-expander-context
           _ctx295579_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp300539
           gxc#current-compile-runtime-sections
           __tmp300538
           gxc#current-compile-runtime-names
           __tmp300537))))
    (define gxc#collect-bindings
      (lambda (_ctx295577_)
        (let ((__tmp300546
               (##structure-ref _ctx295577_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp300546))))
    (define gxc#compile-runtime-code
      (lambda (_ctx295523_)
        (letrec ((_compile1295525_
                  (lambda (_ctx295566_)
                    (let* ((_code295568_
                            (##structure-ref
                             _ctx295566_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt295572_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code295568_))
                                (let ((_idstr295570_
                                       (let ((__tmp300547
                                              (##structure-ref
                                               _ctx295566_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp300547))))
                                  (string-append _idstr295570_ '"__0"))
                                '#f)))
                      (if _rt295572_
                          (begin
                            (let ((__tmp300548
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp300548 _ctx295566_ _rt295572_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code295527_
                               _ctx295566_
                               _code295568_)))
                          (let ((_path295575_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx295566_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path295575_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code295528_
                         _ctx295566_
                         _code295568_
                         _rt295572_)))))
                 (_context-timestamp295526_
                  (lambda (_ctx295564_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx295564_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code295527_
                  (lambda (_ctx295546_ _code295547_)
                    (let* ((_lifts295549_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code295552_
                            (let ((__tmp300551
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code295547_))))
                                  (__tmp300550
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp300549
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp300551
                               gx#current-expander-context
                               _ctx295546_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts295549_
                               gxc#current-compile-marks
                               __tmp300550
                               gxc#current-compile-identifiers
                               __tmp300549)))
                           (_runtime-code295554_
                            (if (let ((__tmp300552 (unbox _lifts295549_)))
                                  (declare (not safe))
                                  (null? __tmp300552))
                                _runtime-code295552_
                                (let ((__tmp300553
                                       (let ((__tmp300555
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code295552_
                                                      '())))
                                             (__tmp300554
                                              (reverse (unbox _lifts295549_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp300555
                                                 __tmp300554))))
                                  (declare (not safe))
                                  (cons 'begin __tmp300553))))
                           (_runtime-code295556_
                            (let ((__tmp300556
                                   (let ((__tmp300558
                                          (let ((__tmp300559
                                                 (let ((__tmp300562
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp295526_
                                                           _ctx295546_)))
                                                       (__tmp300560
                                                        (let ((__tmp300561
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp300561
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp300562
                                                         __tmp300560))))
                                            (declare (not safe))
                                            (cons 'define __tmp300559)))
                                         (__tmp300557
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code295554_ '()))))
                                     (declare (not safe))
                                     (cons __tmp300558 __tmp300557))))
                              (declare (not safe))
                              (cons 'begin __tmp300556)))
                           (_scm0295558_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx295546_
                               '0
                               '".scm"))))
                      (let ((_scms295561_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx295546_))))
                        (let ((__tmp300563
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0295558_
                                    _runtime-code295556_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp300563
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms295561_)
                            (delete-file _scms295561_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0295558_
                           '" => "
                           _scms295561_))
                        (copy-file _scm0295558_ _scms295561_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0295558_))))))
                 (_generate-loader-code295528_
                  (lambda (_ctx295535_ _code295536_ _rt295537_)
                    (let* ((_loader-code295540_
                            (let ((__tmp300564
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code295536_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp300564
                               gx#current-expander-context
                               _ctx295535_)))
                           (_loader-code295542_
                            (if _rt295537_
                                (let ((__tmp300565
                                       (let ((__tmp300566
                                              (let ((__tmp300567
                                                     (let ((__tmp300568
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt295537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp300568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp300567 '()))))
                                         (declare (not safe))
                                         (cons _loader-code295540_
                                               __tmp300566))))
                                  (declare (not safe))
                                  (cons 'begin __tmp300565))
                                _loader-code295540_)))
                      (let ((__tmp300569
                             (lambda ()
                               (let ((__tmp300570
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx295535_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp300570
                                  _loader-code295542_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp300569
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules295530_
                 (let ((__tmp300571
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx295523_))))
                   (declare (not safe))
                   (cons _ctx295523_ __tmp300571))))
            (for-each
             (lambda (_ctx295532_)
               (let ((__tmp300572
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1295525_ _ctx295532_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp300572
                  gxc#current-compile-decls
                  '())))
             _all-modules295530_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx295420_)
        (letrec ((_compile-ssi295422_
                  (lambda (_code295493_)
                    (let* ((_path295495_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx295420_
                               '#f
                               '".ssi")))
                           (_prelude295506_
                            (let* ((_super295497_
                                    (##structure-ref
                                     _ctx295420_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e295499_
                                    (##structure-ref
                                     _super295497_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e295499_
                                  ((lambda (_g295501295503_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g295501295503_)))
                                   _$e295499_)
                                  ':<root>)))
                           (_ns295508_
                            (##structure-ref
                             _ctx295420_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr295510_
                            (symbol->string
                             (##structure-ref
                              _ctx295420_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg295517_
                            (let ((_$e295512_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr295510_ '#\/))))
                              (if _$e295512_
                                  ((lambda (_x295515_)
                                     (string->symbol
                                      (substring _idstr295510_ '0 _x295515_)))
                                   _$e295512_)
                                  '#f)))
                           (_rt295519_
                            (let ((__tmp300573
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp300573 _ctx295420_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path295495_))
                      (let ((__tmp300574
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude295506_))
                               (if _pkg295517_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg295517_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns295508_))
                               (newline)
                               (pretty-print _code295493_)
                               (if _rt295519_
                                   (pretty-print
                                    (let ((__tmp300575
                                           (let ((__tmp300579
                                                  (let ((__tmp300580
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp300580)))
                                                 (__tmp300576
                                                  (let ((__tmp300577
                                                         (let ((__tmp300578
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt295519_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp300578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp300577 '()))))
                                             (declare (not safe))
                                             (cons __tmp300579 __tmp300576))))
                                      (declare (not safe))
                                      (cons '%#call __tmp300575)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path295495_
                         __tmp300574)))))
                 (_compile-phi295423_
                  (lambda (_part295433_)
                    (let* ((_part295434295447_ _part295433_)
                           (_E295436295451_
                            (lambda ()
                              (error '"No clause matching"
                                     _part295434295447_)))
                           (_K295437295462_
                            (lambda (_code295454_
                                     _n295455_
                                     _phi295456_
                                     _phi-ctx295457_)
                              (let* ((_code295460_
                                      (let ((__tmp300581
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code295454_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp300581
                                         gx#current-expander-context
                                         _phi-ctx295457_
                                         gx#current-expander-phi
                                         _phi295456_)))
                                     (__tmp300582
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx295420_
                                         _n295455_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp300582
                                 _code295460_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part295434295447_))
                          (let ((_hd295438295465_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part295434295447_)))
                                (_tl295439295467_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part295434295447_))))
                            (let ((_phi-ctx295470_ _hd295438295465_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl295439295467_))
                                  (let ((_hd295440295472_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl295439295467_)))
                                        (_tl295441295474_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl295439295467_))))
                                    (let ((_phi295477_ _hd295440295472_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl295441295474_))
                                          (let ((_hd295442295479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl295441295474_)))
                                                (_tl295443295481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl295441295474_))))
                                            (let ((_n295484_ _hd295442295479_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl295443295481_))
                                                  (let ((_hd295444295486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl295443295481_)))
                                                        (_tl295445295488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl295443295481_))))
                                                    (let ((_code295491_
                                                           _hd295444295486_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl295445295488_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K295437295462_
                                                             _code295491_
                                                             _n295484_
                                                             _phi295477_
                                                             _phi-ctx295470_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E295436295451_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E295436295451_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E295436295451_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E295436295451_)))))
                          (let () (declare (not safe)) (_E295436295451_)))))))
          (let ((_g300583_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx295420_))))
            (begin
              (let ((_g300584_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g300583_)
                           (##vector-length _g300583_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g300584_ 2)))
                    (error "Context expects 2 values" _g300584_)))
              (let ((_ssi-code295425_
                     (let () (declare (not safe)) (##vector-ref _g300583_ 0)))
                    (_phi-code295426_
                     (let () (declare (not safe)) (##vector-ref _g300583_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi295422_ _ssi-code295425_))
                  (let ((_threads295431_
                         (map (lambda (_code295428_)
                                (let ((__tmp300585
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi295423_
                                            _code295428_)))))
                                  (declare (not safe))
                                  (spawn __tmp300585)))
                              _phi-code295426_)))
                    (for-each gxc#join! _threads295431_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx295403_)
        (let* ((_path295405_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx295403_ '#f '".ssxi.ss")))
               (_code295407_
                (let ((__tmp300586
                       (##structure-ref
                        _ctx295403_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp300586)))
               (_idstr295409_
                (symbol->string
                 (##structure-ref _ctx295403_ '1 gx#expander-context::t '#f)))
               (_pkg295416_
                (let ((_$e295411_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr295409_ '#\/))))
                  (if _$e295411_
                      ((lambda (_x295414_)
                         (string->symbol
                          (substring _idstr295409_ '0 _x295414_)))
                       _$e295411_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path295405_))
          (let ((__tmp300587
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg295416_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg295416_))
                       '#!void)
                   (newline)
                   (pretty-print _code295407_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path295405_ __tmp300587)))))
    (define gxc#generate-meta-code
      (lambda (_ctx295396_)
        (let* ((_state295398_
                (let ((__obj300345
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj300345 _ctx295396_)
                  __obj300345))
               (_ssi-code295400_
                (let ((__tmp300588
                       (##structure-ref
                        _ctx295396_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp300588 _state295398_))))
          (values _ssi-code295400_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state295398_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx295389_)
        (let ((_lifts295391_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp300591
                 (lambda ()
                   (let ((_code295394_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx295389_))))
                     (if (let ((__tmp300592 (unbox _lifts295391_)))
                           (declare (not safe))
                           (null? __tmp300592))
                         _code295394_
                         (let ((__tmp300593
                                (let ((__tmp300595
                                       (let ()
                                         (declare (not safe))
                                         (cons _code295394_ '())))
                                      (__tmp300594
                                       (reverse (unbox _lifts295391_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp300595 __tmp300594))))
                           (declare (not safe))
                           (cons 'begin __tmp300593))))))
                (__tmp300590
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp300589
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp300591
             gxc#current-compile-lift
             _lifts295391_
             gxc#current-compile-marks
             __tmp300590
             gxc#current-compile-identifiers
             __tmp300589)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx295385_)
        (let ((_modules295387_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp300596
                 (##structure-ref _ctx295385_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp300596 _modules295387_))
          (reverse (unbox _modules295387_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path295368_ _code295369_ _phi?295370_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path295368_))
        (let ((__tmp300597
               (lambda ()
                 (pretty-print
                  (let ((__tmp300598
                         (let ((__tmp300605
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp300599
                                (let ((__tmp300604
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp300600
                                       (let ((__tmp300603
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp300601
                                              (let ((__tmp300602
                                                     (if _phi?295370_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp300602))))
                                         (declare (not safe))
                                         (cons __tmp300603 __tmp300601))))
                                  (declare (not safe))
                                  (cons __tmp300604 __tmp300600))))
                           (declare (not safe))
                           (cons __tmp300605 __tmp300599))))
                    (declare (not safe))
                    (cons 'declare __tmp300598)))
                 (pretty-print _code295369_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path295368_ __tmp300597))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path295368_ _phi?295370_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path295368_))))
    (define gxc#compile-scm-file__0
      (lambda (_path295376_ _code295377_)
        (let ((_phi?295379_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path295376_ _code295377_ _phi?295379_))))
    (define gxc#compile-scm-file
      (lambda _g300607_
        (let ((_g300606_ (let () (declare (not safe)) (##length _g300607_))))
          (cond ((let () (declare (not safe)) (##fx= _g300606_ 2))
                 (apply (lambda (_path295376_ _code295377_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path295376_
                             _code295377_)))
                        _g300607_))
                ((let () (declare (not safe)) (##fx= _g300606_ 3))
                 (apply (lambda (_path295381_ _code295382_ _phi?295383_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path295381_
                             _code295382_
                             _phi?295383_)))
                        _g300607_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g300607_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?295269_)
        (let _lp295271_ ((_rest295273_ (gxc#current-compile-gsc-options))
                         (_opts295274_ '()))
          (let* ((_rest295275295295_ _rest295273_)
                 (_else295279295303_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?295269_))
                             (gxc#current-compile-debug))
                        (let ((__tmp300608
                               (let ((__tmp300609 (reverse _opts295274_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp300609))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp300608))
                        (reverse _opts295274_)))))
            (let ((_K295289295346_
                   (lambda (_rest295344_)
                     (let ()
                       (declare (not safe))
                       (_lp295271_ _rest295344_ _opts295274_))))
                  (_K295284295328_
                   (lambda (_rest295326_)
                     (let ()
                       (declare (not safe))
                       (_lp295271_ _rest295326_ _opts295274_))))
                  (_K295281295310_
                   (lambda (_rest295307_ _opt295308_)
                     (let ((__tmp300610
                            (let ()
                              (declare (not safe))
                              (cons _opt295308_ _opts295274_))))
                       (declare (not safe))
                       (_lp295271_ _rest295307_ __tmp300610)))))
              (if (let () (declare (not safe)) (##pair? _rest295275295295_))
                  (let ((_tl295291295351_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest295275295295_)))
                        (_hd295290295349_
                         (let ()
                           (declare (not safe))
                           (##car _rest295275295295_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd295290295349_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl295291295351_))
                            (let* ((_tl295293295354_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl295291295351_)))
                                   (_rest295357_ _tl295293295354_))
                              (declare (not safe))
                              (_K295289295346_ _rest295357_))
                            (let ((_opt295318_ _hd295290295349_)
                                  (_rest295320_ _tl295291295351_))
                              (let ()
                                (declare (not safe))
                                (_K295281295310_ _rest295320_ _opt295318_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd295290295349_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl295291295351_))
                                (let* ((_tl295288295336_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl295291295351_)))
                                       (_rest295339_ _tl295288295336_))
                                  (declare (not safe))
                                  (_K295284295328_ _rest295339_))
                                (let ((_opt295318_ _hd295290295349_)
                                      (_rest295320_ _tl295291295351_))
                                  (let ()
                                    (declare (not safe))
                                    (_K295281295310_
                                     _rest295320_
                                     _opt295318_))))
                            (let ((_opt295318_ _hd295290295349_)
                                  (_rest295320_ _tl295291295351_))
                              (let ()
                                (declare (not safe))
                                (_K295281295310_ _rest295320_ _opt295318_))))))
                  (let () (declare (not safe)) (_else295279295303_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?295363_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?295363_))))
    (define gxc#gsc-link-options
      (lambda _g300612_
        (let ((_g300611_ (let () (declare (not safe)) (##length _g300612_))))
          (cond ((let () (declare (not safe)) (##fx= _g300611_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g300612_))
                ((let () (declare (not safe)) (##fx= _g300611_ 1))
                 (apply (lambda (_phi?295365_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?295365_)))
                        _g300612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g300612_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?295170_)
        (let _lp295172_ ((_rest295174_ (gxc#current-compile-gsc-options))
                         (_opts295175_ '()))
          (let* ((_rest295176295196_ _rest295174_)
                 (_else295180295204_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?295170_))
                             (gxc#current-compile-debug))
                        (let ((__tmp300613
                               (let ((__tmp300614 (reverse _opts295175_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp300614))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp300613))
                        (reverse _opts295175_)))))
            (let ((_K295190295243_
                   (lambda (_rest295240_ _opt295241_)
                     (let ((__tmp300615
                            (let ((__tmp300616
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts295175_))))
                              (declare (not safe))
                              (cons _opt295241_ __tmp300616))))
                       (declare (not safe))
                       (_lp295172_ _rest295240_ __tmp300615))))
                  (_K295185295224_
                   (lambda (_rest295222_)
                     (let ()
                       (declare (not safe))
                       (_lp295172_ _rest295222_ _opts295175_))))
                  (_K295182295210_
                   (lambda (_rest295208_)
                     (let ()
                       (declare (not safe))
                       (_lp295172_ _rest295208_ _opts295175_)))))
              (if (let () (declare (not safe)) (##pair? _rest295176295196_))
                  (let ((_tl295192295248_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest295176295196_)))
                        (_hd295191295246_
                         (let ()
                           (declare (not safe))
                           (##car _rest295176295196_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd295191295246_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl295192295248_))
                            (let ((_tl295194295253_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl295192295248_)))
                                  (_hd295193295251_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl295192295248_))))
                              (let ((_opt295256_ _hd295193295251_)
                                    (_rest295258_ _tl295194295253_))
                                (let ()
                                  (declare (not safe))
                                  (_K295190295243_ _rest295258_ _opt295256_))))
                            (let ((_rest295216_ _tl295192295248_))
                              (declare (not safe))
                              (_K295182295210_ _rest295216_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd295191295246_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl295192295248_))
                                (let* ((_tl295189295232_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl295192295248_)))
                                       (_rest295235_ _tl295189295232_))
                                  (declare (not safe))
                                  (_K295185295224_ _rest295235_))
                                (let ((_rest295216_ _tl295192295248_))
                                  (declare (not safe))
                                  (_K295182295210_ _rest295216_)))
                            (let ((_rest295216_ _tl295192295248_))
                              (declare (not safe))
                              (_K295182295210_ _rest295216_)))))
                  (let () (declare (not safe)) (_else295180295204_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?295264_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?295264_))))
    (define gxc#gsc-cc-options
      (lambda _g300618_
        (let ((_g300617_ (let () (declare (not safe)) (##length _g300618_))))
          (cond ((let () (declare (not safe)) (##fx= _g300617_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g300618_))
                ((let () (declare (not safe)) (##fx= _g300617_ 1))
                 (apply (lambda (_phi?295266_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?295266_)))
                        _g300618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g300618_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir295165_)
        (let* ((_user-staticdir295167_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp300619
                (let ((__tmp300620
                       (string-append
                        '"-I "
                        _staticdir295165_
                        '" -I "
                        _user-staticdir295167_)))
                  (declare (not safe))
                  (cons __tmp300620 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp300619))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp295077_ ((_rest295079_ (gxc#current-compile-gsc-options))
                         (_opts295080_ '()))
          (let* ((_rest295081295101_ _rest295079_)
                 (_else295085295109_ (lambda () _opts295080_)))
            (let ((_K295095295152_
                   (lambda (_rest295150_)
                     (let ()
                       (declare (not safe))
                       (_lp295077_ _rest295150_ _opts295080_))))
                  (_K295090295130_
                   (lambda (_rest295127_ _opt295128_)
                     (let ((__tmp300621
                            (append _opts295080_
                                    (let ((__tmp300622
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt295128_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp300622)))))
                       (declare (not safe))
                       (_lp295077_ _rest295127_ __tmp300621))))
                  (_K295087295115_
                   (lambda (_rest295113_)
                     (let ()
                       (declare (not safe))
                       (_lp295077_ _rest295113_ _opts295080_)))))
              (if (let () (declare (not safe)) (##pair? _rest295081295101_))
                  (let ((_tl295097295157_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest295081295101_)))
                        (_hd295096295155_
                         (let ()
                           (declare (not safe))
                           (##car _rest295081295101_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd295096295155_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl295097295157_))
                            (let* ((_tl295099295160_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl295097295157_)))
                                   (_rest295163_ _tl295099295160_))
                              (declare (not safe))
                              (_K295095295152_ _rest295163_))
                            (let ((_rest295121_ _tl295097295157_))
                              (declare (not safe))
                              (_K295087295115_ _rest295121_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd295096295155_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl295097295157_))
                                (let ((_tl295094295140_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl295097295157_)))
                                      (_hd295093295138_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl295097295157_))))
                                  (let ((_opt295143_ _hd295093295138_)
                                        (_rest295145_ _tl295094295140_))
                                    (let ()
                                      (declare (not safe))
                                      (_K295090295130_
                                       _rest295145_
                                       _opt295143_))))
                                (let ((_rest295121_ _tl295097295157_))
                                  (declare (not safe))
                                  (_K295087295115_ _rest295121_)))
                            (let ((_rest295121_ _tl295097295157_))
                              (declare (not safe))
                              (_K295087295115_ _rest295121_)))))
                  (let () (declare (not safe)) (_else295085295109_))))))))
    (define gxc#not-string-empty?
      (lambda (_str295074_)
        (let ((__tmp300623
               (let () (declare (not safe)) (string-empty? _str295074_))))
          (declare (not safe))
          (not __tmp300623))))
    (define gxc#gsc-compile-file
      (lambda (_path295042_ _phi?295043_)
        (letrec ((_gsc-link-path295045_
                  (lambda (_base-path295066_)
                    (let _lp295068_ ((_n295070_ '1))
                      (let ((_path295072_
                             (string-append
                              _base-path295066_
                              '".o"
                              (number->string _n295070_))))
                        (if (file-exists? _path295072_)
                            (let ((__tmp300624
                                   (let ()
                                     (declare (not safe))
                                     (+ _n295070_ '1))))
                              (declare (not safe))
                              (_lp295068_ __tmp300624))
                            _path295072_))))))
          (let* ((_base-path295047_ (path-strip-extension _path295042_))
                 (_path-c295049_ (string-append _base-path295047_ '".c"))
                 (_path-o295051_ (string-append _base-path295047_ '".o"))
                 (_link-path295053_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path295045_ _base-path295047_)))
                 (_link-path-c295055_ (string-append _link-path295053_ '".c"))
                 (_link-path-o295057_ (string-append _link-path295053_ '".o"))
                 (_gsc-link-opts295059_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?295043_)))
                 (_gsc-cc-opts295061_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?295043_)))
                 (_gcc-ld-opts295063_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp300631 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp300625
                   (let ((__tmp300626
                          (let ((__tmp300627
                                 (let ((__tmp300628
                                        (let ((__tmp300629
                                               (let ((__tmp300630
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path295042_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp300630
                                                         _gsc-link-opts295059_))))
                                          (declare (not safe))
                                          (cons _link-path-c295055_
                                                __tmp300629))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp300628))))
                            (declare (not safe))
                            (cons '"-flat" __tmp300627))))
                     (declare (not safe))
                     (cons '"-link" __tmp300626))))
              (declare (not safe))
              (gxc#invoke __tmp300631 __tmp300625 'stdout-redirection: '#t))
            (let ((__tmp300638 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp300632
                   (let ((__tmp300633
                          (let ((__tmp300634
                                 (let ((__tmp300635
                                        (let ((__tmp300636
                                               (let ((__tmp300637
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c295055_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c295049_
                                                       __tmp300637))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp300636
                                                  _gsc-cc-opts295061_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp300635))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp300634))))
                     (declare (not safe))
                     (cons '"-obj" __tmp300633))))
              (declare (not safe))
              (gxc#invoke __tmp300638 __tmp300632 'stdout-redirection: '#t))
            (let ((__tmp300644 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp300639
                   (let ((__tmp300640
                          (let ((__tmp300641
                                 (let ((__tmp300642
                                        (let ((__tmp300643
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o295057_
                                                       _gcc-ld-opts295063_))))
                                          (declare (not safe))
                                          (cons _path-o295051_ __tmp300643))))
                                   (declare (not safe))
                                   (cons _link-path295053_ __tmp300642))))
                            (declare (not safe))
                            (cons '"-o" __tmp300641))))
                     (declare (not safe))
                     (cons '"-shared" __tmp300640))))
              (declare (not safe))
              (gxc#invoke __tmp300644 __tmp300639))
            (for-each
             delete-file
             (let ((__tmp300645
                    (let ((__tmp300646
                           (let ((__tmp300647
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o295057_ '()))))
                             (declare (not safe))
                             (cons _link-path-c295055_ __tmp300647))))
                      (declare (not safe))
                      (cons _path-o295051_ __tmp300646))))
               (declare (not safe))
               (cons _path-c295049_ __tmp300645)))))))
    (define gxc#compile-output-file
      (lambda (_ctx295013_ _n295014_ _ext295015_)
        (letrec ((_module-relative-path295017_
                  (lambda (_ctx295040_)
                    (path-strip-directory
                     (let ((__tmp300648
                            (##structure-ref
                             _ctx295040_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp300648)))))
                 (_module-source-directory295018_
                  (lambda (_ctx295036_)
                    (path-directory
                     (let ((_mpath295038_
                            (##structure-ref
                             _ctx295036_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath295038_))
                           _mpath295038_
                           (let ()
                             (declare (not safe))
                             (last _mpath295038_)))))))
                 (_section-string295019_
                  (lambda (_n295034_)
                    (if (let () (declare (not safe)) (number? _n295034_))
                        (number->string _n295034_)
                        (if (let () (declare (not safe)) (symbol? _n295034_))
                            (symbol->string _n295034_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n295034_))
                                _n295034_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n295034_)))))))
                 (_file-name295020_
                  (lambda (_path295032_)
                    (if _n295014_
                        (string-append
                         _path295032_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string295019_ _n295014_))
                         _ext295015_)
                        (string-append _path295032_ _ext295015_))))
                 (_file-path295021_
                  (lambda ()
                    (let ((_$e295027_ (gxc#current-compile-output-dir)))
                      (if _$e295027_
                          ((lambda (_outdir295030_)
                             (path-expand
                              (let ((__tmp300649
                                     (let ((__tmp300650
                                            (##structure-ref
                                             _ctx295013_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp300650))))
                                (declare (not safe))
                                (_file-name295020_ __tmp300649))
                              _outdir295030_))
                           _$e295027_)
                          (path-expand
                           (let ((__tmp300651
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path295017_
                                     _ctx295013_))))
                             (declare (not safe))
                             (_file-name295020_ __tmp300651))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory295018_
                              _ctx295013_))))))))
          (let ((_path295023_
                 (let () (declare (not safe)) (_file-path295021_))))
            (let ((__tmp300652
                   (lambda ()
                     (let ((__tmp300653 (path-directory _path295023_)))
                       (declare (not safe))
                       (create-directory* __tmp300653)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp300652))
            _path295023_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx294995_)
        (letrec ((_file-name294997_
                  (lambda (_id295011_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id295011_))
                     '".scm")))
                 (_file-path294998_
                  (lambda ()
                    (let* ((_file295004_
                            (let ((__tmp300654
                                   (##structure-ref
                                    _ctx294995_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name294997_ __tmp300654)))
                           (_$e295006_ (gxc#current-compile-output-dir)))
                      (if _$e295006_
                          ((lambda (_outdir295009_)
                             (path-expand
                              _file295004_
                              (path-expand '"static" _outdir295009_)))
                           _$e295006_)
                          (path-expand _file295004_ '"static"))))))
          (let ((_path295000_
                 (let () (declare (not safe)) (_file-path294998_))))
            (let ((__tmp300655
                   (lambda ()
                     (let ((__tmp300656 (path-directory _path295000_)))
                       (declare (not safe))
                       (create-directory* __tmp300656)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp300655))
            _path295000_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx294989_ _opts294990_)
        (let ((_$e294992_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts294990_))))
          (if _$e294992_
              (values _$e294992_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx294989_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr294982_)
        (if (let () (declare (not safe)) (string? _idstr294982_))
            (let* ((_str294984_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr294982_)))
                   (_strs294986_
                    (let ()
                      (declare (not safe))
                      (string-split _str294984_ '#\/))))
              (let () (declare (not safe)) (string-join _strs294986_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr294982_))
                (let ((__tmp300657 (symbol->string _idstr294982_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp300657))
                (error '"Bad module id" _idstr294982_)))))
    (define gxc#invoke__%
      (lambda (_g300658_
               _stdout-redirection294943294947_
               _stderr-redirection294944294949_
               _program294951_
               _args294952_)
        (let* ((_stdout-redirection294954_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection294943294947_ absent-value))
                    '#f
                    _stdout-redirection294943294947_))
               (_stderr-redirection294956_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection294944294949_ absent-value))
                    '#f
                    _stderr-redirection294944294949_)))
          (let ((__tmp300659
                 (let ()
                   (declare (not safe))
                   (cons _program294951_ _args294952_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp300659))
          (let* ((_proc294958_
                  (open-process
                   (let ((__tmp300660
                          (let ((__tmp300661
                                 (let ((__tmp300662
                                        (let ((__tmp300663
                                               (let ((__tmp300664
                                                      (let ((__tmp300665
                                                             (let ((__tmp300666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection294956_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp300666))))
                (declare (not safe))
                (cons _stdout-redirection294954_ __tmp300665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp300664))))
                                          (declare (not safe))
                                          (cons _args294952_ __tmp300663))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp300662))))
                            (declare (not safe))
                            (cons _program294951_ __tmp300661))))
                     (declare (not safe))
                     (cons 'path: __tmp300660))))
                 (_output294963_
                  (if (or _stdout-redirection294954_
                          _stderr-redirection294956_)
                      (read-line _proc294958_ '#f)
                      '#f)))
            (let ((_status294966_ (process-status _proc294958_)))
              (close-port _proc294958_)
              (if (let () (declare (not safe)) (zero? _status294966_))
                  '#!void
                  (begin
                    (display _output294963_)
                    (let ((__tmp300667
                           (let ()
                             (declare (not safe))
                             (cons _program294951_ _args294952_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp300667
                       _status294966_)))))))))
    (define gxc#invoke__@
      (lambda (_keys294942294971_ . _args294973_)
        (apply gxc#invoke__%
               _keys294942294971_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys294942294971_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys294942294971_
                  'stderr-redirection:
                  absent-value))
               _args294973_)))
    (define gxc#invoke
      (lambda _args294945294979_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args294945294979_)))
    (define gxc#join!
      (lambda (_thread294936_)
        (let ((__tmp300669
               (lambda (_exn294938_)
                 (if (uncaught-exception? _exn294938_)
                     (raise (uncaught-exception-reason _exn294938_))
                     (raise _exn294938_))))
              (__tmp300668 (lambda () (thread-join! _thread294936_))))
          (declare (not safe))
          (with-catch __tmp300669 __tmp300668))))))
